Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 386131798F
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736907954; cv=none; b=F7ipnc+ILapVfaesk5ATMn/ks+hnUV6PqHGU5Hr/WHKHwzp3YdHzflbSuCywCmYqmeD308bx5x/6PdlbYqH7c0nDK52tLdXtSnrRNAlahoCuLYXU4iHrdm8aHFS1DigbEIiSe1wBgLDjI2GjF26xZI2kc01bQiZYxBH5pIYZwB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736907954; c=relaxed/simple;
	bh=kWKE0YkK4NuaFBnaqzI0+8am17RUIBQRWwdvFjX9QaU=;
	h=To:Subject:From:Message-Id:Date; b=sBlzdPdkMn+9k5mosV7wG1yqlSjRvBal94LGvvJ05Ru3hRNnhK8xfRsUojhZkaRwA1WtsBBy3xEGtIsZhlOXe6V4zGMKITLTZuO5m8OMPZlWPBI0HqzeeWUoUWBJSk4ZV0K4dYZv+fxotGCXnAGt5I0xB2TXygcB6TWOGjM1PYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lQuQ2xLM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lQuQ2xLM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE512C4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736907953;
	bh=kWKE0YkK4NuaFBnaqzI0+8am17RUIBQRWwdvFjX9QaU=;
	h=To:Subject:From:Date:From;
	b=lQuQ2xLMxkUgXZSQSTGnhs8Vh1CluCHBA1v8uKQ55xJdqocfR5oAMfCHj/rczB9Qa
	 RGsqhziZFfyy/ETPNxejOTHN1yozmD515CdNS0smDtoGsEvbA57eRwKHDXo3qGnRmR
	 EGq73wrnvEBSV6Nj8zf+mU3Q6sTqhyox7J4BdPTrtAvZwiOz4XNuUUK62shlgoa/KT
	 K7ZcZjdaom0Il2tk3JKfB+b3Jxk/OefA496cS2Eg0IRdVb4rNkwJVcg6e0lk1nyAOg
	 b0xSB/ujf6fXvm0UH2akMKHOVjIAogiSqNJo2NtMCl/0wcuHEFn3oYdnC1rKDYdJ/4
	 aC2+BCIYDu0kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D2CE77188
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173690795360.4076.2900519093514842304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a784ec848b1f90c164a4e4c9784d9446030bdcee7225fbf8fdb0c35726e42f9
Date: Wed, 15 Jan 2025 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736907953
