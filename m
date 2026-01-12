Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07F6C264612
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 09:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768210434; cv=none; b=b3uf48sEOMNJqqPmpLkFoJxRYjtH5GQSg17mvNEMDzzsy5MQCoAGCKHGGOV2iekpJsEy3O7rq6P1rEA+dthX3aXXxUnM4NxzwUmrYbleOLyFANAbgvcUpv2JS3tlgnDcT3hKKKURPWsol8wgIQLRGAGqfnzdw5XZBNpGYCM6Gq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768210434; c=relaxed/simple;
	bh=JezpJvHq1HmSGZYPH/2ao+7zdJocarkl8Mc5Cm7ja/Q=;
	h=To:Subject:From:Message-Id:Date; b=QQk/612XLOCNLeDaCGZB7hYWrU2I1U15a8DK187DQ/NSUzaxdG21chWdV6f0v6x4Svv3hZ40ECEpHg1NwC1jXZ/z+zPjVQ8nyc6Uh554FYQHTUHQ+QIIIFvsHgWOjpNT0G6KQtMHGjU1rSahUWqdPGo+iCWyAHXFnRlLkiNzGPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sHtO884Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sHtO884Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC355C116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 09:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768210433;
	bh=JezpJvHq1HmSGZYPH/2ao+7zdJocarkl8Mc5Cm7ja/Q=;
	h=To:Subject:From:Date:From;
	b=sHtO884Y8j/PWSeOaySEfuZuYQBlmEEbMsLWk8SA9ZZwVeTz1dEE4UmzBOKhPy6SR
	 yHGaLgh93Nd6mP881Tx0W50k3N4oxZ9QSIA8B+BXXX2KR+3l/3ADqLlbg2JW3VTeOd
	 j42IEZ2+pF6Mva/lD+vBjmV5LMZFHZWdlQh+A4v0nRQlCC/ZHmIGiJn6qc+YKSYWoF
	 skm82oS+A3devivvKkY7Dy0HXjFv3hm5vxbuKpc/wL6eOJ48dVxVwstByxJdtCz38S
	 J7umPHIVxl4Wrdu9HbovxysStBbNUjmYc8fqdaB/ZYuyaQkioSY9Sz20E6gV2Oc/gm
	 eZ6/btIafLd1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C03ED2505E
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 09:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176821043362.19242.13792212612451484303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68f9232d8bb215b421f83641d9d7e7f4b5bfd9b3fdd17d396b2f619739c1db73
Date: Mon, 12 Jan 2026 09:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768210433
