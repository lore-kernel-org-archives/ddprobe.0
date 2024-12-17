Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD3611F4E5A
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734449153; cv=none; b=FKrKaLoZEui1N09eAcG+UKt4bPNCCgT5tLjOh+kShBaubSqUja/jl8c2es+i+Ai1/lqfZDA2/sfFe2wXhVesS87vcMytRBhjLkLtBmpJ+/DMH68GqwOeQfCK6Y6a9QAzsfDmli2LuSklC48D3EnsQga6Ka2eYdx2JWjdyEaKR7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734449153; c=relaxed/simple;
	bh=rc09QzI0EUTm1t83OMVCRFG6XuBEbukNQ7Rx4u5H+zE=;
	h=To:Subject:From:Message-Id:Date; b=g7v3vCFLABPsVkKRJVyAqjzQR8Hr4HVHZ/IK8g6SKoGsv3F35qFYp4sRWNN24ay/ipS+rHBJn0oY0Kru7okuonZFfhaOzmkKkDGHKUBjXodSs6PJKb+6kGWg63YU3FCQiCJBjvhOuBVPPpQSykGPh61ucfFunjge9MHnQbWUfwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oIHk/uSF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oIHk/uSF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40FCC4CED3
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734449153;
	bh=rc09QzI0EUTm1t83OMVCRFG6XuBEbukNQ7Rx4u5H+zE=;
	h=To:Subject:From:Date:From;
	b=oIHk/uSFb6BYB26pC3iQoiuMIwL+K+y/vOvu/q+qa7WgB68XCUzGWPtUUGs8vtHcy
	 ephWSTNPbAh4KQ6km2wgua8dsWb0WGbs3ptpE2J7iklVCPQ8Qc6VcmE9E8OK95vy8/
	 dO5X2qlmp/mWQnhG1cTYwdBdDTAYaFbSGSAyaXWvvms1naQmGF9vcAtUqZKx2/cceM
	 GNbuyjacyDZwSBPS+durcbknyWkOOBKWVgkk45tFiIWl+qGDHSODfZAd6Ii5CdkemI
	 BJV3Phek+yUQt3fvI1FifQbtcMjBR9KW9FtErLaZynmVQcSQxBUYpSv6ugtusDP+sp
	 13q0+8It5bLYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93460E77184
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173444915359.12337.13137081268386739222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 346616a8b529f4263eeef9357b48aac4e26fa03a7b92a27add922ad9be09ecac
Date: Tue, 17 Dec 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734449153
