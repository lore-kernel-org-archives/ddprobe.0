Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341DB3D68
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735819554; cv=none; b=AAhbchADJilBbOFh/HQaxCa3pKG9+wfOGMfZI3ZPYwmPNThp+7zOakf+jS4d0any7qBjug2NUhVGbRrXWJic9sCAR9xdiG2WllTzbex58cKZaiMBNsPaZu97jMSDZMN69iiKSrrjJcbwmfRV5wKnFo5l8q7kl4nuu6i1xrDPmgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735819554; c=relaxed/simple;
	bh=iNFQ14PdihMySINK2GjhHpG5NirX9jRvBrPJxewpFo0=;
	h=To:Subject:From:Message-Id:Date; b=DkWNgPnFdghmbozIatLKpHqGBgrgTZVhlCOVfv9GZyJjAHwEEJgp7dONorqw2qBWTD1aaxGOr1AEUXz6ZKpaRCE9LP/zuStaTKqyAhTFDAMRWB+eLGtzBCVAyFvjFvdoku9sS5KAbm0EjNVn5VIeX5iflBgvZmktH2E4APaTur0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MkAwnjrd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MkAwnjrd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAB20C4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735819553;
	bh=iNFQ14PdihMySINK2GjhHpG5NirX9jRvBrPJxewpFo0=;
	h=To:Subject:From:Date:From;
	b=MkAwnjrd5ZA6esCKrZ3vZnMTyOrp1zV9FsJW2OX16514sPT6liMyCVnrT9LYzzCC8
	 6ZEoYKASWvsxTutMkEzMpaZg2e3Jd2JvhGfVYg4YhBFOKj5TwBtneMemlOnqE367E+
	 e8jes//6jiVZU1DrY5CNQvOAQATHaqLCz7asyyLxBou8X3LrW6wgHCwu+LVMzdAlW2
	 jNvDdrrShj+EO5fsIWrCGd3uiI3l8HkAu7/YxHu8Q2nnaos9ANLN1sA0lLi4AH3fQ3
	 P8BqqpGSz4776X1diX5ilCGhFNIbSiAvU0X8kw2ohbZwpuetQ/j3dMfRcO5ktiFAA0
	 rdz1p9gMDnA3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C1FE77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173581955368.5884.201775188787775750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3813d6a16558031c9dd0b8178f81e928a41c71f6ad6f9e21373a6a7fae0ae338
Date: Thu, 02 Jan 2025 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735819553
