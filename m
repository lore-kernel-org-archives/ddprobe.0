Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46497215F4A
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759120194; cv=none; b=W6gqL0FMco0I1Mgi1co5+OYCrLpXIWiWiJbwPe2axUZFgdRe8htCsma2WPXxm8nYAzo7nMHsl7AujTPT6vFt/EU2Uz+OspJnMOZAxXg59J1jvbJe4bcoboy8wgc7oVZcdakTs7FF7peB9MBJBLBNoomTOGcciaRaVkn/XoMYrqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759120194; c=relaxed/simple;
	bh=2nobBEONwL6kYvQfhXKluqUPjTrUqFMMW0v0o9k8Px8=;
	h=To:Subject:From:Message-Id:Date; b=bLtu29PFgTJ88EHO0YbVkWLbThrqqERHSNOEzSp1bgyRZbOFsZsj4qSqXQe9v70jBWFx78b2lgVVXU0EILBiBoUigYpLt9prZcM5ACCiSYFqjFDmb7YqJZH4t8irTzv65TzxIn8pRQjPFAEZJgFogp4ZdYk93hsdcnfc4RVncPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sQBR3REx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sQBR3REx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAAE5C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759120193;
	bh=2nobBEONwL6kYvQfhXKluqUPjTrUqFMMW0v0o9k8Px8=;
	h=To:Subject:From:Date:From;
	b=sQBR3RExNzLTi+EsrQBOCF36vWpEMRApOrrYRohGhR7Vz83SdfNZ0RSbgQiQ294fh
	 TJq8YCZQPl1tN1KCd0xitOpEFMmHjQMr+HSvJ99p0YNKrQEqOSRxM8cu409IGSWcbn
	 Rk9nhlDaQtX9/alGE08RpH5yqA16AwxahGavSpEo2BSCZZ64gL6yMM8jGAedBcgvvU
	 EAPnMMVqVCt55uDCNAYUJuGZopruhuXapoHNUDnSNkX3ACmWtvU2tcQXVMTEh0Ye3l
	 TC3Q6t1ipQsX7VrTxAIsyoOMb57xrzJ1bqJGbnDV0h3fFTdio4nYflMJaWRxlEG1LX
	 UfqahUdpg8W/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0E0FCAC5B5
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175912019364.3911.13862101102463133923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd6b035a7800cb459cf51991ab903aed2afb97487dab346def11bff60b5be5c0
Date: Mon, 29 Sep 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759120193
