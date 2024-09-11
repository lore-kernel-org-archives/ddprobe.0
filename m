Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 080EE7DA81
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726052754; cv=none; b=GnUWohuuQ9CSg5Ar3b/rMGPn7P0AG+No9LVPwc4rjOFX70Wy0zVefsPAbO+BlajWPrff383ytdtns2OnEU8qJjsOYC76Wuw4JREX4xREDDnZ5q1TEfVYlwGf3OlDNOTc1RCTiMBZCGjCAqEv+9QW5GzawV3ehKMeo7yaq1BPHsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726052754; c=relaxed/simple;
	bh=fxNrdnNj/J8ejDsNPqdxjrQgQkIwJeDOR4s02uPMiLw=;
	h=To:Subject:From:Message-Id:Date; b=XOcDdeZM45+EQyobVPojj1Moyf32X4Z6t6Jys+R5HXMTyrYEXx1jJQZimJXvZmkecRPGkTVegnBsYUXqi+P7ogT+Q7N/oNxgp9SfsToKJ9/wHhfNHbnwPBkhwLUdw4vjC2VIetfUa5LNkhbOy9HpxSh3zQyqc1olqyb3hmUwE90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WVHBDGa9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WVHBDGa9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B2FC4CEC6
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726052753;
	bh=fxNrdnNj/J8ejDsNPqdxjrQgQkIwJeDOR4s02uPMiLw=;
	h=To:Subject:From:Date:From;
	b=WVHBDGa90tZViK8E1FkxmBYBdQnbXbJAG0Dxjb/o7TvzRzP5eY4xg/7YjRRkkhO6W
	 yNp8xrBLBehYFvjo4BhjQWzZxFor5zAe09Nf6hZXZvwHusdY2PLUhU0pwIc36PZiwr
	 0BTo/CnsLuT8m7i5L0MFzJ0wM1UfXUvamMLSpVTK2Th8lntgYKuBzVkKe/EXfqsq4a
	 fg6ootbz96O5g44x4RHavIiRxNVlG6LX4AWmJ8bzLlNiiExlZ6zY+Ih+Msb66x6e4M
	 5fwkWJRsS6fGWo8U72KoBeKGHJ9rLSNG2FilLSjQpWO4tXleHYM97DDyYjB0HLuB4E
	 nG2x0z9YQRr0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B0BEE4991
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172605275359.23280.1785628637577424372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4afa7943f9d457909c14d213e98657d69fda61643bd064e5952e4e7a1cd71d40
Date: Wed, 11 Sep 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726052753
