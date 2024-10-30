Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FA2E15E96
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730258754; cv=none; b=tz2+A5M0KBLs9RDPfL3jXbIcgBH2f0+C72KM3BysG9+2794PoSO/1IAT2oG2iYaffdSF+ylMhgL3hG2zhbZaICqizQua0duX1gdO4cL/AufuktWLwwFeRRgcYeqDcvaxgfzLbG6h6tCQaMuJKrY9gIVimSv0mtVGavM/axWXAY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730258754; c=relaxed/simple;
	bh=1PBncqyUgTrWWNmVua1Cn1Z4lspqmnuO23Ng0Jg5Fy8=;
	h=To:Subject:From:Message-Id:Date; b=fU8ohqqV8YvSmXm4ULA2LX7JN8B5shVwsGEEmGbbJ2zEr1ZZ4uikqsB3+BvnDcVYzEqd8wB8fRJ9pIMnW4s+sQSEPp2ca64VH5uRbaM19A33qc9bnf2abuGmAxtNtntjzWt0jenz/BF9RiPE85yq2kZefuV4wgUIS6YYkFmhRbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=brqit1Hv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="brqit1Hv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD8D2C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730258753;
	bh=1PBncqyUgTrWWNmVua1Cn1Z4lspqmnuO23Ng0Jg5Fy8=;
	h=To:Subject:From:Date:From;
	b=brqit1Hv+kecHx8utx9XtBMpGG8s8vrG0xtzAABKqWmhV2kjgFQY+E5AtZ4+hZ17s
	 IwsVBVWVuOaFcbR2IWGO6ghPuqnppEUhcFoBZVYyYN6FsvJrKJvRPdu79FrStgF+dz
	 x1P0g5qTJzBdKtvKn7//Dyxh383T20ugbaxEHs8RNfosz4y1KeaxeNJIrr3FIdqOSE
	 ejIQyS5guim1auqiSbd6OCJbk0zsjbqj25iMc+EspK6sIdfxk1ylKJ0BuwEGA/bvm9
	 fdg73/rYqumtNHxzv6eshV8zTv3XCa0uPwwHLF7ElvCiZKCC8p+f0M7w1Btwjpd3cB
	 uKbWxxBSDiR+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6C8FD74957
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173025875367.27523.16001465194342955110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35d5af60de294de62b970600c2428f3ab0ad54dabfeb4bd9d57331a873564dc7
Date: Wed, 30 Oct 2024 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730258753
