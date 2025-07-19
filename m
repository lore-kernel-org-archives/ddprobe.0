Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4099014F98
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752956395; cv=none; b=DCJwwHD1N5/VDiC3+FXj07i/F9WGjuSyrtBNorTZJY19PgVBbBkK8kkRt0d3ngkwiaipQPM20tFDz95W/OewBub2smactrkPd+E9SAY4HKYP3WHgnLY56/FjSO7UyRyj6sMtpDQaid3PMExVqfOk2HycTIbdhEsZXJgJZYDzCv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752956395; c=relaxed/simple;
	bh=Pn2fp3qRWpbmiGaiRsJZ8kw+1lfVDv02Am/IiPc7i9U=;
	h=To:Subject:From:Message-Id:Date; b=E8YCrkJT6tswr1eAXtj5VpPX4Out800cBw4y8fp3fdBumv3QCwmBocIgpVgujlcFn6vKxpTF+OfsZ6cM8b3bvU96GdTMIndmsjUe2EY+rPU+37vcZOSecfPPmdEVFUavQDNB0G1OmmvFLvPJR2B1w9BbBh2Wc3P2THFbWuNbfaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AEumTCbY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AEumTCbY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95F3C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752956393;
	bh=Pn2fp3qRWpbmiGaiRsJZ8kw+1lfVDv02Am/IiPc7i9U=;
	h=To:Subject:From:Date:From;
	b=AEumTCbYwvo1pRRP9Ydf5n0HFparF0fMgUe5g/IyT3p6hE0OGdVhnzyad8VTvC0vh
	 Zu5yW/ln/f/BHmZ0S6IXtMhGQbi8zEfO4SAWgczJG3k+6YJtf+7df212AH+gvD1tti
	 G0OE44jva6NKzqPz4nZFalou6sXw/GGyoIUq8SYL075ZLBDmnN0RHoX+yqo6IgkXsP
	 lcgsTVZXKq1xHIuJ1JWD0NG8YEDLd1Xe4RlyYozq+l6Hr+pJ84z7MumrmUTrrvK2Ek
	 wCJy/FkZCf+8jPcz5ef3fjtbl2uYqBLacwhG4OMSB36yyt5LAKO5DQh8KV7M7WmQt3
	 QU873KohLMt0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FD5C83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175295639357.30287.7821166283593214664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78a1fb5dbab3b911275661c79ebf0fe58810e7ea58de94ef4f064727e13c1923
Date: Sat, 19 Jul 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752956393
