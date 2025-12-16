Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B662494FE
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 19:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765913034; cv=none; b=PwN6kmHZi/MramUecliTsuOX5nN/Jedtgy9pWPKZgm3++5juK4ZTccC4msmPIB/Q/Wr2Z/PjWUWN+SJcCUIY1QH49bwZmYYoGkh1Zffl+N9J0rDmaoOJ2Gw4oEL30IOczOYkzKtc0eMu6B4Gb1FgT78flD+kDz6mVIEl/im2rUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765913034; c=relaxed/simple;
	bh=YKm72Mrkb6cldYaz7bFmF05f2g/JFqrl37HPCx4GlJ8=;
	h=To:Subject:From:Message-Id:Date; b=gW8DbKfgg4R5UB+CZfSph/XHJpyvKGtYBprX0QPbgfa/p9Y+ArSID8CNaj9nIOm2b6GjTMJ3jSdQvSWQ9HuKRir2cPUVYKxacDpa62s0Uk93vPTWvhpjV5AuamVx/t+mc2GgAUCSHLwACu7U1NAbOq9O4Xw7kCoNGqajhboQ4sM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nk8Mf9FR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nk8Mf9FR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C33C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 19:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765913033;
	bh=YKm72Mrkb6cldYaz7bFmF05f2g/JFqrl37HPCx4GlJ8=;
	h=To:Subject:From:Date:From;
	b=nk8Mf9FRkr+EDpOIPOMGQKDNcT6x9DqYfCYJbwuYlO/4Jj0f0fhac6Yd2cqPh8W//
	 MkDHf1YHYBeWXtgLF0F4l/Vr8NUzeh5uXT8SiF8G+iJluyv7QjnK1x55zy3u+NnSMV
	 bMH3gc1K6PNMulI6+mg9d8AY5F55YVTyED6f7F8KAXpwmehQUWxHMW7droIn38lNxu
	 i7NFKiLl4bJMxpbEXbKag6yrJa99b+P5xDERs+F3lwZXrigDpz0lD5nfi+2gQhrg4q
	 705TB/AgRuMCh3FzEy/zGLFIcpxJRdyNfhPs2j+akEeM2ImnGsgf4Jwzl4x+m5sGQP
	 b0zW+ynCIJ86g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E7CD609DE
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 19:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176591303358.2892.14570032167919353123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f6c328b04d5de4b88805c2a3aa3b7085bdaef1faef1e37261b3a631a8620da5
Date: Tue, 16 Dec 2025 19:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765913033
