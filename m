Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270D1205E3E
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746691196; cv=none; b=Y+qeyJQqK6yaLGtZP+0EJQPBGiR1zVtwtpm+OA4cV8hxeGGE44k49EEP137DN5BJOgwZylRT9Yah4ITTEd5f2Q94X9bIzQuP0TpPQlS1HSS8BS+nYxroRHHjl7CUt3wzmp+HU/g7bYcC2FP2EQvp/P79Z951UQ7yRLxfO2wyh68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746691196; c=relaxed/simple;
	bh=P4KBp9y6yLcf3I3qNvcog7O1CusIaBqNpOCeYdxRpg0=;
	h=To:Subject:From:Message-Id:Date; b=S8EilbLpcZgZDjizqMVSUXU4Rf4lS0px1+c7J0X40ReRTiC4/KSLVBuB+4pWeDZ/OxfHeWjwMHVUendNUUSrnoXrQ9DybWZHA42FmrRGyWDRmXt8emPVkKXggBS8TO7/i7ZNKf3BVCBuXpeqpDz8MODJ+eERVv8pzXoJwwvgJ1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rI63Mobn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rI63Mobn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E456C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746691193;
	bh=P4KBp9y6yLcf3I3qNvcog7O1CusIaBqNpOCeYdxRpg0=;
	h=To:Subject:From:Date:From;
	b=rI63Mobn0L6cnOfuJDp7UfXc0kVbsrMA71QbAmXbpR0Bq74UaWHf4c3Cmr4ZoAFQ6
	 BvD5HbKuFonZKL3ZMfN2Th3AT8KD9c0GEvCO8BHPrAU+fua1KB6GYEzw4mBuuHnTP/
	 jRJHQaTzHi0e4oxk85bnNKMQ4LSN2ghabCOTRIn8l/oykRdyUSvFcWVL2Q/i5JwXGt
	 LTjBQHmTKcrGlrTt/g4HXDbm3qem8aZBGJ7c3YkETAxQrPrtOtk/Nvb/Vmt+E10MbA
	 eM8ixngklvet8d4yCIAE7AICBmmYskBIjyoZq1pCCh6M6XbVAviacp1TQFDw3tCT6q
	 KrrFAkpbuqUjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4D5C3ABC0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174669119357.6552.15115877341713708953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47e6b57f2b87db4a3ec5baaec8846925d5d4507c0767761e4437fc33f59cfe80
Date: Thu, 08 May 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746691193
