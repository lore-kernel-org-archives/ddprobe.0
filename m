Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A95A1A9F86
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 14:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763647314; cv=none; b=XocEGBYYitvW7xUBzUTGEhAEnmr0RR/eZ7hP1br1FoGV1u7CpJrHoAVoyAibV5C6F2o82IDo+icOIWG88U4RIccAPbYSz1jC0r4nn+nIDsuj5mDKHTK69Im2tyFFjfPZt9coGVD/ukJcapjHl1d/IUexe2q+C+HpQqKSrnJqZCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763647314; c=relaxed/simple;
	bh=t2j7hHc3YpolObRv3qfKaBYBjyVcT7eg9VSW+rXbntM=;
	h=To:Subject:From:Message-Id:Date; b=KfCnY1goizOB3aoW0sJIzesIGHceOWi7Osv6/ONAcPyVjMB1KEtdxxAKYbsv5akumbQPNodG1JeuDqHQLekR83BWp6e0ZBYHJhXZa8ekEbVes1Q9LNf7weEO8iMPP4GiU12ObBuq/4IXFrTdmHMbtGrty82TJMM3sTRznAtO1mE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F8yl/dub; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F8yl/dub"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16FFC113D0
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 14:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763647313;
	bh=t2j7hHc3YpolObRv3qfKaBYBjyVcT7eg9VSW+rXbntM=;
	h=To:Subject:From:Date:From;
	b=F8yl/dubUVXZ68nDGOYBahp/fykX1RkrZqdofVf4spVD8qgY81j6JEEIb+aZH9iq6
	 kenQ0hLEV8TzlUj3/zoWqFRQA6dcmjQif7dxEX3dUGhv0InwvHRJijWsGeKGjOMAy+
	 HADEVZXtBpwjuaUiFlMfJCtS/H6SMoLHXKeTP45+Lc2tp6PUOJT56uqYzpDmdvSPSQ
	 jNtkAZdG/vWptcy7HpctOjS3BNDaAht/hcb0cE2i3PfuIMfS8tg9Dolp9YCkEAqC45
	 FUOUZGQDUU4jsb92bl8TOY7gdsuMPZEWKW3NoZMNonRteVoUSaF88zHhVCQ2y2Mmpg
	 zXXzFTpvjy5Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92625CF854D
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 14:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176364731359.5108.5104519436740104775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55f2f18b04b994ae4cfd2df32a0d7484630141320c023b07496d9911494dad8f
Date: Thu, 20 Nov 2025 14:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763647313
