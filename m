Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F44282F1A
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 14:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776955054; cv=none; b=GE/qUkvhtFS5r8byevBIxojUcoMNN27F5T78bJlt15M4CfV+qW5MhqFnryjrgK6nfbSuZNNgYeQazZHCVeTaHSOZiWr0zGuWRUa5WPTikA6AsQEiNlKjH3+YSpJ7s1eWh7FrwcxLyKN0YRdBxOSUwulp2DV1xBAAQem/R1HYTXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776955054; c=relaxed/simple;
	bh=qepHzaQn2ru5nvhcirtq8nM+gRjJ9BdQX5vizWFNFS4=;
	h=To:Subject:From:Message-Id:Date; b=Dh9N6A/a3ThWOqeXAKiPTTs7RmXGwkbBqxVtCQEXm8/Fg86qvCSC1MCozNTUzC6Mh3sigm+71AVRO8J/seHJii2d68ZLbyGDBO+8sw29nRjQEfiYl+/XkfyV2vOt55RGYni0jTc1wn3E5bMEDzTbgo+3qKf0y4C02t+GKHvAEto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fWgUvc4L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fWgUvc4L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE7DDC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 14:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776955053;
	bh=qepHzaQn2ru5nvhcirtq8nM+gRjJ9BdQX5vizWFNFS4=;
	h=To:Subject:From:Date:From;
	b=fWgUvc4LBfH/oKoKpQctnrnH9TRZsgnHnL9WT/DLyacKx7jc5TmhHQ/dhMovUcSP3
	 ASJ3Wxm14mmaOgR3j/cvYNWknAoZili9bVTeH/zoI1uUVwUcsMHqQr83EIIUSK5vNs
	 NsJF1VfgOrS9u6xsMBsXM5cFuEjDr80elAxhIvOpGhpKkUKN1PJzqOdtdKlWyhHpUR
	 aFsxY+OmqsMtd7nPZx5pjJTNqW5AhS1evYSGGMWyoyxaXJXmYWbfOGTRspXqj7e6uR
	 PckZ0bWNW25ZSHPdH37ciF9qcNUKeRVjKt0tXt2rInE3R6rbA4F6qS43pUht3dy0or
	 nKI0HYH1aM0Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFCC1F589D9
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 14:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177695505368.3185.6332341456007879923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 335c7a247c567a2feeaef46496bc7e1a07702dae234421fd5f0469778f5ca742
Date: Thu, 23 Apr 2026 14:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776955053
