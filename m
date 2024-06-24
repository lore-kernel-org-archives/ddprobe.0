Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6995F107A0
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 19:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719256343; cv=none; b=NOuU4QcgwGRapkT/ntsm+xI7MaThze2/h1faOIBzs3deS5qrKFHsYNmME34H+ywhdlCn9PdF9vyZIdxeo5YRXg9lzNTto7CXp0+cvXkpTqnBh/E0yxSV6UkxEOhvu/DZdr95fv6oM647oMbwyxDswvZZiOwr3B9GzMTkEV0ZCO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719256343; c=relaxed/simple;
	bh=X73udWmMqXJVs8SShlkdjKSdnif6TKO29GqnOdfcnrU=;
	h=To:Subject:From:Message-Id:Date; b=Xuqc/y/wsQF6OOG/Z2LwOg87xmeSTueP4k8fhiGmIlEqbnb/SKf77f9H3TQ/iFGnWdeK+o2e0e5p4fWZG8gbWfR8dTtMTV1EiMFT2E+Gp7ITTTM8+SGgYhl7F5F2/u3h2VSkrA11lLIB4b9n11v0lOyNxmbOAxrxniPu8l7w1n4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M6u3Dtji; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M6u3Dtji"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E895EC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 19:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719256342;
	bh=X73udWmMqXJVs8SShlkdjKSdnif6TKO29GqnOdfcnrU=;
	h=To:Subject:From:Date:From;
	b=M6u3DtjiKIryZFW/cf3iBdIhMTVXDMmprNaMMUScumDsfumKHzTvBte/CwPm5u1KL
	 51gA4cIvOYSHXbLv06/3bJ3g1BKKupZ62IVHxtKS7Nm/qePF1/4TUSBTVOv9ijVLdj
	 Kbqa+gOOywU/4OYyypl4zqupaJrJQf1neeqwizfBUOCCCnzs5+oDPFiucNKlZYVfRX
	 nNiWdICFYfgLvP2ati3kG1ZOCYdeRzinFzEBQeFi41+1JJ3NYwf6pheWvWHKGBf+D1
	 Xedr+AVUQjQEz/eCkHo+uBtVUW57mOjW0spzQhvpiBc7l+JzxgqsSFcTTvbGbAxC9D
	 7aWfY/GpbbxSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2BB1C2BD09
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 19:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171925634284.27662.6500135048783654722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ac4836384ac571d597e034cc53fa2a6264ae15f4f48c453eb4f520dc9530e35
Date: Mon, 24 Jun 2024 19:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719256342
