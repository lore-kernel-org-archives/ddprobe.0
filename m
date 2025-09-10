Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15E9C264A9C
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757500794; cv=none; b=fbJmChagTvwN0W4opxLkNkk1K762b7sVKq2Fp9hcrCkkd4tqCBJxnZ5auaODIiEuOAgj/y1l6axZERt7raBCP4PRMOhMUdf/cvMg8pb430r4BOI4l0SmQ5/mpYLF1//80wIJ3xnWvJGaTFmhFv4ZZMVDYfMjPCAVe+KnUUTeh6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757500794; c=relaxed/simple;
	bh=68FDCkOjQbxuv+JWCMxs0qrIc82GEX1COqLeX3z3CKk=;
	h=To:Subject:From:Message-Id:Date; b=KnqeQvQIGCvKyXfQeAiT0g39uq0yGNVEX+wL+K32iCA8lg4oOeyKc1iJqbWFvSKZ7lQoYUSkm+VMBmw7N7ydcmoW6tcQpSz/KE+h+f795nV9ytZJ6eVS9SUfWhvkEtATEKFFomrf7774KQF1qDU8jnXFYpFNwl5xnvGoU4mcUIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cyFAwK2u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cyFAwK2u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D45C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757500793;
	bh=68FDCkOjQbxuv+JWCMxs0qrIc82GEX1COqLeX3z3CKk=;
	h=To:Subject:From:Date:From;
	b=cyFAwK2umWR8q4sjH0km7pf3q2cg7VuTaR28g6BSeLEgzox/oma+OKGf7Q+PQORGl
	 x2GrDSBF54diGORSrZ7jNcrGWVpdlujAWw0dq6po+w1DnafivrgMqR3r3jNlRA+GH0
	 qtf2Sb5nRtllGjYVxUVvq6Z44CNHgL3z5ouENg5Rhn0U8GZ9UM4ou1aEYRGIW1jbyF
	 BAgrm67qyWh31s/KF+WzsEoDy32j5aypugNhwVAuHPdoK27a08tWsbLcsEbieYOhTG
	 4bdX5Am/Jlt4REPZqxYVKxUrX6gX/cJW47yEARF7IhnRxkJmSf2HIiibMIogI/Uj3G
	 bwIjnieToyDhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90575CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175750079358.14962.1111787455924167489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 433a3cec438d0574083d6bd256c1fab2ab8f0118b8392538d5fb8841a0dd2cdf
Date: Wed, 10 Sep 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757500793
