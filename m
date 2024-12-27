Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3395C1DA21
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735308354; cv=none; b=LdHYHlufc0+w6snYS7RtrITPTbUVrK2yIG8Jqf16ox3Me0F9auCAxx6prOLFQwypB82t2fuiLzHjt33o+zPF6DZIpUMbHXdxColqO/kzfVOUjGxW3i3QmjXfVC+wTIQeHa/cbPEROycsd7SGihE92SjKeVi/E14dEw8ckozZm/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735308354; c=relaxed/simple;
	bh=2466Jy5sclVCwrflqGZN0sguhdhDyC77jVULwYwolMU=;
	h=To:Subject:From:Message-Id:Date; b=sB5x+k0PFk01nDZr88ipd5Qdf3pX87AjjSu8qO7chOq6vijzIGdCbBj8js1IdGTdd/Fr6T3nSXQl2EnhSSoEDctj/nkaLFB7PAg5qPU1b50PyC3Mu1iMYyfn/v3EFR9WSdre5qeDLtZVYnH2tnYq8uNmvIPjtn8w88tFl/9Okew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nb26eYg/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nb26eYg/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A475BC4CED0
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735308353;
	bh=2466Jy5sclVCwrflqGZN0sguhdhDyC77jVULwYwolMU=;
	h=To:Subject:From:Date:From;
	b=Nb26eYg/bJC2sVHqvcOMLvv5vocJcmU+5QdHw05l0Pjz9zpWLkzy1QL8sL3i1lHqe
	 EjNJmtGMPsIibnujuXlBNrgMagOSoW6s0R4ZJHktdnoVXsnh7xQL/dyqQRr7quxgsU
	 ufyM1YpuqLTsXkuFgnmZkterI6wsJNuYyR/Z8LYN3FCKPWrgsu641luBavQhMIUOuw
	 NsEANMVWCc+SneTbODg9UIP1vpL3++YPjJQD8mHoOjvUuh39oNwwYz4k8X40p6tX60
	 /INkKyKs8C/bg/KpOS27FQKrghphvD2uTN3IdBW8dK47OvpSHUGUwzMbkN900mO8ti
	 lGDl04vbWy9rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E57E7718B
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173530835358.27187.11774863878468676579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9eac5468805dc4dab97e2ab1275ba153a766e7bc243204766dea2caeebc7cef1
Date: Fri, 27 Dec 2024 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735308353
