Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0661C82880
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 18:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707505097; cv=none; b=j1X8tKe/SpxK+zC291OFQULMpJeYkAHJxFgKUkbC738N5rQM9/rJhcM7iUfuqoF0Wmpus4pi8dk0Kld9uJbPc8+gzrK+rfhDFbxHlM/KfdOLhnNV02tnxbnj8+GH3pSNT1FpmS6AjNbn5rr/zXozitdQ99EXqNRIRC9XB+JdYQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707505097; c=relaxed/simple;
	bh=Lf8miFmJNZaeQQU4Zz6AeaKuBbAp/wDsjR85LRwyvhc=;
	h=To:Subject:From:Message-Id:Date; b=bDi7oPA5TU5TvvM3ynQj0jY1JPo73OqPm468kC4s1qtajhuIaca0NHMZ9+v1z6LPZaxi8N5tAEBB2D/NB9Epy2nYmA6uuEXOeRsacUPSvjtD0b4Ux5jn52eIVoXAWXM7m+yZKlMRiVnDWWcKvGsFlAV04HN6gckwQuWg2OZeKHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JwvRNVNm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JwvRNVNm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82015C433C7
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 18:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707505096;
	bh=Lf8miFmJNZaeQQU4Zz6AeaKuBbAp/wDsjR85LRwyvhc=;
	h=To:Subject:From:Date:From;
	b=JwvRNVNmTuY5CzlHtyNhPLRaqi+bIZuugCUQDVffFQD+hKY8gDtioPgAHiZhP7LCP
	 Tm8uO2yfXLtIx56rnuRb4PJEQH8Tww/CSE5fLT7aBZPv5YoafxBFwDOGknyHqu172B
	 5tFsUmXv5cakiYaM/SYGYzEnZJDkniEXY5+d7NYj+aa+4J5VvNI3jsLvyeQGEwV0pz
	 tcok3vSkaiIqH8F1YqavaFQteqBbL+FICVo6DLqI6yv2+RVA6kpQbDXZZf8jnR+GDM
	 MWviqD8VAiNOn4k+qzWTZISc+NXc/3h3GTvCQ2egc2k8m1tbUWtg4eqlH48vxxXS7M
	 yqcNVQi/4tcEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F104C48297
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 18:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170750509638.16329.890915016744768950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fce4ef380276879d9de8c97b855681378515bb42d8ed6cf690da298060f9bbe
Date: Fri, 09 Feb 2024 18:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707505096
