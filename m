Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 268B5439344
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 06:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783577914; cv=none; b=Jqf9r9junvAO7MnEDncmNtb1EA4ILxNB6CGzc0nlultep5hB+BWwiDAr7ryJbyA+q66QfLvw/GbDDdkHLhvfs5m6O2E+cPNocaoyrLcDnkMgjLhipfUdB3eReLqjTnsrji1dx7LdcthDSaJK7szKIDTDB2dz0VV/8UwJWwzxEYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783577914; c=relaxed/simple;
	bh=sFpwnMBWkfjBM5zfVx2/D3PwumhYEt7LFE7+i4oIpyc=;
	h=To:Subject:From:Message-Id:Date; b=oiLMllgcYb6iVbQLWaE8HdSJZdFL99eAVxMQ5C50/SeeaB6P0sEV62FP12DHHTjsDyQyl8k6m/VcrYf3qMXWqXSFOumwCBs9TTuVeZgUKOUspebMit9h4NwDVpV5vb4d41ygIPguHh85WUCoUF4TkfQvTiKZJQx4It3fBda91OY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BAIxbxZZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BAIxbxZZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0ABDC2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 06:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783577913;
	bh=sFpwnMBWkfjBM5zfVx2/D3PwumhYEt7LFE7+i4oIpyc=;
	h=To:Subject:From:Date:From;
	b=BAIxbxZZAooKU2AlCdDfqRkwZnbSKS47zO/DsUkU1bCF1ekOxowuPyt+X3m+kPPt4
	 cj2OkhCMI1vb4xr4YCy70YMnH9bak8suSQKgdTR1HhwaMA8YyABkzDME0GybzdV2Vy
	 joKQNtbA1ukkG5/uOL0t4KgQyLZnx7Mbdqsv4UyzyMZ7o6pgBlL7Dt7QSatLjUNtVz
	 BEOeTQvDQIZnsO3ipp8TLWOj5+aH5AvpMW4VsiXGtiAF0gagO7eGjRst0Vu2o5XDU5
	 gc1juCevL5uM+JWN3dRykSOPECU7SaHRP4DKxWqfJtbDMJ7DwQc/PRQODD0os+ywB0
	 tSOgRk+nbct+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE9E2C44501
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 06:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178357791368.18687.4165854414844012766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3040862d18fd4b31a8b2bc3922a0f5d280f77d8b3f27b9489a8d952c5d16719b
Date: Thu, 09 Jul 2026 06:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783577913
