Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BEA21DDE5
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 14:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774018494; cv=none; b=AAbKmg7wk7ok9aMceDTmCXwlHsXMuc9oo4s7PCtg8MpiVRubbWnJ1OWzC/UYMEHUMyg+sJUaa/McLAno6u9PjBi0BwvLurWWo11FFhOu1+PiCnzJUqZ/ps+Oc9BNWE8abeZ2z4+CjJL0vE8k3Vu3EjlBief0SQtOG95Uh7GxI4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774018494; c=relaxed/simple;
	bh=RM9J6odO8yXN+LLZpznwm4Y4AygeZz/rFMiNIyf2jb0=;
	h=To:Subject:From:Message-Id:Date; b=sua2Q/S2vtuVKK4cio+ZX2Eh1SkCPdH7nULrj+M11dDjy6KL0fGgLv0ZtUDBjUR9TpetA6wHdv1Av8bX56Ccc7pXUvSbzQf1Bv2tuPaMCQQEkLs2eXmzF3KnI8dqmx7otxfSOoLatP56WA/Tv0R27QxJioqJPXDGdr7I22u8Cxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dzASjGWJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dzASjGWJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A298CC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 14:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774018493;
	bh=RM9J6odO8yXN+LLZpznwm4Y4AygeZz/rFMiNIyf2jb0=;
	h=To:Subject:From:Date:From;
	b=dzASjGWJK37mcSlFyKNKxjstpN9TAD98CnkrBtumg2Wo7Y6E6fEEaKHbQu0pIOEq1
	 oCvmw/YeS/m5l6DSi0wnElppIc7c+RmHPvJfuoht8ffoYh9MJArpEeMEGpwCgDu8y3
	 h0kBznI5oNo8BEAEbzS2EkNY/+LSp28Jp+g88bvvToPeRgLvh7mINbDHxuynajF866
	 sUY4mfuvAQVhSBnFFMkZI8ofWPEr7su5KisHwzdNOdDMi1xq9+4WfxVqmOk8gcCSSv
	 RdDGjlNl9PI0e3OW3B2b9Z4ufQPBLvtgUTXW8IrXf3tnEgXNgfvJh9dXOFWnTH7wz5
	 tLINjIMdUPuWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AF21098793
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 14:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177401849358.23292.5040211666782083345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15b9d836bf38ab121a57c8ad2ed88d1b73ab00ef02e7c2503d820c0882b112dd
Date: Fri, 20 Mar 2026 14:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774018493
