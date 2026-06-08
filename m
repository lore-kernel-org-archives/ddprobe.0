Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41EC8312834
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 04:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780893274; cv=none; b=mEz+LHb+3NeOqh22UuSEsLvWHofYB+ayYlXFp4SLxonRBs2pamoC4q9jY20L6JCrqcx6lkvYkqPaztlCZm20Qa748SqLy6FCm83UaKvjQtr7DdNfIfvxMZUaJHkgMy87AcD/Af2nbxFdVvFuDNexPxnW+A+VhRQ5Sg+Yaonpud8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780893274; c=relaxed/simple;
	bh=kIugKPwstJvAGXT2aT5+5hwRDc6tyg8KRr/vvgEejEE=;
	h=To:Subject:From:Message-Id:Date; b=HecSzK4TnvEu6zug81xme7kxEl2CfvzFHnxi+VAAjiSqY64KVX87Z20oeXxK7AgmPkXhftLaPJOvoF63miJatxyZVCU/aZWp7TUlzFORZxzCJZvNH8DlIr1u0w+zBSauvyse36W/cB3bT6iRVhGVTFVhHXukZgRmsSg7geB3VQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fZbYFuT1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fZbYFuT1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC5CFC2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 04:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780893273;
	bh=kIugKPwstJvAGXT2aT5+5hwRDc6tyg8KRr/vvgEejEE=;
	h=To:Subject:From:Date:From;
	b=fZbYFuT1ehcccSW9sREoPN1h7n//MPcIFVclmVhD2UGFRG+Nsxk97wWfDpy0XOA2h
	 +VH+ECV+6kaLowAG9k4+HOotWAcMqB/v/AHJIOkBZLN9Uy9ay8o1JK4zh6apOpuXGz
	 WcKWkwgp8A8DgU7tTwLrBy3L8B91HCZy66MRPl3/299PYKmrPiLJ3JxcpdgtxjsmHA
	 c2WO+M4h7Z+d5jVUQfPqWFpbHQzL7IEwRZSMkqfZSjAP9a1MyTkLtA1COWnSR87A+m
	 nTaNM8IYmD69rdt6Q6Ly01tQRfAjqRXLVHgkQJ6SoC2Vwvf/yrMqf92I7mC4j+veoB
	 EFGeur8DLJgoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B09B8CD8C8E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 04:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178089327371.15207.13321212076687456778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5621674f4a5d14804f39ee4f5db4c79c5f5939271a83d343a1712335c072e66e
Date: Mon, 08 Jun 2026 04:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780893273
