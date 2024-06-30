Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 682CF14EC52
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 16:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719764663; cv=none; b=ke2NBOZRBP1PMLbLFeXC/GyKi6oNm2B7sxgS8EMTYKEmuY/jP+uYg+AYNH1+1RTSsLXCUiqWN1ZitRf11rUVyx77efrEN0QWcoc1Bd9V8aykSU2I0zo1a7hVZ+CF8hw1h7ZIuq19bjnEXqI2/4qVm9ELlBuH3ikJVd2K1P8dSfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719764663; c=relaxed/simple;
	bh=59m9LxAXYQhWhm3UQzbYzH82Vs/abyCITVzovwJH/SE=;
	h=To:Subject:From:Message-Id:Date; b=B/VaNsWJ8c3CY4shrs5crbh5TOSu0dNWXxQJi+vN/tBMf0ZCZ4fZN2DJns5uFuWaErMSVDx1Q0ewA1GxiebQnoAHwl35pIJW8/CvP2JSm/FcdwrZdowTbnS3Pg/KQWMRyhqCqhJCWvcoK/EeTT8oLSrimbeWld0hn6vRPNFwDxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uK3uV6ca; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uK3uV6ca"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF984C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 16:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719764662;
	bh=59m9LxAXYQhWhm3UQzbYzH82Vs/abyCITVzovwJH/SE=;
	h=To:Subject:From:Date:From;
	b=uK3uV6caLeKfonUCdPrUtDD//oeJ+8T8loQRpgVluY8mprAkTvHUHKkW37Cq75aqO
	 uYRZH17RcTTBzwgtWLBomAgQyffpcNiev0SP9JVXEvFE/lZTO/ihSAj2GAn3a7Onc8
	 TH4l1CTzU7cRjY4sOWyPe1Sryy8XMQgEXltSRMPffsLZ7vsjk9US+2fLdkjM2MAWVp
	 KpdXqL74J73hbOHtmBg/abUHipyMMW7lsqq7oZZFSYPMTWH2HG7ezB2QQQKIiDgTc/
	 QKtzgJA8PVPtfrkPMeI0EgObWV9i9CSmXJliRnNrzsMKuMG+Td1rsF+lwRyNqjqBVQ
	 OKSbOHqnE6Shg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF8B2C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 16:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171976466277.8225.6155057330883087102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2934eada82434d9ee6fce4b4b86af773815a720546bf18f1d7248667343d8666
Date: Sun, 30 Jun 2024 16:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719764662
