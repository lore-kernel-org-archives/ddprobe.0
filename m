Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3391718F2C3
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726728954; cv=none; b=N7Hc0EKxCRL7efRH4+CgcvSLy0s484M2ogepcumtI4q+glzDNbwDPmZCcFQFEDFHd9L3O0EE8YjRfYNnibnnAEw5F6uAk516XBFUMX0MEBcPTjXqH+CPAlNUvwCuS9U5s7Oh8baVa5fyJdz5RpO3Z702q0u401ndb5twjbDNA6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726728954; c=relaxed/simple;
	bh=BBafOy7iP/Tyz88mnWtxvvQxr8HXc6m493dBXkgAQUg=;
	h=To:Subject:From:Message-Id:Date; b=iU8q9o+GBMkilVQvv066sBBjYh8SXIGvebau2soiJxJPnkb/Dsdal4TY4EuOB44o1YBe4YQSgWIhp2UZUrUlt7Gv7QFJj+JKZS7c9ECoEt0VwzQ8o3K/+T3p0flZ1+FoVKsteKymsiZttSrlRcoG5sTm3+OnjrH/Py1mjSCAaSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qNr5bUkk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qNr5bUkk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2366C4CEC6
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726728953;
	bh=BBafOy7iP/Tyz88mnWtxvvQxr8HXc6m493dBXkgAQUg=;
	h=To:Subject:From:Date:From;
	b=qNr5bUkkqT8e2s7COFTyfYU4UkpqqysVWiwhorexL+54Z61BfX32K6yk3fa2VXq/P
	 8nqoncZTGo2ajIzPJC7yB8qvM/cbNgvK0+5ogwSXU/M95mTs2H37Y05J2OhrzznOQ6
	 bMvij9/rYm0xF8MSEjvygKS+6P0Es6+3GDr+6oxYoFGv2Y2WyYKG3j+JRMGhmgyvIe
	 VTSp6bYe4iXxwtuFtk/mBzGNggeYKEKfRv+OWk68NcFPzzuf8M9o4w6uZVrgir00KO
	 4keRSxCC3/H3TSPZzMZJUCpdr63rCiXQ7mKfYXDGRCgIPsxPlfAs4qAQowhnriLgKL
	 DDXLMVE3MDZ9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940B0CE8D4F
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172672895359.582.17702264561771792216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 176ef08cba9bf200fb3b57de26cf9750b34ffaad91e4dd99f05e6b09963a39f9
Date: Thu, 19 Sep 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726728953
