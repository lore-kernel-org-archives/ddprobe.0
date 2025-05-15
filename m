Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37584297B9B
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747304994; cv=none; b=mntWe0Md2SkzY27kQxQSEY5q15C6RCOc+C4eUzK5NondZEkFqi7cnqhSvaDcPkMwVCel99Wx05NVkBEzurYwCxCfXb7TFs9Lis7dtGHJBFUZ8mOVD9wzccFDtKFePBo0pcOERgNd2WbdVDzVv/HW34AKrCMtguBu4X9VZihU57U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747304994; c=relaxed/simple;
	bh=cRxLT91h93RZR0Qb80INLeFetW9GfrbfwJD/zdmWXMo=;
	h=To:Subject:From:Message-Id:Date; b=fKbVAfJ0gq/yBymsizu6bGNFzpQv5tvzZGBMUbK7Xh7LpzgtGeikkNN9JR9O0ymPMP18jewhh1f4fKM/jtLX9yCcpecGYWaFdtWhc8X2siJ1CvNk2XMCYkvzXukfatBzNnVc3XshAUxDAtXorHHdeKsbgDAmnzp5LIl6YxnYWi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lc43rnAm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lc43rnAm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F920C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747304993;
	bh=cRxLT91h93RZR0Qb80INLeFetW9GfrbfwJD/zdmWXMo=;
	h=To:Subject:From:Date:From;
	b=lc43rnAmIOkGu7+ULop+LagsRDoVesvEElGNrDx4AWkItDFjHdY+389gJO8aUzYWT
	 fb065LVo5n+xV08JGB+N4JwAl/ivCyZaxWN0rdIz2YmhgPnln9IsLZul2y3UWrzwe2
	 l96dQxgn5drj4BMkjOqgFOfYOnJN9dnkL378WOli53X/cJ5zaYyev3MaqXeA/ptvZ8
	 Ny4FEut4U7O/3ohZE+4vxCFavG6bShA53w+ul/zEQ57Q+nuFlVLjowdvNPQIBHbH79
	 Ha1TkT8C73RLXpQy2K3XsgIjPmqMkaf4tyrHT4q215oQZyKITfFL8UGU9skYVr8qVL
	 f8cvdn47wrKtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6CFC2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174730499358.23445.2218475562696496954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ee694f650dc8c6ab122d48994600123f7026c979fc559b60f228538fae4e455
Date: Thu, 15 May 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747304993
