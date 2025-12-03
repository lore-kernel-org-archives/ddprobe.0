Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06576331209
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 17:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764782574; cv=none; b=E3LzeC/GG49SNzaNXjcyTA8Jw/qTpNZ3UTBYJzMCW6ka9mH0zlWtsA0p2+JO5qfy7g1LroA9aarWTy4bQ/nty1dT3JpIq93dctlODdnLyvSG4gvqEq2KhzLlxwBRyF/oct2zqAQkhj3GujBA/G+Ryxie3yJG95qfcSoYAZLdevg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764782574; c=relaxed/simple;
	bh=lJ9mypihMlMcxHayw8UNyuydWxtdNRVNQtBPYWJbYns=;
	h=To:Subject:From:Message-Id:Date; b=fTRKWIDo+4IAwvH7StJ3t6jjJpen0LStJczAqCSrM81DoDbebIO06nQVOg6ppFbTRSNwg+VmBlg+6HJAKuLaQUHWslXfhJOAzDos5yyh5ZnFZDMQFNWGrx7D3pAi97qLMzyBYKLhTu2/C64uwGJKweSscrDX7CSjLRxcM/uZVEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mamDWLUK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mamDWLUK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17E8C4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 17:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764782573;
	bh=lJ9mypihMlMcxHayw8UNyuydWxtdNRVNQtBPYWJbYns=;
	h=To:Subject:From:Date:From;
	b=mamDWLUKx9w4gtCRRLCCsda7Q9nBChSq4dJoryVGZWhUkiPKYPVtvI4Wd+e+r39KS
	 ztSyF8LP+1Go+ZmM3lCyEJrAt3qKJNLtLTpvbq1pgAMcVF0K+PFQTNmzpTLrYIlw30
	 Pao74iuYqARIJB5D4T3DKVQbsBNQu+4Z1g+nmY+ZcXm/MXFG0jFUwx8zXvg4haSkg0
	 GDI7YhEFwbPkxaEzzkyMxO1t+eCAZRVye7naEHZgOtJ/ct+u5EojIxxKYs9PSBNGAi
	 O9V/jbmVosAMOldSv6oAgMMCzTPJ4CovBMaBCTm1oDWLVsskpt1Pz0us6UQNTMzWhT
	 KEzb62lUZ2GLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DACD15DBC
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 17:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176478257358.25346.10952143456310392942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89784beb1b1d9388bba955f8550590cce85a50825fbabcce8cf7e9dfcf910a28
Date: Wed, 03 Dec 2025 17:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764782573
