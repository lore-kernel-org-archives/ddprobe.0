Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 620681B812
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 01:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718762363; cv=none; b=oToj33BOXhuOEbAUMKXq1IJfcYWgHHG/pgnOdEwGSAM3tHxL+TOnK2oMKsK79wDEnJaMWia8y8Jl/Vf7EBFP1X9HXQUW1qUx1Zd2+7v1ra/u4fBFNblRcL58+m6K/+lyEx0/eS14P1Nkc5YeDgcAWUpbpCdaeYzIofcjOhHQ8GA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718762363; c=relaxed/simple;
	bh=nwaciD5++8dc9WVvSbvcKbGdyd5XY1ifkmzse6rieFo=;
	h=To:Subject:From:Message-Id:Date; b=fISq4L5C4ycDWHhiRUK6SSTDbN23OE225SbHevkQB20HVZk2MuML4b0qR9drcooAESsY1ABQaXt7x1K6UmpYqrt0sgT3yJ3FxylbcaMPgvOZgtKFF2mAeo6CUxXDNmDZ11vRUeQcDvuA2MwLtcr9eoOQrnHRHi/BKfMIabyHgtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ufU1nK21; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ufU1nK21"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF5C8C3277B
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 01:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718762362;
	bh=nwaciD5++8dc9WVvSbvcKbGdyd5XY1ifkmzse6rieFo=;
	h=To:Subject:From:Date:From;
	b=ufU1nK21MpBiQ4iMubeXF3JvHsUlSI2oTPVAsW/9zbdRd2F9miPhSr0+dP6VOK/B8
	 Ka5attr22iPzzFj5JyfZILIeexkRKDDcJpDBQWjQHnpMTvfLVezjgUtir9dsSh6yU5
	 JnjRMwz73O74Yz9UVQ9cr1JCYh2QMaa8eybI3S6PO1zoFKzCzOKdVYmuEFKdPGRbok
	 uTmxzKYBS7U9dvnJ6CtEH3HDIDsxBnuVhF5i6s7clbi+5N/yAXGFtTh3Ir7NTaOESM
	 yuWX6w+kWKCRZjCZC7C1BV/awN9qyWr65f5XOYp9LlCv4wS6acaNavaSmqR1H3vZf/
	 ONw2EMgIkn4yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6D2EC27C4F
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 01:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171876236277.8188.9071648500849669294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 058b899691ecbc17b33d03494ed5124fee286e90fc9a5f1eb5fedc3f0d06342a
Date: Wed, 19 Jun 2024 01:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718762362
