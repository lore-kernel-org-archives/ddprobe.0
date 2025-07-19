Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8BE2110
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752969594; cv=none; b=B5LrPiC7xPWgOiYandCmeLguQjVZrtjx3KPzowIG1PBcGCS8lyVDBUsULyF0csl5lfdCdZ5YRWV11naNa2XM8fvbMKMOcO+CuLb4niaD4Uk6WJfCSl2rJNOhlDa65gYvK8leRUjYivmtqyiaPo4ydZA8aeeEBzLZG8mCD2THfO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752969594; c=relaxed/simple;
	bh=XtZe7tHea0PEihQ1Ny6AVMnhn+GGXV7hihuhj/NOmcM=;
	h=To:Subject:From:Message-Id:Date; b=KcCeG8hoYaGJQTXib46ibvqQXhvIQJaR0dxuRy8G1p0DiBXwhd4C9K2FrSn0kZQiztqSpzB892vUP71WyuvcpYwD9D8+l7XeeCgpJEhRV6hkDQWd5UX0U4t9rasscttI8/rhLMPDMFg+7+5we6r/Zq3cEYD/+hYm32ypxeLelzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rzPOoxEY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rzPOoxEY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9036C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752969593;
	bh=XtZe7tHea0PEihQ1Ny6AVMnhn+GGXV7hihuhj/NOmcM=;
	h=To:Subject:From:Date:From;
	b=rzPOoxEYbVAgx50CoFfunlLrlce2GDpqePzmV1FlVCtFWziEXQe6jFQyDGLDPcmea
	 4j74t/XLILH+GPPgcDbIvXF8SkZNPvpz3HHbp48u8RbYjjJJ888Tl+qIYaImOCbAcZ
	 waoAqf2NfAJ44viFzz+J7HHdzspS2Ailli91zYlPGDrxAQMhMrvKbPadiokj+JySl3
	 binaG09o5x+5yfF7G8syZ0qHQ22/SvvsGsOC6fzjwFbzh05jL10EPEuJhFBUlGBMNB
	 RC2KYveqoP1joIyupYtt3GDWFDtCxugHA61b0FgU12oMU5sl9UXQs8VbxmWduWhLnj
	 HGgwH0FMjv9nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953EFC83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175296959357.32227.17131486394250746067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0768c5f19f81a3457dcaeb8f1d2f20ce882d442179a841e685f136b9ab114598
Date: Sat, 19 Jul 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752969593
