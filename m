Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6D4023C4F3
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759226993; cv=none; b=InGurVdPdTjbIdjcfq1/4qr5TIdfjK3sz7soOnZVwiTNKzPP7zgDGOPghIA+YP5YDS5afa6Q29qYZ7Gn7k8QTyr57Ee0dRtPwXsApl/Kg1AIpLJBurW1r452OJa/nzIS5JxxycRYE2T4RWwj4z0wMBhNBJQ59pHHkuolNklxZKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759226993; c=relaxed/simple;
	bh=zOw/7GZ0KFCK0vgo7Dkz6QuSIoqrSuCsCb0J4ODK5Ew=;
	h=To:Subject:From:Message-Id:Date; b=VHAiGNvDd3aD2HPY37po3XrQQz3+TCw4S/IqyAP4vNia8R3Y1RgIvuqseqcUmHq+aWAFCsXpS2Q+5yhZxFLseeYEaEb/5Tu+jMZwiPj/HTSdWjpePzRo5uZ5WoxKHLfAGeQX2hCVKe1JcFu/GmWVOWCyBHua9Fi0bFM7Qk1km2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RYhSx/46; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RYhSx/46"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C3FC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759226993;
	bh=zOw/7GZ0KFCK0vgo7Dkz6QuSIoqrSuCsCb0J4ODK5Ew=;
	h=To:Subject:From:Date:From;
	b=RYhSx/46trkB/JXTQ+k22ENFcfU5mUhwT9jNicPqGC37RelBDibkRqSachtLnMyKo
	 9U/xkelllHJZckaJImQk+f3/uFxVBd/WrFRhtw1rHI24hulZSOuR8kyhqbXQPJNaiv
	 Efrk6sChe7HhT9w9enO0th+bMFPAocgJhzZo2xZoCI2Gwo9pnhLtKD/oAvp3tuJoDI
	 VXbgEH3/VTcDMSrbOV7xclmf7uPWVun53uuqS9IjXb/U+au/Ge12r9jfFWLjUyRH7d
	 y38LB6c+syQBwz7hPcINMxaUSEYoQ+q7NaDSgo7U+CdVrD3iBfVPLNoNx6CYl+Karv
	 GJUvQJmGgkb5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91887CCA468
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175922699358.8159.12029158905324574555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5616606f32b3a9a86378f5cce147a2c4016dcf3dffe20b52b77e05e7f54aa82
Date: Tue, 30 Sep 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759226993
