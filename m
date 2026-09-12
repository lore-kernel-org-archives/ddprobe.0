Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40F3F37F8B2
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789203634; cv=none; b=RmxP6vWEm86TcEayvx8Y3uUP0W1geVCyuosCQFAZwI++/+7tnvPH4ENSqznixJNFqoqfBAW58ZpTPs0uCmlOt2xITqqbzDi1txRoPDAKQYPjhKYJYoewdpF5qsDXo6Dm0nxy4E7D6NRGKI9l3pOzSdQK0elYlcsGR4wttejC/1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789203634; c=relaxed/simple;
	bh=M/F+udDovzPnA6UikNp3QsrxyleWjjhooYOr1KUezaA=;
	h=To:Subject:From:Message-Id:Date; b=CDwhlBs+wQjU4/L5vtIigrx2+IcMT4sUgpxi9vY1dluWvu+P06Sder43qK7TAPkvnWlUe6CwxyMDRttywO3aUDktEY9X83OYYToLCQLO/24lU35lwFAdw8TY1aSV79NhRH8Ik4Jr9h4KlXH3xyhpLFV1Kr7V11ltwMOoY5enBXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ukCjaOLd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ukCjaOLd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D47B3C2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789203633;
	bh=M/F+udDovzPnA6UikNp3QsrxyleWjjhooYOr1KUezaA=;
	h=To:Subject:From:Date:From;
	b=ukCjaOLdIvx9VF0yX2HJEwP1FRS95QCQy9rI6niVCkwMXz7QBUzKGCWZz8Z7MUHtS
	 lADijGICOREly+sYLTuOK0xruXLDRBv21G5IhWJCCBerM7AEFKY2l/OKxLv8m3+x9z
	 T68rYjIhFhnMLyeWZJ4I0XvWkn++tRWDwKPs8iUpuB+CtxP40/4vlxgVnpUl+4YNIw
	 l6aOJPAzNN/FJizQzjCy876Sno8Im0wQXvIHrokXe5dO4Yeyi8Fhvpnfn6huPXqcMm
	 bq1ssWWMSaYd05IP51y6trgauVUdNOmgVW3KWcnJpg6gwbb54cdAGAj5ld12+h/lnD
	 8M7hc6ZZ6+lvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B05B3C88E53
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178920363368.21840.8720678387663073332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f631469774df663d95b53d89ac7bd995ad5cb0cd4490af150c261bf7c2eb8340
Date: Sat, 12 Sep 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789203633
