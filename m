Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47A7D302CCD
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 10:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764929574; cv=none; b=p+CZPNQCHfUjocqAyfWKc+6ueARBY3mW7E5GJ7taMicRVKYTogefDDfA6eGjN0EdV484cXBrotDlE+fJfEkzdi6KYhajtYgCM+50XLQnBz/2iKHYECkQMvu9n1D+/myaPTiT7pFExYY/6SeRxp9xDBHsAfdJPMUJdamjZAdx494=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764929574; c=relaxed/simple;
	bh=/0z5cyGpoLVfpIKkKelyf16bVeaZnyIGeen168PopY4=;
	h=To:Subject:From:Message-Id:Date; b=NmPBx7zDRmZgi2Rtb0gQqO5P17BVUMHa5gji/cJsL9F3YTIqJxcpEcki2Lgj1mrd4gL+Aeaw2cXiU81Z38LDZGnwzYwSNLovjgOa5QD2vRY/f8K2yL2RNbvUB7SMuKNXmM3ndnHss023LZmTy2Ur/4isA8Lqhtn7Swm4NTto+RA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JKu3rt1G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JKu3rt1G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42EAC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 10:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764929573;
	bh=/0z5cyGpoLVfpIKkKelyf16bVeaZnyIGeen168PopY4=;
	h=To:Subject:From:Date:From;
	b=JKu3rt1GkrgmlIjZBru3Mb+jgTFMaOUGi+mvBC0sOOPGro2YJ/QUBz0BuwCoWq/K2
	 SBZUapqexs5/4wHfiEHIDQl2tjoTat9WyydaWnbcz4gogiJ+7VoaG988WpE053ixrB
	 xd+8re8QhXsZUJxa181Y6xDXTy8NE4es8jIS3qTTg5yba2Yugiu3oWO8K7PasQ48Hh
	 vQrhEtJA3HfPgxt6ok0UJGOdlFZlsxekCiV9JqrLCpyiyQpusEP3h//kJDFFRcD25c
	 bDG7kRu/ONLZa5BOImlB32IFXcirqqhb7y12HEhiRH1oMfpN4CI6IPKv6awdnkRzmv
	 k+uWHEduZ8ckQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9365ED2F7D1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 10:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176492957359.19907.5205940528846973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9da38f4388899939563a260eb44709d0deba3f14d24a59f89c7834f3f354b3d2
Date: Fri, 05 Dec 2025 10:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764929573
