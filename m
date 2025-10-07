Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1BCA945
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759821594; cv=none; b=OQrQKUzkhmed6Dwkae75M/AHmp4+tjbZfPu74Jah3l3QHhSXNbPBSOawad8hjsvS8gZ1vqJk1p+pAnv8Vn319qt2Hoo/O1VndZj4RwccaIOCyBZUK+mugutbKPJxlnqcMyuNCvLE9kuzp8aJhaaTzcjvJHmyklUStFUtEG1B1+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759821594; c=relaxed/simple;
	bh=RUAsTJzqhaPWHEkHQwKKHaFlGDXn0E69aA/RBY9H+p8=;
	h=To:Subject:From:Message-Id:Date; b=ApCSmn0Z94Vm7HM/BbB9vhWIcYv7DhiVELmSLteI94WKg7ZF5b8Gic/Vkohr0NACPNtumcvkSX1QPqfrNfzZVgIpBX3S0Nymruk443cpBe/J6GDrJ27K+9v7d1V2Q6Y9zaQUycWVM7hb4vrS3KRCSJoVGtAE4KygxGFJNMFGg6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FvDgRGSa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FvDgRGSa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A88EAC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759821593;
	bh=RUAsTJzqhaPWHEkHQwKKHaFlGDXn0E69aA/RBY9H+p8=;
	h=To:Subject:From:Date:From;
	b=FvDgRGSa7UE63bCjzJd1JxI+51aMNzk3H/Pv+nD/B3IBa3BGUIHqZw6TDVZ+vQT7x
	 HbOuu5QmhS8ICze/ijmDpP3HZIUf37avL69f9j8NFTmo7gAcxfWJwDoc+5TUjhRVHD
	 p1DcCz02NzB5UKT5E8zRwjky08futh5vgJ3d+WQlRGKt6ZXg8Np8uCAF1uMDasVxia
	 ysWQYI/7Zx0eRWydHitPGV2Ec0SBK30HdW7Nsu7k8RqOhfAeL+Vh1lSTj2pwESMCO5
	 igLv99TyQdUkcljL58p/kp6OVTA3kZQCHDig9g5PciS2rUdfeLvw+K9bIulq4AP4p3
	 yXR5QB9c3cOZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BCBCAC5B0
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175982159358.15506.1195903545148088636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65780798d1de5887238b4b4a3bbfe69a24104229f8ae4057f373552b25f4737c
Date: Tue, 07 Oct 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759821593
