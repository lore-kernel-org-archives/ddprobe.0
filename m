Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4872E224D2
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 15:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716390203; cv=none; b=kHZ5KzC6pDm8yvPPK/qh1cMz6FG5uq3WJyx6wjjrBCDRUTMXx80OGwq5g20xz9nW3+y83W0hE21m2wcxASByk8Y5ddgni8zNTtkOT4KibU8H/0Mik4GPfWql0Cq++AmYx5NyIx1Xw417s2Eg97SzkQO4QZ4yIMEODRo7QAU7dvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716390203; c=relaxed/simple;
	bh=p4LzcEF0yeDamYM9l5AaT8+FZqYQqwzAP4jRsuyHOnQ=;
	h=To:Subject:From:Message-Id:Date; b=Iz+duGIH0waiNniPybBsGi6NjRCr6MyM0HrHyxiirQh5mDY+OLY7oh482GCHIDZAmQBWRELx2oiRg3tiFuvqBe7Xbq1FTxf6zFknVVW3+1+Jy1VM/SU8Z9isLnxMBe7k+A8eeFSJbCDVrumm1AeQ+X38ZEQM5MkTcckKPqwxPzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iDqaJjgz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iDqaJjgz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1381C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 15:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716390202;
	bh=p4LzcEF0yeDamYM9l5AaT8+FZqYQqwzAP4jRsuyHOnQ=;
	h=To:Subject:From:Date:From;
	b=iDqaJjgz0ccx0zuBQFTDdbha5VUbKGmbD3E/LUQCPwio0wC3f0xyyJyJdUwYNl0u0
	 uiLBjEWAFTHicNkDoxprSrUGkwfMyKVNC3EIUyyRzyU+VTrYNtyV6WTH6+VehC1Szi
	 SzgophYYNhSpBxnnIhsqbSe7JQ2Ginvw8P3kFsmssGG/3CdMq01hS3SibldzjzufhG
	 5EUdCOG0iMDez8/YFn6GEPlHmZAm7wRwz5+q39frdda3BlP30z0vWBR/YvCekB2nQf
	 Pr+BVyPYhV/a1iO9aG5xm5V7wV5+rQYNupD6LvHx4uwIvg9nzSf4WBmvSF6p+JScIh
	 YYUkPQHDU8Jmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA6F7C25B78
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 15:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171639020282.27908.2782353782600240098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7c53e907b15d88e46a9757135c94492f39c13c6c7d86a4e438739278af4451f
Date: Wed, 22 May 2024 15:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716390202
