Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E798F5C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750525794; cv=none; b=g00C9uKheg2+fbU5HYXdQJ1+Ug6a/ROQ4ZYkBQrBZxHpEdlUAX5FsRyT5tpq1OROD4/f12LTDC+7R+lhrhuiKdwemCI0RxAQ2Rldf2AXskMti6OHkkePfZPVzexLexC7/aKyf+2YJSo4ASTv+/oE3DF1CghzZJRn0ssrhqd/E+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750525794; c=relaxed/simple;
	bh=wUA/rmVGjR4E03L0lGfmSCQbbiJu8aWk6PH/cDFKe58=;
	h=To:Subject:From:Message-Id:Date; b=CdxqsfPKL6CDc8VEt6c5qPXr8aeSuHhcrkVyrCmAk56WoAuqXNZ78vpCpaMe0virkyxs89AlIEwgGev/x1PqOLMaInUELN7DFsZXTwZtpDxcVV8slJyv8T1PC7zvAb6qbxdmvIySDiI/v0VDD0ew2psSrxY5a7qzhrgMeuN7MAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ne0memBO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ne0memBO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40FBC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750525793;
	bh=wUA/rmVGjR4E03L0lGfmSCQbbiJu8aWk6PH/cDFKe58=;
	h=To:Subject:From:Date:From;
	b=ne0memBOjToUsD8D8bHXyE4DPAz08+4G8El3olakLVIYQ/MX60ShhNzZttsxNFR8l
	 iqnkRQO1E+qUXqhKwCZrKMex4+Zz4wr/3ofCkl80n+hUKDg1DvFbB5fJ44bvWw6hcZ
	 5yW0xFTlKK30hSq8C/Ktt7kGngLMqosix01ObfJvD1ECow8O2kakkTRhMeH48DKrO1
	 e0U5617prHgS4orMRjvHpAIUpLS9edTkbxQMTfsuwQbfkZvD1EfHRCMRFVDbeBQjUg
	 dD3EIKcUQTrdIyL8+0mf1XSgHOe1mlYEWgARDMPsSMl8MvivFAPhBCnRmNzQSIowru
	 dhH/jnvk/lGig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E8CC71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175052579358.11884.12117912012234078044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bc90f3f91b8e4abad519250a5d091ea1c0251430e1fe187419c913e60679f8e
Date: Sat, 21 Jun 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750525793
