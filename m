Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69E0D25785D
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791475234; cv=none; b=QuMCr/0VzPLRSO/BRn8WDZWcHdaljYp2vgFDleF+oEloALemE7CQgdgCpUeRy9oIH12bCVFOA1rBzr1puu61gcnVDxRC/SMdXqpfjHuCa8nVDXHVm6bU/gt6m5+gU6eM9jgDMhdPNbmTnLrxZaAcPNw9jfAdKBkXAtHcDFCOYuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791475234; c=relaxed/simple;
	bh=Zxzw7HAZg9voDcevCcbH9SKUCIjntQxA8QOaBZIVsmw=;
	h=To:Subject:From:Message-Id:Date; b=jB8PEkz8HPl7kmieWDjnH8dg7Rs+88Kw4frzCelEwOAbyBS/p5n0n2qJV9CPGTJUw7CUVkIdo3oJTTlV28p0Z4PbYeYENrxtLZKPfDvgYqON2/RoH5PoMC7pLcErf/h5q/jZUfY3z4nfrw/QXWk36rwEgsBXaqx4ZOoPN8KYnB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lYhpZzRN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lYhpZzRN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4612C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791475233;
	bh=Zxzw7HAZg9voDcevCcbH9SKUCIjntQxA8QOaBZIVsmw=;
	h=To:Subject:From:Date:From;
	b=lYhpZzRNp0uCGXupeomzUuFhCWWtSeUwOgTvyjcu63DZV3AdT7BeZlvi4vJbR4lQG
	 IdX81oAn3G9MIp1Rhg4mKzIVXr74eskC0e3iEBNUlykCGFDQlj/Q4wPDG6iofJ5MIa
	 Cfky7WWTanRvM30Rx/OxYadXG9/7GfM5rLddq2/El/4uUAAQohOWH6/i+ic3RsQZOp
	 YsboPnbckOqZIgU9myOvwUYwAQIkkwCqjmrOdYOq1TeC6cuVfbRuMU+dxG3/3Jiu7J
	 AilLMXPBEKiIHahrizUtv9inuVokKo7lZzBP+T5S1KEKv/TJb3KsiIauft2ZWQoZgB
	 J2ejLv1dSYL3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB0A7CA600D
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179147523375.19074.13769576553453369506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dfa7814287904bbf2e015757722a1632f30810517a3dfa86bb40ebae5305fd2
Date: Thu, 08 Oct 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791475233
