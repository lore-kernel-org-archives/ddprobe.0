Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 508C71FC8
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 05:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783576714; cv=none; b=ESEPpDZ9rzfZfb8pJQjpzW9EU64Aw16oDGBvb+p9CkFdzYrUuLFpgOtxF+VEWHK4u17gm+rBhTcLxFB1SbQhrXGoLU8HsUPbzQv6wCMNSmxUDKhY+cN/lWFtZL3h5zsy0d3fhubrFxhwQQvBVWlKpsO3BwNlx1BqYNPgREemcoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783576714; c=relaxed/simple;
	bh=/IuDkmGdRwQ/XX/YdKoCqnMalxojKbI3rxCeyak0SCk=;
	h=To:Subject:From:Message-Id:Date; b=YD8Bsb454UkNHMNmClalRH4ylRm/a2qcIAOAa6xm2ftCEztrrQDKqhvRKEYC/H4HJ3CvLEcfqqQb2TlEbq8J5NqFl5V0LSBt/JDTojSgPGoxd6Lj4p6x4m1D4ogg0ashI9HYxO1v4688OOCtkG3TVUbEB83lPqlVZcBBOVEluI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NmxshcaO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NmxshcaO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2F8EC2BCC6
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 05:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783576713;
	bh=/IuDkmGdRwQ/XX/YdKoCqnMalxojKbI3rxCeyak0SCk=;
	h=To:Subject:From:Date:From;
	b=NmxshcaO4d3Eli8SEWBu84uWihNsnN0ycXZNYXMbxX1jQCu969sal72Cqqp5dAU0w
	 noN2HpsBKhj8GCqysmLlgrbb4Nc+LpWR8nb9Md/f5XOuQgzrbFbxiOSIxhLj5sJ5He
	 45S4DIcfdmooPoeVos3bupB0UeSFMrJlI4Nrc/mY08miUdP1HndVq2k5vuuRrFqtKC
	 FU+AFKu5yZ6jundSwL/98HCF3iYn720tHqClqYaM6lhIlxpLVwUr252zxDXm6rvZYJ
	 GyKwSIT2Npy2XT87CO1L5rttiejcmMTSjO1vFKJaOmtXX0EABpdSWTn3dgV96XOnhD
	 f7bygN1x9EfMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B257EC43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 05:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178357671372.25804.13380680072890679923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38cf8597c08e989610d5062fb49f6ff3845f229e22df7e0b7f6972f5fea2a49d
Date: Thu, 09 Jul 2026 05:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783576713
