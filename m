Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6440D85624
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 08:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719996323; cv=none; b=UKCG72sb4O6cXowNgy0Gt/fj/3bdIysCJw+nd8g1/r1n0k6tbj22drkAP9jVuGJ5xXZygjBMz2n0Z1pkknWACRVqwp4MHmPimGqdSnDc2ep79gCsj4+efdUKLgC3FM6j0ZzeithUFqLcAKUqKy2ifFdmV7OeSAl70ckZlM1pwOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719996323; c=relaxed/simple;
	bh=t6xzLAaBEagE7TO9dhM/MHRL55zOT6BR2WahTRCvfKk=;
	h=To:Subject:From:Message-Id:Date; b=LVbOi/5Fj7U/9nIOKwRgFnFj6nEPHFqlgzWORjYZ0yuf8djgPs+FJ1OXSoGdoZdT22fJ6sB0qrwtyXv5zkUB7v1vgID0hubnFRaabQYZ71mHFrjD4Eh57PD3kLgy+bZ9Qc90FwoGH2vAfBHr2zlXXZsOwEpPPy2R7Y2T2K5CZWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dGwkrldu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dGwkrldu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3940C2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 08:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719996322;
	bh=t6xzLAaBEagE7TO9dhM/MHRL55zOT6BR2WahTRCvfKk=;
	h=To:Subject:From:Date:From;
	b=dGwkrlduIPTChkOGxzzWyBK+RiEckWk6+6WZ+SIuKmDO6wh2uBX0wUuIJneQmXePy
	 QhBjWQbUW1wcU2VAt5AqxFllGfH7BIcfq5JTLqHRA+3FxY0QXAmWdnyU5iU8n0lTPu
	 JTKnaaXgNZ4FNKJUAt5waGWeB1uTgKrA2FpnE0XYWIkGht2rNyRpL7oUZ6+gn+MtQy
	 ZpwKQEmQvAIetzf/arKd2XGGxD+aSYYveDMVOsA/6MmhwW/+p23RneD48IOlmy1KTo
	 L3dxnRNECZje3psHO3lAfTYRtelCqsZiXtpUrwd5iQzeJ4SZ320vCrGmypDmQDvbcd
	 FBDptadvRNkcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C03B2C2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 08:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171999632277.22344.13283578889463844131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93a0b9df9b30363f90ac15eb8ee292a4310cd15081d698a0e19c36908af42006
Date: Wed, 03 Jul 2024 08:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719996322
