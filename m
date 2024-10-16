Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E80121E3BF
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729053354; cv=none; b=kOOJ+XZUDt1W4N2YdU70RS0xTbUa0e0+wi+MCeTaPDUqhhEsQav72I2tdFXcdVFWVgyuxdRWR04tfsC4zrWv758zyxepia6JEItaFLVli/LOICiemyeNAIF3U6p5/Dn8CrN3Fwqzwnlp118Dph3JKH6Ham6M7IiWh1dszljiZrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729053354; c=relaxed/simple;
	bh=+7Q+S7ZzerU/vS5T0jASp4eOFfoxQo/gTFbDAOVhXxo=;
	h=To:Subject:From:Message-Id:Date; b=Mqz9W4brZ2JdG8BxU9X2s3pnD/ZayShx4nommSoua11pKkGJyxRouFR6/SRTCRQGpJeIQAvE0Ya/Qtd0Uh8JbFxROA0F5TBpa/XrV3wrxtJBi5r4D8sqZYCuSWkmcWceqdhS00qqqmoA2kyBJ2fjMgIPQPdP6Hp9i/we1eOl3hQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iwdoPGcS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iwdoPGcS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2791C4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729053353;
	bh=+7Q+S7ZzerU/vS5T0jASp4eOFfoxQo/gTFbDAOVhXxo=;
	h=To:Subject:From:Date:From;
	b=iwdoPGcSVTXGoPLexNtrXjQY6lEtKm2uGEYYgQ5cY9rMoER0WiRCvk9Au6mMGa5ua
	 njJkwVZFRc07tsqzMART50VB1dBnno45BTU9vY8bv757Hc2FqMVLGxcIjYT4YQ95cP
	 VBruCY/0jb3a8z2aQXtgXIGUgSWqhNMFPjY4a4BOHwdk0MEYed64HJTcgmZSJiSdAM
	 G/l4Nm71a4Vwb493Xi/pN8pIouCS7JeAUJHbpDJDLZApOlvralD6JuX1M3csfa8uDJ
	 G9BsFIY7Kzkr2a7AAC+exoAqaS7XsHzbWDRtLTMEwhjH6q3pmp+p7kEKCn5lxgEuMw
	 4yOeSYMl0+Ehg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A519D2069D
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172905335361.9420.3716438979882462510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1db6575372373df8fded87fec46f1f69670ffbd95af1a83474b4a9303205319
Date: Wed, 16 Oct 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729053353
