Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 221F42F7F09
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788124234; cv=none; b=VwhXzrSJUDceP356mMj4RfZjnP0XOualcNA1u1Vs6cOm31iq0OkfenbG8tFUgWTGvCrQvXHo1lun8q8Big4kpzy5AaawUSaj9/yXWa+UDDwmO2GA9YWYndfB6wDQMTMUFotrmP8hnyyq2sPLXY07hYtfRhLyEeUmGUF6DPywXvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788124234; c=relaxed/simple;
	bh=z7moipw6ucob5q7Bxei5/DGfsZ5dnZkqXophvegDgaY=;
	h=To:Subject:From:Message-Id:Date; b=VvEFhIEV0GINYZ/ai6J3rwlIRcHCBjuvoasriYjOtRfP8bTO8AnvuT5w0KT2KZAwBAt48Ei1TNXAhX+mfbb6nD/U1XEoeBxFoTlevyGQkt47mQBteZydcZ9Cw8c41krnbp68dQSMPsDPZzbO5tKANT7jWN5UfoqM87xMw9PePDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ABRV1uO7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ABRV1uO7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D006BC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788124233;
	bh=z7moipw6ucob5q7Bxei5/DGfsZ5dnZkqXophvegDgaY=;
	h=To:Subject:From:Date:From;
	b=ABRV1uO74UcfO7AQN2/ALNtOMeOwvoF0NL/P6USrshoBMVUXBdCMmLjpVvQkvmlHR
	 5w+N9goToi8RF4w33xljiZxQ+lvFtDn+MslWy9WRPMoSEOGStIwlVnQJa+vgW0DAWc
	 5Uk+RtuL10BYj2LWKKbA4VYI7og7oPZbFQ0HLFnTvwBlKV556x9Ss88ciVR5ZINoM2
	 Fyil7Aso25o+Da11Ff7ohq0Zw3X8xm/cmjXScRYBEtYlTN2B2eRobXeMEvG1C+K3yT
	 ktfNtKXwzDOz8EASdlVMXPTt13XnhAB2BKaOGzjaZPcw3LiNqY8otfJ9UClmFMVQ36
	 dLHc/nsUYNcjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8F9C61DD9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178812423369.30190.3308224769248778633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52d4d2a95e207ef81a2526aae904318a4071775dcec876bc0319b3bd698380a1
Date: Sun, 30 Aug 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788124233
