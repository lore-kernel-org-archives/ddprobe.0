Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA83B647
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723773954; cv=none; b=iwFG7qmYbuD35d/UBDDXrrRXUwGyiiqdp7Fpo5J3Lb+Kpi6n0PFUlJ2OMnWR8VAOmj68/GYFIgta0IEgt9iFxIgWIDriqt1ANX6T2XWGJG+v1xs8XjIMeNxkSTYbv7vPE4nbNGZ5BmS7yb8s1t19O/NkBohDeBbzwyjk8JnPYI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723773954; c=relaxed/simple;
	bh=uiWG5ZYiHov6mT03HyFH2XXaU9J7SHNybsPL4uTBySU=;
	h=To:Subject:From:Message-Id:Date; b=i2y5In77nRj/Ra6n2FCXPEhU/8O6DuToXeDhbQIgBjWu6nuS0FUBgVTvjOjrAtdG8u8Xod+VBkDz7ZxPyuepBuE9ZikOGwwLEkUG+CGLtEKZsyiExVwsvX39HdqZAa9BLc8+QNMs1TZzy2bxSTd3LZiF94U/uRMaKg2d6JUxDSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=crqzCWCJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="crqzCWCJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B88A1C32786
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723773953;
	bh=uiWG5ZYiHov6mT03HyFH2XXaU9J7SHNybsPL4uTBySU=;
	h=To:Subject:From:Date:From;
	b=crqzCWCJN+szYL16kvQJv4IGGPNTIjj/aytSJtrCkLLqoq+nrBUjQDD/eghQ9+TjI
	 jheBdALhWNQBCW9GSw9q75b/cX3fQwpuANrkaPfRVDl99QLvYJ2XxslAtl5TgoUmUY
	 U9t2OxBE4SvXRntolDjhdKKkmjlpWuwPORi0T7bMMN+CxsGso9wWFfUsm8jjvUbpKi
	 RoSvDT5FtXt04n7A0Z+U6KK2C5/nG7q6N6oAhrNwZsSzkUq7sPKtpuSLjRWxudZ8I8
	 +HRh7p7IpXSsUEFMXYZ7d7XeKQivI3PT71GDaUhfMDSOxpoTrG3Mc/L/UUxINUwfeo
	 sjgiI3s8s6bWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3A51C52D7D
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172377395363.9245.16751398614303202140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c23b4909cee9e8bd421b2379d2a91124787655238332fc7192f1103050f29c68
Date: Fri, 16 Aug 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723773953
