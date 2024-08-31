Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BB781D1319
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725080754; cv=none; b=nbMmwedeqdu74w8uiu1g9CgJOCXsbc5+ttn5zpSoF5rF0jPacHUzmbOXsrkpdMSSTFJu6kJHsjH+Z1qp2QIEXDA1VUHCobdp3sEqq1enKMuRe4c51e3NtKHrzwFDyPSfYgoAzC3ILsWfhfXnjew37qyIp4u/0OS9/mMRfAzpgYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725080754; c=relaxed/simple;
	bh=DOZeYnwDEx3p4zp9VpMD3Y92WNq2Mey6wDToF4hQoKc=;
	h=To:Subject:From:Message-Id:Date; b=gyDWSoOa5VpLzoXp0DZjmvlk0ZPXHsMRC1HBs65SdLOoU0F5Y8/kAzXhoodQQageOiFImiHxtu8IpCCJG67kpUA7ftA8lfy+39zWycoCyjGdCxnyab0tqIJPS/vH0A02bJl10e6Umz7QmNsoVkzf9k67wkafoSQF2mB8b7v7pv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AUo2Vk31; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AUo2Vk31"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0067C4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725080753;
	bh=DOZeYnwDEx3p4zp9VpMD3Y92WNq2Mey6wDToF4hQoKc=;
	h=To:Subject:From:Date:From;
	b=AUo2Vk31sad+m9+uGFub0iCaYPDHrXYk55p1Lf0gVqJ25qkSvL0etqkhLVBDvojR3
	 LmqgnRj7p6+yo3zhbv+Wl5Q1axjVfPe4cWRWkQperarovVatV/qr0HiLcxOwY5NDss
	 bLlgFDUB40e63zCjwBeS84thRq6kHXXekw/FuLpA9g2t54dUbhEkUocwIFFcXrQxTW
	 n/wKKvOm68iKd8jrUzYGqdJnoUpcroXc6COLXfnQI6ochA+KKphXxEYY9BMOueBXMt
	 lp58J8NxaZtC/w4Ab7yHbxEsJu9G6W1dWAP+8z4F2qsM3yY+NCeeAH0ZMSYtG7BqjW
	 v6xl7DOxYmQxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959C7CD1293
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172508075360.909.10093189861052904181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2be910b3dbde87566024808a76c4b21b1ca42c890573412911043327cdce6b1d
Date: Sat, 31 Aug 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725080753
