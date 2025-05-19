Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 493E3284B5F
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747674594; cv=none; b=ksK4q/BDT0eBP4aeh8j90dezR8jVW5fT0QkwNiEz6vzPd7WvuEyGzAwxFyHJtmHcNkp6Ij4bIGPK33wCqFHTZd3tZB2CxaoDB/VjXbyeWvz3iilu49NFl0MQkrGUgd4e70eEdX50WB/kkhU/8XSKgirIR5+jdzQsxmidbjjmqp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747674594; c=relaxed/simple;
	bh=rpXtm8CFO1KYjLREupUH++mFAxQRObGUDvyPlhpH3IE=;
	h=To:Subject:From:Message-Id:Date; b=d7ty1chgWqV76htNUZ7Otfm2LzsuwxjOB7WLcIUMX5ANcjRM6OVEtdoB6S0c9EKeTMOd04pwelkneDJbZ7548AgOXcgav5NbSSnbGwvu0t/w1QSAehEnZUMQShsZOdhlNPMk1P7nfWyXSFvB5/K3nkhWUL+FREVONIhPHRNxbg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s1isEeAX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s1isEeAX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F1CC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747674593;
	bh=rpXtm8CFO1KYjLREupUH++mFAxQRObGUDvyPlhpH3IE=;
	h=To:Subject:From:Date:From;
	b=s1isEeAX+ExZj+WSpyjJNEzGhWLzi9zORuto3E9poGTsAdztrnSMu0/6dJYeVcRNS
	 Y7T1MCMcH/eehaDUjPMvAO88Z26R/mfxdGdvp1SlsSrMYt9sp9CaQ4UidV2R9ievj1
	 IEhIpAexvnzPQ7V+CsX9ApAjUM8dDB7UPz5p4lNZmzCi5oQlrjQwtW2tac5ecbC1/i
	 cEkCGYp9RAUby28vtbHj8D+qdCtxvNzk0CddFrJgld+Bg6RTGFVJDhqRn/Ff5QIjcV
	 UPLfwkOfp+MGjIcgg0gceLdJ1FNkFnwyQqwapbomWNUqOBXmgVoYJbE8MZxhtq1S/v
	 oPmsc8ZBgY/Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA7CC3ABDD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174767459357.9619.4698682363207841350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0f0d4fbcd3432c0bcfaed4d7d1671c8b2822cf90687331413550289def98f8e
Date: Mon, 19 May 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747674593
