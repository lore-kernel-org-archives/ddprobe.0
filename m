Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6CE1D5ACF
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736924154; cv=none; b=alcGe6MBBT4MSNcp8RS3ew3jUM+4mbrjsIAaphOWdlhiNyScG9OzKZfgvmto03nkvaBqsSJq3alk8dZDFKA8l96yETH1VD799NlN1Naw3dUm37IsfNP6ljy3Q1hlNDHLiQno0z6iXNAOOY5Esz3kB0m3fK+7eK9mWFTnIZBjI3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736924154; c=relaxed/simple;
	bh=F0KITcsEdeU5N+ADzKWdz6Cif5WUfjSKEMJNxlc4dB0=;
	h=To:Subject:From:Message-Id:Date; b=SMus90zHtuuZdPHA9h9epTtw9QdBWm4JiJQXS4BgN18P9ykEXqSAoNgL3nf0SIMTWJUHZkQ0trKyu+47zMX9LdTqL1xIjMdAFdb1SW3aTpi1N8NOP2neErFdZb+JJBkztFVnyCqxnWJK1YwF01nitCHn5YDuVBPdlFHQ+9lnYkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KvI+tH7z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KvI+tH7z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E611C4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736924153;
	bh=F0KITcsEdeU5N+ADzKWdz6Cif5WUfjSKEMJNxlc4dB0=;
	h=To:Subject:From:Date:From;
	b=KvI+tH7z1qGjFNSj11H+w7tjTO9415rhXWJ/cMfxgD6HHpgXSGvwoeiFlNEKUzJ/n
	 Ca9z0O3mdVWWKmwfMCTaJ9px9/h4cVTDNOUdpGTGCLbXn8Zpu0KTL6VAEPB5os3nrb
	 6kOrYgcopS3yM8eHzCWNOp1ScG4ykZgrsdmsQkcUitFhKeAGZWNQnAentPJymAV1UQ
	 01h1kT0GC1cn/x7GoZK7/LqpEjiW89+QYaVc1nGSN1cPAQ3gqTPdeI73SJJw0p5Muo
	 2j1WMmFDPX5Eq2avPnlkI/uzTngIDY642zsOGGyYC8HNl2sHv+9ccCPfEBZsTUBxuH
	 kMDNp3BImmlhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F93CC02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173692415358.26487.8438845906267582553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b429f8050d78f4f7811039c38895c8bf44119f395da14086fe64a150b9097414
Date: Wed, 15 Jan 2025 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736924153
