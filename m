Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 193B6482F6
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 05:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714541543; cv=none; b=SWqlOObSfBFejUpOdkO7+q74ksuwfs1LIRVus8x6Sg2y85jU2KWlR8XHp6YHwgyAivMyKa1nglFZ+NcA/eLROVF7u3YQo3kCPsBmLylYtPNcZaRC9voKML8EP4zYGTAVfq84walJmBWy+rg95VckPlTdmPzAEUqCCVzjMJ0gAy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714541543; c=relaxed/simple;
	bh=n6k5kHvIgs9ahmsTzNY1oZ4DWhwKBbk2FQK35HXbOxE=;
	h=To:Subject:From:Message-Id:Date; b=nTmXhgdzt6NYab+EC4gNvDWxpN6ElR781XzdM3NbsLs/XlQWcmO4ZNQqib6j5EdO61wXqV+nkpwFBCngN2LVWIsEUWrtEeRZEf7rh8wycE2G6OU6H4Nr6FSfbW6EqTNolvwO2vdn5FY7UL+EYBC+fCDaV8sNk/kGJjHquVvJR3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IY3EkKZH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IY3EkKZH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC57AC4AF14
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 05:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714541542;
	bh=n6k5kHvIgs9ahmsTzNY1oZ4DWhwKBbk2FQK35HXbOxE=;
	h=To:Subject:From:Date:From;
	b=IY3EkKZHh9hFFQ2ox3cmz5gXEDWFM7lGe1RTlJQQUSNve66l2yuMpVA3Tpgcxbucv
	 uKxz+Pg47Fxzr9ifvZqnxdpVuMRnbEHqhmOgabKRfdqgAXkzSRD5auZPTEI0uBGoXt
	 9AeC/jcoSeg6NMFWH+NxtotEVO2CskRcfypNcomdZzoYA6XlduPe37E+p69mgNxwWI
	 0yfAFfkQKbYPVy1qBG2HrAs4It0lPSQ+VWNdyGVMcw896IbchW7CZ9a/CeP9p4rJcE
	 +7vydGFcej6E9+ky1fG9VL6Q6qXbozhCd30qjZ9ohtXAO2UdSlJ2r4xMxxdQNTZE3b
	 68CoACvTK6pfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC36FC10F1A
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 05:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171454154276.13934.5628549622239361304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ba4299b07f72fd623d4c03d16ce926170ab874eaeb7aa62cd98597b77b51bd8
Date: Wed, 01 May 2024 05:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714541542
