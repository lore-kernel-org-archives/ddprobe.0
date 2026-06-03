Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3550D37C930
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 10:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780484074; cv=none; b=iKVniT7O01WzRQ4NwZKLFtk5mm1xZcGBcpKSQqQIRMvqULSLIdexdz2mnaSFCulCTpa/x4Oyf8loJsFd4lPLKlt5SR9Osksf1UvksGS763jI2/R95Tq9Rz+coQZU1tAXqVATKBoC48nijGSC86g3PHgTFRAaalJDwn/al9NnDT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780484074; c=relaxed/simple;
	bh=X9UD23YF9KhEasv4T6SKf6hzV2nuBQyfiCqPmENtIdA=;
	h=To:Subject:From:Message-Id:Date; b=V2AGRNkKTaEs06u6Z2JIZPgo82E+E0fOyUQ45k3NNk5glARdpGaJeN3HcKKjutrzZbkz03oZj+9RC/YP/wMWJqjbFVG54HDIobNp8siKq3Q0jOPSJCD3L/44F95+RbW/n7lHkpFVxD8GY+DzR4ravst48oW0z66izVptscF/cBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jnhjEzL6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jnhjEzL6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0E83C2BCC6
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 10:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780484073;
	bh=X9UD23YF9KhEasv4T6SKf6hzV2nuBQyfiCqPmENtIdA=;
	h=To:Subject:From:Date:From;
	b=jnhjEzL6mGfV1Wb/hVzgW+hmHcwq+ksq+Gw7z5LJ76hZxMqxA5wP1yGQ7FzwqGxks
	 KPYbHl2swmCZJuPj4qAheKnsoiACqQJ7jV7gfNToz97AidWzjp7WIpbDn4r9R08WGs
	 SQOLfakrmzUsUQihkEyKMIY9ytIdBUv4NbbcxoLZAyqXqhw8+6ZMYGmuDVg7t+dMlt
	 HMfi8ZxYXwkbl0gbun8ZaFwBqKz7xFUdgqWCh0swSqVhP1nOSGUpcyGybY/jdSQQcw
	 AV6J1BnVW+/ICtT2QIqOVrk/dLgdWvvHO2njYF/FixG9GVzPAGHcL4RnPTOsNo9Ahn
	 0T6WsQuxZNxBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A800ECD6E55
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 10:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178048407368.12559.1751314424229501018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff7794b04219dad1f0af0bd4e8d75a6a38ec030a5c415993ee6cfe74a52be31a
Date: Wed, 03 Jun 2026 10:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780484073
