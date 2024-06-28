Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52E33158218
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 14:04:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719583463; cv=none; b=LUlsGmE5JdmDZ5FI2IIsXmPp+GPo6aGIk0K+kMI/Ir4XEsNuR8I+1sY0EB3xGx8akcYUnTsSKClcRoVXDYxyfmLYGYC8YlBcO+zEa6RQwPB75pSwfc4UP07VVJA7fBlzkt18kDTd1yWPSUmoxfPyIL1alkkV6xmPg1qqd6lz+3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719583463; c=relaxed/simple;
	bh=MYHvrDyd7PfWboWKVSxUaWtnE6vQmXwb9FVUUms1yYc=;
	h=To:Subject:From:Message-Id:Date; b=P+aQd6qo3S3949PMBdKYiAqHUDl6rOEha84hTPOMS1xnmLtOHTMPYd/mYNPQKCg6MG9HmsIQOUiORDlAyf3qIXgJ4yD98KBgyiVD8ai8Guk7Ewf1s/4uSaPfFUbUPxtkV5lOLREtqbR5TES/x98ale3sBIq93b2TNkIHg6vbgvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cyAr6Crs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cyAr6Crs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3DB7C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 14:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719583462;
	bh=MYHvrDyd7PfWboWKVSxUaWtnE6vQmXwb9FVUUms1yYc=;
	h=To:Subject:From:Date:From;
	b=cyAr6CrsdUasAhEI+Oehw3XErCr/AxU7tqQK3OC5envSQxPmA0bQ52fjRWmNFtYSB
	 /8MyfT0/8J88kYtawxPefxcm66MoGQoie8q6XIROYu+9Tw2JFnRH01bz0ySlLDGQ7s
	 BAcGs/pyTerPuE441Q81/0GTPgdMo4Pf67gUEA+8sOOUZf14gEQYwXfjqPM5LDsUkf
	 QVR3C0adstD5YHLLXs/+KTFEUP9PGheFYhnfRKIg0R+9jSRdheWhe/4tvs+XugIMF5
	 HpMEDZIjtrIzt44atnJiCv4YHQAal7u30vsf2J0IrJkUHMtEGd5FqdDojVesqiunN/
	 Y0JmTswlEEzaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD664C3064D
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 14:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171958346276.13712.15111778130383352836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 510da51b7bf3012c2684cf99ad46a113089b3ef65bbbef856b18a55c7ceb8723
Date: Fri, 28 Jun 2024 14:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719583462
