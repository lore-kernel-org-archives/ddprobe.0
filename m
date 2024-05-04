Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A7AC4A35
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 05:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714800743; cv=none; b=SH5p2spQ0/sTqOlljuwnOruU56wKypjDF65W2UuSJcZbAVeoBdXa9x4vJLPrike6VdrqDXcxyQ/krvc5ArVaRn2We11DKuM8zrILyCLHEbpLJXsRSrAjdE7Tuit2M0xgA5npx4JcqkFu3NkQxPAEul6rVXZDR4VNoXpZPgYhmzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714800743; c=relaxed/simple;
	bh=Bn5bWwZnxN/tFg7FjkhHEPvPPwVuNFLgPLfstg6sujU=;
	h=To:Subject:From:Message-Id:Date; b=lMZRJWjPm8PxVv6tK5FjzCo+Mq/fUgiWnLDhNBVydiNs706fxQA1N4LH/r2FA664CowtMAKiAHum326vIyVVmPjc3cmpFtMAdTOpXZentTmCpxNmJMSwSeUU5fFzpbXnP0JlBB0UhXvzMk7KGXgAzX0v7DkeY7z4T/c1jJwaapc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nqhm/9L2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nqhm/9L2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E030EC072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 05:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714800742;
	bh=Bn5bWwZnxN/tFg7FjkhHEPvPPwVuNFLgPLfstg6sujU=;
	h=To:Subject:From:Date:From;
	b=Nqhm/9L248sy/TW5AFcR8uNswY06qg0YITAJ0KDZmkTf6gtnCMjtHYUIzSftN6CtB
	 3WXMZWkjULb6jdRr4BnukcQBNLhvGK6ZM7m2QiBo/uvUHv7B5MmRdOQV94eYkLFu/n
	 dwWA0PXqGy4AW6hzLFie1lHjtQCciYV7V3MKvPxLSaqogRmNNc1T2PJZChSI38tBi9
	 1ZmBrOuD2VyvbqyPJdmLAQlqUY31OWD7uAS+z0FhJLpSCe4Pyas58LWaNwpg8OMiOc
	 rWemF1EFZhJXyItGJkPJ4pgm77rsSQjfjpaG5ARaCtyWdcONHQvLECiK0lCktWO1vK
	 v1Yh6VBI4QPJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6962C10F1A
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 05:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171480074277.20675.16269555994098992347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d612b0fc5b799d8abf55a5fbee7f9f39a5a42ad9046ea954bf9585873d7ff1bc
Date: Sat, 04 May 2024 05:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714800742
