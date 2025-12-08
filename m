Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F170217A2FA
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 01:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765156974; cv=none; b=cOpgvQOZLtSxZ40l2GjurbYjoe74FzHAy71vBAKPyv+fZf1z3A6TuTlhjSFHIDfk0b+NLpd0aXLogp3PA6O1+AtlOtsXiS/E3YbGCBJLPkSmUC6/3KKdJAes/FJ8mAmA8NHCp3ZIOSoCtS7kLqW8NbYf9Qg5SNSLaFqfABmSwM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765156974; c=relaxed/simple;
	bh=A651Bf0/uwAJcd6RbuJBp+vLW+PgDiXFr8MkOdrR2P0=;
	h=To:Subject:From:Message-Id:Date; b=G/PPtAGf88GOVzB3uJF4WUMIB6sXrfZrDd2lRSElfiwkInhHHOU8h0HURmxchp4ryyhdynfX2+eUIN/DWZ+wbwNz6wQGQru7vbbLssMazh5EVBWTmT09HhEEjHPkDq5W+Of+kgrdY/S/pZ+Xf484rj2DdEnKNmQrMlK0YPzeX7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qsOxrbda; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qsOxrbda"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9EF2C4CEFB
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 01:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765156973;
	bh=A651Bf0/uwAJcd6RbuJBp+vLW+PgDiXFr8MkOdrR2P0=;
	h=To:Subject:From:Date:From;
	b=qsOxrbdatg9ZG4j7NmDvGksSuwjGZcR6suHqV3yJ9buZ/bifL1HWYeSl5ECd32fyA
	 +tOldKI+8PikvNQkH4rrCEmVHaTK1VOEME0yWBuP1007V9q1mbUhjgqmvWs58PUf2/
	 w4J1KJqv1Vzm9qJdztXDJd+RKbxGbu9d/K8R6YuPbAY1vUEuKyGmaGArwBXYkIdSSc
	 fnfN+8DwTfoak6uBwfNRdpr5GO4GiHaPEjse6Uwtbx217iJooeZD44pLF/l0zEd0j3
	 6SFsVPV02WS4Dp91Hh16Ad2PGmvlv3Ve5p+aP//eapF4PKZyP3PRT1TvON7uWYcB1T
	 uYvbqpSIX/F2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96685D1CDC6
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 01:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176515697358.8906.17555840995483675923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6e63d3ce71610af8aa5ac298412d4f41e52ac3b9ad2ce6ecbb24fc429541923
Date: Mon, 08 Dec 2025 01:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765156973
