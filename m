Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 230261E3DD7
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756636194; cv=none; b=dcoZngd8l4g9N8bH6g1FGD85ph8ZnyrPt+VWnWcFNdxo7VYt0HwBaErnTEl8t+294Oel4noT90BdDnWM8lUC0sdJEWC+0XNwbCmey0qjluXTqxUlmAAF3TodKssg6S96HvJGAHbE+CFdUgqu5QUAevR2FiOGS25L/pOOLsq234E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756636194; c=relaxed/simple;
	bh=d1G2pSgdtB2c+4cGXKFky8AA6/xq8bKMbFi7xwcd9qw=;
	h=To:Subject:From:Message-Id:Date; b=sISMW37DY4WxAAJ7ldTxQ/q/McdZZlBef+28QLaGxOUIoq1Czq38h2twatsdEvOcZri30nE4banjqfMG19cMqE3NsL4OMn/H9I8Ah9CeV2zM1Vep01Zo3x6jrB9CpLCyMlMDcntVF4E1ayjNMlG5nlURtjPDDcQeqOPWCmG24qI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dsdYc8iR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dsdYc8iR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D43C4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756636193;
	bh=d1G2pSgdtB2c+4cGXKFky8AA6/xq8bKMbFi7xwcd9qw=;
	h=To:Subject:From:Date:From;
	b=dsdYc8iRdT7Oe55PGI1dVeKY0uTFQHXhMASG265NZEE37cONokN9Q/ZSkMuNe/cfY
	 EC5yH4nX6kEzBOUGU0GFoCdEdpnBwXucVRlN4eZeU2CfLrBPPPzWEvi53zXcKkAdOG
	 DyqcI1vHMJJU92ST+ZItc3JRRKLkG7yIlJx9AwBZpe0K3m4M6Guvmi56+BTEuXSwt8
	 KwtO1IKEmkC4bVGUQXrXM7kRsKunu0WKS++lKljb89dIGGucSNUm3RNEP7x+o0QtSO
	 zq+Ayq2sG1YqaIMPNK8IQAa5MAmUUlWcz2RYrejdD/bvmyY5mifPpZICaReER6psIe
	 Pi2bqig5l5kYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C2CCA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175663619357.9056.16134462496513582870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0fb244c1e2621614b8a08d0043662e599a52fda3fe3d46828b53c2148ff708f
Date: Sun, 31 Aug 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756636193
