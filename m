Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 159AC199931
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757450394; cv=none; b=IdrU62UioIcPPFK9OTyNC6JlOb75Y07bZT+iQ/jf8jRwpDNldCWFmzHGZoJqBhtfGMpHAmVJM12jjqgJflxP3tAOFyobdxZrkPm2YFexxJeXpGTCd/aKr29do9pC6mRApB+vFg/grwFoY1huROTFDVXCTVL8hsEva4PWQYwAPCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757450394; c=relaxed/simple;
	bh=2TAwVjmla1f2ZmbzRpeTE9IDJ9/67s2L6p2xVUtdjRc=;
	h=To:Subject:From:Message-Id:Date; b=ozaSGIcC398Nl45Akv3J98b+2QO89H65CJEF1J6/ay9/wSpCKppqvNmnpM4uRj/tbuy7K03ct5swqMlw4h12YWaeZgVI8iFtAGXB9Q/SHeNNC1etjFMQQvPbEZizLdaSGHR7yQsprYPTRDppSrhIyEtRRX/1sCg5P8cSHzV9wag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P6d/KJ6N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P6d/KJ6N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E8CDC4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757450393;
	bh=2TAwVjmla1f2ZmbzRpeTE9IDJ9/67s2L6p2xVUtdjRc=;
	h=To:Subject:From:Date:From;
	b=P6d/KJ6NTvruJTrQtgSXl+iT3RnLyVDqwVQjbOzB3h0tCUY/aR1ickBk8DmBRWuC0
	 D4+cmoO8OkpXvvgP4JbPNmketHu6kO315ZqEhfC0Dkup8IbeHCTg5rvmhU8fjHxto2
	 r0eyVldb5y/FdJ6JLOTef9bNgx+LAdcJvskJ9l48yXqVAQC+ZuRay1anpNRYPja44C
	 1yquiKpOimPF+Y8IPNand+6waq9FNZvqucjpOG4UauRXEFDVQPL5R26KLZQtj1Nj1L
	 8wmFMEN9/Wf1jWLG1HfxPaen3pK4c8PF5UvBTI2Ad69j2BFpdLP/DR3RUskloOVORw
	 IFpwL6WrRHBJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F236CAC582
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175745039357.6760.13843789602145948012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ab457f43b8c17ea5ab2c8b30017e4e1ec73fd1823b40bcf068638708dfe8848
Date: Tue, 09 Sep 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757450393
