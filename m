Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A61D433E63
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 17:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783099114; cv=none; b=G81tIPYflpy+tZsonpizOEUSVAZjMgyryx/dWuzHFTj4BfSSaCSNvAYSee25iC3ITpf5fccAOAiwKJ9ZE3Gh4XpYZ/d1PcLjoPFZLd/5AKSemMT6J8+dn1ZMlJgAggUPlt0O1QE6cXdCf60rFBJxBMMbYD6JICANq4JfOgudEFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783099114; c=relaxed/simple;
	bh=g1YHTkV3HfJ8XVtwskVSAiiELbl5K07YCw0mpxu15P4=;
	h=To:Subject:From:Message-Id:Date; b=JEUvo0sMQuzum3jcFti6ddAhFKL4crkJd4jsKrxHozIiH3XpJNWVWbelHKJr72rvm4WPE0gH8dOomU670gAd2AbOxTy1rt0mNjVg6uGV5CQE2u2Yvo0sLYkyO7rm1AFdeDuOnT8bI91iwyyQK5RtvqpKIx2dRTjaeyGjnZ7kx+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m1nLjvUU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m1nLjvUU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC372C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 17:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783099113;
	bh=g1YHTkV3HfJ8XVtwskVSAiiELbl5K07YCw0mpxu15P4=;
	h=To:Subject:From:Date:From;
	b=m1nLjvUUIMgSbg63rypD1dzRAPZJ61TsH6g76DzIjMoy12R6fP7oB/54Prshw4Qtd
	 2l9Uv5LtdJHL7EG9SXmBjp+z5nI5vzYLcKPqEX5CHh4JvoFQAnmBpUlgOAiJxqShNr
	 53rUjXq2UTtoAn8e1bbkObS5/gCkh7+MkqexFRTtzehYuNa/ri7ci0X3yJZO22FmEP
	 ixmTU0xb0X2OuMC4vYz1TBgAOSAwFaNrwyRmMRdlloq7V4OSS4hEdYvAHpAub4RoOj
	 zm1N3hzsV3TfuXAu9eeFqS53mCxUKxiOdnjJRvpmEWP0foiHW9I4Brxpxv1cEY1NTG
	 VpB4xYVABQyuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90D8C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 17:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178309911368.7058.7298127000906453467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c260c790fb4e30074908429a8cf0ad191f309dd68a7ed76892f9e9c15c45d34
Date: Fri, 03 Jul 2026 17:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783099113
