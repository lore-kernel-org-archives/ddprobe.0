Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7BF234973
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756228194; cv=none; b=VCUqY/jGKb6Xq9zB2e8blJDTWgh9ukVZlcQPph2fSEaBm/Ngwqu9mLVZdeV1QFKXdmjqu8p5sjxq/AEPrAc315Lbg7D91BLRZHFWMOkAcfXzO8woCk6KxDwWVks2Kt9Eq4eJfpSbWjeei4ml7sjZ3LIW617kb3rsDEti6O8l4cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756228194; c=relaxed/simple;
	bh=fvGMN/BH9zVVQ5qrbOt/WmxtoB1zBQBhNFm9E7RAA9k=;
	h=To:Subject:From:Message-Id:Date; b=YhSokMdH4vQbGFsCqm5heImPP32zfzetc4tLbIs2GW2ZEAlP01b3H74c63KGoHd2XTYcLtPMp0b6ekyPWxBr5YFF2M2SIc2krvFudHczwiB3mU51Rx/p5LhKkfhrvy6iY3nCPyAelLy2Syv40LjE0QEteK4zugwvaMx91BYhGik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EKPvxrg0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EKPvxrg0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12ACC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756228193;
	bh=fvGMN/BH9zVVQ5qrbOt/WmxtoB1zBQBhNFm9E7RAA9k=;
	h=To:Subject:From:Date:From;
	b=EKPvxrg0Svk5wOV062o5/fYCVh6Np3Z9EnRl3QhSuLIeXne/vkLBH974v6/Li/Tbb
	 Ivte8/L7/7n/5B/cI1O22o8n8X77yqrzF3XLUbUFhAY61M/O9WB1gAU4tNidMajqz4
	 vbVBsbb7eKbeiqZPYqoimnN4QXTFnUz3w+EuJrb8TfySEk/qqf0S6rrG/C11ndFOPm
	 0Wu16SCIuXyvVumzOEXIBtx3fOfbebqqLEqw53pIQ3DermRE02dwdr0YZBX4l9zFgD
	 zgfN6wkbJpoZyyoFn+uuEd9Fuazk3/VqrYbJxz0ChjwGor0vMi5XKecEwNqWXkLvla
	 sjhy+DSEXuVcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE83CA0FE7
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175622819357.13457.3883648828201075373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a2001f81d5b9b423cd1a7f6595d345273ad54e8574fef9daa91960ca58ffa3a
Date: Tue, 26 Aug 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756228193
