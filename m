Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 652FF311592
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788689434; cv=none; b=bW6KxJI78Uh1OjHuP9aSGtADAZa8cm/FGKyxKYbHrrGDYbp8ptl40tU+lW2eKIrFORzxXVB6G28MxnlFSqMoKdiR/BeNmBwOQrBfiz9JYPjUmwtlcNmD3PTwuuwPQqJKVd6yNdmT+8VcLwJRvvQagQtXARVbnjAnxO+uISd3ayk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788689434; c=relaxed/simple;
	bh=e5poAQDh7o3gOf6SFxB1hlk5+Nf9AxFLPzmLBPjPW+c=;
	h=To:Subject:From:Message-Id:Date; b=W9kr+oYehOJzLDE91LMs0NRqU0PreG8myMhVOxqlqxn1VA2IxrTICWCSpkzv8CGa9aGPsTQM3pUmT6vAEZm5l7RCuM8Zhq3RdcWQi9XeZbHj1kidTQr1Zi1P96xHczsH+V+jm8fi0cud/tzxhsiOQctcknlMOeQH1xdAB7RgghY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JI3o5w9t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JI3o5w9t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5646C2BCFB
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788689433;
	bh=e5poAQDh7o3gOf6SFxB1hlk5+Nf9AxFLPzmLBPjPW+c=;
	h=To:Subject:From:Date:From;
	b=JI3o5w9t41bLUu0ykiditMxOnsblFM28w+3pisqUWPxYB6e/aZQInVBas5nE98ykn
	 DM2dWZHcdTvOSCWrXJ9H7Yd8VZQ6mgZON1AGr2gstrAdXuPUF8iGpxfviwT7WIMW7I
	 QY5crnfxA1p9ixMXTjUa4XR2TZ3fzFP+2yNlsZDtpRSUU1y3Y7KgTeVWlixVLYS/XW
	 Z53Kt1pF5qtjHlVSG8GdnJIwDzsCJg6pmpbYfK2D+5LLM3AKayQ14LxW9QrtxhWbtf
	 rxh0nllkJIruSuKIc2p2yyhNNNjiMzN9E0/90iEtYgl2vcFPwJPrjUcaIRkmsvzGXr
	 uslttbkPpuCHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD052C79F99
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178868943369.26418.17476755923539777660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2075b485f0b279192b1cc50b928171d9855cc67cc8e690681fd94dd27d07a5e
Date: Sun, 06 Sep 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788689433
