Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242A9316199
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 19:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778787634; cv=none; b=eudwRjwqtobfyEEGX+yIXPtd/9lGemQOQOI8QxuXXO26erDtQUTjkeYFbUvvHpsrK9CVY9G3PIUcSvPxqDCdv4Z2Kcxpv1fn11bshWphHgdme8y1S6NaxOPGQXyx6rw4Y8etAMW9GtnqvPJ4klncklHYIQqxYoJPQnIrcxr5f6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778787634; c=relaxed/simple;
	bh=WyIIrNp+nIxcqAi5Iif+W3G1XqaIispvoGCpi+ugTzE=;
	h=To:Subject:From:Message-Id:Date; b=nrqV4WMGRLCtUgW/7uRGMcIkSzbNzm86ro0ALNF5d/iPZ6dzupfAcJ5jvjsoNnjdb2AETN2H0k0ap7G1DgNpEWVG342dhI0a//kT6xOwWLzgd4c4ue6tgQoH4OC79L649XYXMWZyWzd7hmB7CtoNCKC4S9jGoOKNj1opZ3+BbZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mfN5QTLK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mfN5QTLK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE768C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778787633;
	bh=WyIIrNp+nIxcqAi5Iif+W3G1XqaIispvoGCpi+ugTzE=;
	h=To:Subject:From:Date:From;
	b=mfN5QTLKG6MH4m4RJhzL0w6ipcqILHcBq8R4EtSSP8w8xZaYp4pYaSh4R2NXjcMEk
	 om/PzIIBzbIlmhanQyXZ6SEqOx42TUD/t3V2b/nbw58W/fjizYwgZRwN437bJe+2nv
	 SHdp1oLQuef9fIcbbq7MyP+N5KrTB8bUGMuCygPP2ZrMC7TiUlF240Hor0QljCTaXZ
	 Bn7ck9hI2lI9T3StKRTk+eeNinUAQOEpFd+RNGjJS9ukIkSqKaKgD6rNiB5Hf8awuS
	 W5Ktt6IFwxIWF8cquALMzkSQ82drc1pYALbAL1zo609/LXOjrdjcIUjV5esQqr9jXb
	 deqODhNLQHFMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B06A3CD37AC
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177878763368.28361.4082947318346426446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8eca7021bdb2a01d29d6f19e716c081d5879c674ddf7e35ab823393e13cf2dc0
Date: Thu, 14 May 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778787633
