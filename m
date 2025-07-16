Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 305522F5C39
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752686994; cv=none; b=kYtkbJ96UWvEUMIGJv1Afhg9TWrirQ/lQm4Qoebua9UkASq7N1Vq7MOZAHXyd6OFHnQdtez1CQH1U9LTqZeZa186cuAHzEXcYILryJ4KVC1tgFjDDu33SO8bv05oYvnaYOiDXYvSN7069uJOrB/UKN5R9g59H0kV+7n6ai7BU1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752686994; c=relaxed/simple;
	bh=OFEo+LHpJKXO3kx5j5HnCkEBGr3YJgOUy4BmCQ+7nXQ=;
	h=To:Subject:From:Message-Id:Date; b=ImF4AgGbAOUWbUES75gZdiX84GdAY5/5K/WdomrLq23+uk/XS334OfD8Meqg5uVtMk+4lsQ4vkJAwJFH7mIuAVK1655m0NTjXCkmovprPS2dhBYY0i/VtVnhCXRRTb58tNlAEf2PKYlqkZGVE3EiCXXXF17XIdUCPwwfA6ETHM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nb8w2bbq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nb8w2bbq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1529C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752686993;
	bh=OFEo+LHpJKXO3kx5j5HnCkEBGr3YJgOUy4BmCQ+7nXQ=;
	h=To:Subject:From:Date:From;
	b=Nb8w2bbqWC3JnesyFa5MmopLyycfqdRjQiPzWxFYkV5Q+ZivFvrc6x8YMSC+Jral8
	 nCYnWnLemRnGu0y2NKf1DMb/8OUezfiNnnZB58Oa5y8d0ca2//27QVYdOIlRt4RcxO
	 FA22S3AIv0CPBuVgHjTkyoCrcjEB6lN5Elakj/DfEpz8Z6CfiRTnRE8lQcNoeHwdir
	 3Zqkz2Kx7lSUwVDFbUkkQnNwrDwe9A6SneNzqh7R99mgnstZk1/AAHRyGOcUoGBNir
	 p5FY5ZRw539TWV/DW/vWekKc+SYG4ik3PrWVcJPP2gdFT76IZ0WJxaaSC8w5FB4nKE
	 uVMJxVqFymD5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909ECC83F22
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175268699358.11147.426934734979621407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 472af5ec0eda3f08d5bb8e916329fdd2fe7ffaafc440840a19db93e77c76c702
Date: Wed, 16 Jul 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752686993
