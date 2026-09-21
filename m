Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A2B428C009
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789994434; cv=none; b=LJyaOW1isvchp9Ll4kJhBgeXN1KmUpi440domV3QkJ3fA+GEYNq/VRiZqeVGRDHo8AAbOGB8Ys6yC+QNPfQJWKRWg3KpfIytlSB9Pi3GLcBl6qlt5+yPpKnuskkAgGrju4DWo1QV+lyMf1x33X1oTel7cuVw/eM4zYe1pSrbqiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789994434; c=relaxed/simple;
	bh=Ck5KlAYZPoeuGYb0WrUVo2EKR/rUlYU9siw+Q6Ei9Io=;
	h=To:Subject:From:Message-Id:Date; b=uFhk7aqwXOw2UM8qks2JCAgpPpH1pd0romLKMU65K3qRtQIeOQvc+bDX2vU2lQ9ZafyDB0mAdxTpHaz1Uz6K3GkPYKkeiNvyVW6xLpQ59AO34rLTCBn/DAf+wUjqJ7TBZyyrHrV3POjD9kCi098aRG1GgJFLp9/SitGAjOYM9Gs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uaHTraUm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uaHTraUm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0629C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789994433;
	bh=Ck5KlAYZPoeuGYb0WrUVo2EKR/rUlYU9siw+Q6Ei9Io=;
	h=To:Subject:From:Date:From;
	b=uaHTraUm9qxI3RZAnCQ2AH/gl+SjskEB89Twk18ICVnpqPJwT7Ax4jem+BVS9COx4
	 pbeZd6lIGjbeqqs9N0NYiLt1SaaSRcbjkevECuXBbrZbR9x7n3j6VM0DzjKiGMlGd8
	 AQtnnfGFq7IaesglpqfdcAKL6VidToNFobRIHbC64flQl4ix/KfhVkFIT3Od1niNZd
	 M3NFea8K/64GbgXyG38+T/R1j/wOCervMZR3G+5p6Z4ZpuAl5j53IF5yF6PFLcOdUP
	 qPrIz7rW8D21dOMYMGxa32jPoQOWDTXdJVxq3j3vijPchMaTYt8oHKOI0HN6uUxhUg
	 n1ABO8d02ZZqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCD1C982ED
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178999443369.6545.12166901608064451112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d086c0e305b28fb39594a3139b0599913528fb43189d11ec5636af5b0b2a2060
Date: Mon, 21 Sep 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789994433
