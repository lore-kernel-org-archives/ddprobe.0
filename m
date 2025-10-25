Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E66287254
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761428394; cv=none; b=KsNbj1X6UtDn2Ll8cDm8kcYGlkhEAv0oyMeA5TkaPNEQubTZvrP/iTtiEhbMY16bOL+1QMZPwnjKZTEKB133D3qacvvCtMkUdSty6imqpCLBE/OyxIhCVuIf10XZp8kvsqQrsCoq312K+afktvSmDbn0cNfbTHpbD/UR4d7Xxi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761428394; c=relaxed/simple;
	bh=T5vsRyJOng7imPXzw8+7pJKxHah6bB3MhwGV5UKG100=;
	h=To:Subject:From:Message-Id:Date; b=mauY37G8hCqw+1mx4TZ5buaxv3NwItCCfK+Ns5cWFzWN2kPB5n0iuY0xeJ3+dijPoDgB92nm6xzQgCv1Qa5mMVOQy0I14VGlvmBzKZIlJaOvXQtmA7e9LnOSmYtUGzTczVlxp1NKlO/RrJstrcr5lGzXvwMli177YwkzJef4deU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mssVf5tX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mssVf5tX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7965C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761428393;
	bh=T5vsRyJOng7imPXzw8+7pJKxHah6bB3MhwGV5UKG100=;
	h=To:Subject:From:Date:From;
	b=mssVf5tXVGi78TajnQXS/vDCl3HUe90Gx6yftpYDkJkWP/ajKvzc+KuAdH3ste1W3
	 GF6dB+GZOAxAVaNOGLK5MN2ewwg4f43VNEdXd3E7nI0Nj0piGdkmIAaj50vt5thh1M
	 F4G0YIramG8lULcXUzw5JNpuW0xuJYcG6x8lb7IuCNHTIbUn84yERwbviLGWsTqx8U
	 3NrGWzq+NFHDtd7D81ddz1gd7QDOfJT4ck4QaH7MVE7KRFLqckRh3klOPhbRU81S4w
	 7rZbdNabsykux/bhgDOmrbFvxAlomnLgqaN67ul8Gw6GI2+NuT1vk9cEKMuaLHG3mP
	 xMYh0tlGnic8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95650CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176142839358.19885.7037139519972022250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cfa0aaeaeb64f5832947b11f6c2daef128329272343bfab63fc2f9ff2f3b8d1
Date: Sat, 25 Oct 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761428393
