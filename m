Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45CBA18AE2
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 16:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783875514; cv=none; b=JvFRMHWCauxpf2rR9kuU5CP4EFQTRRSAsa9KFERfjV5rtusFboJf5pbBMVpMtlSKypWRXHglMPdXjyvMb1RGqCgBhpxgly26fBc+391lta75MPEp3S1TEGtej/EfO++sL//CDmhutDgwK70wyK58+kGyrLUHINgEXSKLnfiSmjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783875514; c=relaxed/simple;
	bh=ioYdnLaIV5YTeAL0TI+XtUT52tR7VBhJ5m7xxjUr4BM=;
	h=To:Subject:From:Message-Id:Date; b=P5xOWSLuy7OsWeeinKZoE/htUh506fzi5ABKbNDKiFs91kXf5C7G9DqP09vhRPuiHmBkxLYFYc8TL6W+2KZRVHg1hc6D5qq8D8oFEYWm4+cnQy5C5vByFDmtRq2L9BwwogevVfeH56k7u7a+MTqYaRLFf//zkZuJM2CSKDu1wdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iPT1Ckil; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iPT1Ckil"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE74EC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 16:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783875513;
	bh=ioYdnLaIV5YTeAL0TI+XtUT52tR7VBhJ5m7xxjUr4BM=;
	h=To:Subject:From:Date:From;
	b=iPT1Ckil6a+IGdRJhF42WvP3IPrR3JRWlgUtnxpokIpi8iIf6uVHGXbqvoIPG4600
	 XVDmVWqodZfV1Bn2r1RIQPpC+OCCWnS5JdJr64cAYs6a3hQkmDAC/fEgA1bNQjUKOG
	 lg0TOHph3ndm+4wwk5XytEbBUOJRxFS1FYTtsVyH0HmR5nGnhAe8wGZnjvRZcSsyZW
	 5AZcorZhpRa//qLj28T0AVlNzFssOR9zBZzdZ0A9J3UV8wDKXiTP3SiKDIHlFm1fi/
	 O4ChjJVU1HviUcfGaI/l5CF7jbjTDS4n+Eq04KALRXf4mgukusWaGwsCFvXIrKLKOQ
	 cBWl76UWQ4Csw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE8AC43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 16:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178387551368.16168.12138101801504472597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea70c3be9acbc4f9ddcc461873c0b6c211f193eda57c5d2d20c4ff53d33b5b96
Date: Sun, 12 Jul 2026 16:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783875513
