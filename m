Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B11854670
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750735194; cv=none; b=QXaAddgLmsr5RKJadSaPV/jGv9POkgaIQdzahF7jAQF0D5ijtskyDm1v2T3m68E7CVBeG84I07EWAkWFD8poe0/q3PJhEPFdwliQw/AwNpo0WThVoE9iDf7ILWgE9pR8cjiHWNTkVwqPZCgOCx7ZTKvwmYZF1ERtz7u7Ir57+vo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750735194; c=relaxed/simple;
	bh=RPoZvtTqNDXfiZMiSih7Vwa1Rid+6etAWxZCdYb+8lk=;
	h=To:Subject:From:Message-Id:Date; b=uc8S9HUvX0m92aJ3QjOvjHFOejTZxE+DnnsuzqTYoFnjmMHuDCxEj0Av6fQOAMfBx5iUsg9fD2aztazdlSHHBbAsCGHebFskL22yM+zGHq2WlTkM8oYcuyeNqokjGjBgWKsnSdwDVbhYkRtNfrUKlowmodgMmj/EbszJLyMveA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MMdjRl0H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MMdjRl0H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A4FC4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750735193;
	bh=RPoZvtTqNDXfiZMiSih7Vwa1Rid+6etAWxZCdYb+8lk=;
	h=To:Subject:From:Date:From;
	b=MMdjRl0HmwuIBycx8rI0Qft70ShzPT7M2RZNiFV7Vl0r1jRl3huMFRCSuzlYLQ+pn
	 d5ipsz2VOpTEXzryjAWtHB4ajszJWuvwbG26a6Nx1Gh2xjEWEskATVKkiY8GMBwxrs
	 6KD5haGzQDN1dOcM8Aiq5Cy69CI6eBtnmVVHHfBGMseO6tqWCTThw8IqBjwu7HFcXx
	 yYc9yo11nsTjSg2zLzTO7RA0OZx8P1SXhKONMe2ZIKKC+ZRqX+Ha5SB8rsmEPWk1/H
	 ZuwGFPlqjS1kw9+ZgTy3nqmPyE1xbsDCDIRKY98kllN5i618/EFp/ORbChxl99V8iL
	 KeCWVEXv9enWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B0CC7115B
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175073519357.10129.11628218899478684986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4416b272fb4c4ea861bce5905cf2c51994e6ade71b776d6e260438d97d91c140
Date: Tue, 24 Jun 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750735193
