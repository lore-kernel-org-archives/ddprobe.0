Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 190F033985
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726824954; cv=none; b=rk+NZ8oTtlgoqGYxQRTl1kCsyqai+YNAkxdNoy8xxvRTAUr/ngRFr+1c7nfGRNhQBwoM8WIy2sJIUAJIbW+Reb4mRhWwf6MSReGrtm/kXRflXj0vpRZ4RjpV4ffMuU4zAncpovUYwx56Fpz89SEge0tq/AqElawFOtoRLvTBIkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726824954; c=relaxed/simple;
	bh=xe3k5g19Ycb/CHRWeRXBZUE35oJea9wuK8NGmC6fOfs=;
	h=To:Subject:From:Message-Id:Date; b=oHxoBdjTkrE5HxQiK7EmOrafKSCXc6qRm4EO53sKyoA2SGSnIl+5uFYxoPwTv+IcTVWNPf5I1H2B7lWpj/1hq8SGoY3mUThThA+dK/Z3UDc3ct39/Nj9iXjoPZc43PB3R1ZQP1aAiHfPlhpbBULj7Z49aqdSzKNDigL68xk+RIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fCzz7Lz6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fCzz7Lz6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD194C4CEC6
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726824953;
	bh=xe3k5g19Ycb/CHRWeRXBZUE35oJea9wuK8NGmC6fOfs=;
	h=To:Subject:From:Date:From;
	b=fCzz7Lz6EHuoe63gU5CntLg1iLMHSPn/I/DzySxLxEvLgHwzxD9yIMKmOmRoVsEbq
	 oGQKRVbIXIVqoj2x0u31snYPWjYCV1fFFNF+94kNlHEHyx+BjINIVm3aCoNMwqK2XO
	 h9R4zBkf4i+FDtVotAQ4vx5g8UVyx/wYRTSwsLxL7RVgd6z4ct6roW2rgOvviw9HKW
	 ZXoRrDz6gU9xwh0Ss3y3C23s3gdvPLC73QyJuBy1lsQgWADPAM1aQiPBelIK0punDe
	 yMob28X5sZ6thP8pqiFZck7aZ8tMU5Itk6slQrggyipL1+gpnhbqd6VFZfXf7PQ9mC
	 1ESIDF2+2wSPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C161CF58F9
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172682495362.21656.15546883726357540254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c47d45a5925093999a96ced750c0f54b83ba6ca13dc493b0c8e792da9987efde
Date: Fri, 20 Sep 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726824953
