Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22689389E07
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 08:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779958354; cv=none; b=jp7GwDsfZRNvwVuf3Nm9phpKzPsFI4YYFPqP9ck3EsZf69rOj5pAX5bLnlfh309hPawNv8UdkZtlKWfbJI9/4uIIRrUZqHxr7Bp/mcOhKo3vY4/vdnCyjjhW8niUnMO1tAgFfID5RWifNTUXOO8UKo6ToLs1J7Ytbch52zohw2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779958354; c=relaxed/simple;
	bh=z/AnhILmqNz8PSP0CSalYuwdCLP8NYcUgGMDrEif52s=;
	h=To:Subject:From:Message-Id:Date; b=NYT8mivPm6EyTwZHXrs8r+m0nys8EeraST5msl7nn1PdW09ggPXLvcr/+xMyQtYlPySc+udM9fgeCcJutqcc35uUpEB5gWoS4x6XNFE1OfZurSZGd5jE6YK5X9B1SBiGhUkjonn4bCS6/bBgahC/7r7u3a3fGYeK+XUacBIo/cs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JmisfsUu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JmisfsUu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFFE3C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 08:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779958353;
	bh=z/AnhILmqNz8PSP0CSalYuwdCLP8NYcUgGMDrEif52s=;
	h=To:Subject:From:Date:From;
	b=JmisfsUu4ocD0tSp181sLYw7CVl7RLaeeYAIK5u74fZ2YrEZdrLURRHMzMHxiMgIE
	 lRVhZbaJaT9toh8hR9JAFBfXHWsBcVU7cDMlw8CAkPQz1J2O3zdIP2T336CUzrCpRF
	 lTrDBkBSgx4BNypHfQ8st9jWFpv+JpDw2Z5WoR4Bt+3oL2n3a1o1rG2OFl8fK3AZqv
	 8JGJHtgCYVtY8KJ2bALZVjyMiJ9IJfEwCk3/HGhuW/8TE/XVSq0D6oLlbSuZUnjbaZ
	 TWM5NIrFR4aeFqVcJSmvL1/NGPEy/jUrDigCBpnBHvd75k7KckkRrURqkxPbIs+oTN
	 Hb3sNeNexwz+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8FB2CD5BD5
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 08:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177995835368.29895.15551305629360899071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 460f4f360602361f3b40714aa0ca4b8970bbb0f2530408e0825bfd51b2cefdae
Date: Thu, 28 May 2026 08:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779958353
