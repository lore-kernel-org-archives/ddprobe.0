Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1188B1E4928
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751557194; cv=none; b=S7R7c0unv+Qe+PGO44L+eHLHRAblKy17v0zN/YsRfvkwQlCrNr61kzRVxnH3goTrlI4m4RNNCw7MyjfSOKGDuhpyulwShdAIeLVthz8Uk7SM35YwQ27oQlLpJb78Qg3UAas6Sy/ilv2SVhy4TR0UT1OjAwO1ZMQujxT9BWTOFSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751557194; c=relaxed/simple;
	bh=SHaWvNUh3bAOs7tddHL2fJ76+hW2ARADLF3Q3uP0Zts=;
	h=To:Subject:From:Message-Id:Date; b=nF5JXeHPJwnJg3Q9VYEFum/5sAnc8xDxhzVauhUb7NQOPWmKtMBptumN2+Pz2j1ninfhn2RAwl/R4mw0ylFLkGFqsupzqjXYDFasczpO2eTqelayChsYtcLzx2gIImwo9mOUlMpcBQ2lE2jIb7Fui0Q8n1elDx7+Q7Y2RpDLNmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uEOt3u3Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uEOt3u3Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D38FC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751557193;
	bh=SHaWvNUh3bAOs7tddHL2fJ76+hW2ARADLF3Q3uP0Zts=;
	h=To:Subject:From:Date:From;
	b=uEOt3u3QD+25nRDe5MLA8Y06QLYaQ+0edvW7u6ASaEO9jkuuenXP8SS/geZmRPEEu
	 XOvult66O2zauHZllh9kEhxQ2hBm/jUKN/e7RBjwtbUv8L3do/waI4D7yhktf/XmS6
	 6zUUNJpjkY18dneobnYSm6zhvNjqZqZkzdh6Ui0/NfmPa6AUBX61HHbrkB4WUppAlV
	 PbezRHKverBqQWOaRR7hN4urqNkz5CRiO2gySANs8pOYGvJaWLUgicWl0s2zqVTYAV
	 thFjeEu9dEDpEyHTh9sas6az4u94RAr0de0T3DSiVe51UQ04TGzmI/HsAcOpdXPrWp
	 Yikw95C7gDRog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E991C83F03
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175155719357.3801.8231511493608439057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ca67b6305183c24952d1f8c765696d22029ecadf19fc34cca60ff9c5a7b0bbf
Date: Thu, 03 Jul 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751557193
