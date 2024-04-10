Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A187B17BB03
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 17:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712770096; cv=none; b=JNlby1LsYmCHIvZA0iXyr52Ff/QTrX0MRSAKqXFWg8oenCnoX/ISDCcHM3kSXJygiaMByXDOntyHYFsp+MfNyzMCl36j1eYKuyJgUaMkzLkDf4eiHGztBEPj8njERnwUG/jDlXLnSrrDh+WtTIgWiyctk2yPV8S1IHwMJduNFi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712770096; c=relaxed/simple;
	bh=6tlf+cdxqZpGljmCLhj9wov4nMPHoP2bnDqM22Y503w=;
	h=To:Subject:From:Message-Id:Date; b=dp0/AUP4qwrWoXamaV510UFHGOgJNkwuQ2bEJzISyrrRpXZy7YQu8MC+DEdB/QRXgxQ2Gy6W9W5LJf1cN4oKxPV8H+WroQjzQRHANlw5DA86o1KZk7ow91jlq3yEwWwOqPY/LzYxZXw6Zn3I0r2E6uICtdW37j4HQ+eJrc3bmtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iCsha7kU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iCsha7kU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77FA7C43390
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 17:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712770096;
	bh=6tlf+cdxqZpGljmCLhj9wov4nMPHoP2bnDqM22Y503w=;
	h=To:Subject:From:Date:From;
	b=iCsha7kUgvl5qXQdyvapPyD2lQvA4LfMr1zrljv2bNXMvqNjQ4n2A7PcQ2Wt6eZSf
	 1ZRS5Xgj58RTnP3K6SisIOojatMc2qV84lASP43+0PiXEED7R9C7+uR+Sip2IIDiXT
	 rLZYzmyHF+kUanPAystqdsPKXoAwXG0KSgrv2Hjq/PTf2J4DixOxWUxSaSGrqL0iea
	 PgfGFPNuLpZBdg0Dx8e6h1vHsa3OnM3v1+ApcPhpjt+EfieAZrulR0PHU6rbL39hKm
	 OB2gYfiWQQfnhRit6r7xLwl8wnVb1da+Ma0fRl4FSDEf0J7J7U0whPaqeHdeS4HeQF
	 sAXufS1AQIEeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 640B1CD11C2
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 17:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171277009640.22243.2677766618670407683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1b9c6a04683e925b989d41984b2c8ce6b16218edf6b740f6638f48d77014e12
Date: Wed, 10 Apr 2024 17:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712770096
