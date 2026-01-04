Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED2F3FC9
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 06:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767508434; cv=none; b=fykMLZJmpgPQvKn6eqG5aOj6k9XOtsEJGD83ODcdhMDnJ6QqftBsGvSKiXmb3Wa4WZebaxTEGDpl/oOhaeabhV69aXyAG4vlQ1pTuqhZsOc1G9Zn7Xz32tKPf9BrOu1MLTKFh5adwGaWyTyjz8ZrGS3NctQhLx6iRpWVyGvLCeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767508434; c=relaxed/simple;
	bh=pv64wuxg/xggnfLizMpEru1YRwvRHA9RdNVD+SGQslk=;
	h=To:Subject:From:Message-Id:Date; b=eyw4I/nwzxaQgQvptN++Nl9sYbRS2y2CgWWBfOzG8zkdPQiOc7ErK/e/4RNGVeqkF7JPWyTTTEzkzx9rmxfgN97MPSRAxZyooljAM1nh2pg9WUYmODaCAIkoM25cyGy+qvPmXacP8e4ZEMk+Fgq7932WXWUAPZS0dnWMY2NTbLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BsOWgfHb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BsOWgfHb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A640CC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 06:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767508433;
	bh=pv64wuxg/xggnfLizMpEru1YRwvRHA9RdNVD+SGQslk=;
	h=To:Subject:From:Date:From;
	b=BsOWgfHbmSNMCLpThz7331qFp5lRfbssZ3p0YtViCig6lTlGW+0Qgq/abp/uO/u1I
	 +A9ioydctqhh1ZUbHfeLCAkvqcsLQ+e+SPffGFYkcWctJbdGPWddRzPOarRYV6cEAN
	 zeBvQwl3WsdjVCLuJTNJyC/FERg0Zd4kTVMLndYG96yBIbY0G6y6rSFZCNzc1oEawn
	 nCjQAYodDcs3Zsjmkf54Q4pICjSgb0rmh4vCdj4HHIkoXBme0xlzNLzwIgux9I8Yai
	 tj4dt8MSH7qL9MpNr1vRot20WRmpzdWUUex76YYyPU0I7cHml/3KlzOfMnxSg7/C1R
	 yxLFRf0z7rGPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940DEC2A069
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 06:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176750843357.1471.13138773858557869735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80a7d59577b7f847e1de6993571505346a954aff912c8b254aee701bc1afaea3
Date: Sun, 04 Jan 2026 06:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767508433
