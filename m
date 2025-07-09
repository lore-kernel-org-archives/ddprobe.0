Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 633288F40
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752100194; cv=none; b=T0IyJe/CUfIBi1CpCpj1CMlk/vnRLG7X8vMMLDN0h4F37bDpU+tdYHtzRSlyPHsqmBDaez9rW1KXaMmd8GASrzSqBNgmyQXniQug40eD5OwtBTkCaXAOovr1NpgzQZyXonpSEH3qLJAAkinv5vrGsF8VBydRVFnFvtWE1YsDW/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752100194; c=relaxed/simple;
	bh=93xwafWvXJy3KGnS+iW1MTp0iQA/lnrA1xuPEJkkHbg=;
	h=To:Subject:From:Message-Id:Date; b=AoR/RWDhYeISMGtarpvIPo0LHUwZFKshM9rZzT4AdyDCiTwgn2lbcy5AfjzsxGzolV9eI3sZ/IiDMU2P+EuSKEcCCqLpgGTGCluiCewMXLcwZIevbWapR6MPmzCwFdqmgxiTt7acVmwrTXIUKVURwVtN3L6ZOZYIAfPpHaV1gwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KWz92YaA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KWz92YaA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A038AC4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752100193;
	bh=93xwafWvXJy3KGnS+iW1MTp0iQA/lnrA1xuPEJkkHbg=;
	h=To:Subject:From:Date:From;
	b=KWz92YaALFDypcxFc1FvyIRLbdeECm2YPOf07YL+udamLfzqvr0Bv6qX5dp+BDmjY
	 xrPrr7ArjCRsupRUjzDxXxFsF46/zJvcBbJJu4FNvVXI7Popo2UxtmkPOdBSUbQSve
	 vV9g4bltKtSdFQGWVhTJjbln/TV+I3B56O1tU9L9t+2bf4gb2DEhG4g4tu03+FFAco
	 naMNgZ8VKpgbO9S/5h3KxF8ROQFLrMM2LcDCBqGjTymoal40QcePOJj4U35g50hJOf
	 671NkneJhLIrB1BQkw0bHVIJjQb+BWy6ijQXV+nGxR3bDAsYZauYq4tO0UJkI45/iU
	 grliNy7F/+GBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E46CC83F10
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175210019357.29179.1947860490539913345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8cb41bca70d2e46d6d68f7c6edca90742fc5702a50bc9ab4accbc17923c05d9
Date: Wed, 09 Jul 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752100193
