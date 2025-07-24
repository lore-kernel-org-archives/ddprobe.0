Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2643123E338
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753349994; cv=none; b=KIPRhe2MWYIe975l9/7KBGG08jPpx2IH9pkrB0PFHR+Pquv9b+9A1CdLrnRec/R9+3R73KcReTkhOCuck3tD1RIEcBrZa6GrqdB9cCPU/accsOI7C/dfEiOqzA/d8oLvdCF8gY3blYljNNUmdEiFxQqn6js4Y9g+Vto3oAGy0oA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753349994; c=relaxed/simple;
	bh=WopfWQNcooZTwQMewPb0PDGiUJk42/tCRPNJeMGTCYY=;
	h=To:Subject:From:Message-Id:Date; b=qv0cUs6UHgkOmHLUgueghgHIWIKmda81XqHDnq/dOsWpllDv1p49uisUw8Ot85jqts9+zlg9imWmETWUKwvIGLfRxVM5F6PI802aFXoDUnR6AZrrc/EvIISPxIIyCejUohsy597py7KxuU/g01pnTGBNetFu1sZ9vOWMHfrR/es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NJmygCGI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NJmygCGI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B326C2BC9E
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753349993;
	bh=WopfWQNcooZTwQMewPb0PDGiUJk42/tCRPNJeMGTCYY=;
	h=To:Subject:From:Date:From;
	b=NJmygCGIZ1pETfy5IFdpVCJ0WotzJpXiy4m5oONT3LF7Q33KbezK+rky0qKbjjLFV
	 Xut4GS7Ae9jU5TkFCE1KXaxtXOB7wmiy/nfmJfF/42oJVmr4LRsMb5jIeooEjYEIH8
	 /LoRdiOAGyUMc+5VunMQqQRtYa8Q5OD/cZItynmC/S1mh6wZApxceE8JYB1CmaW8rA
	 7/AWDLI9aCnx0UdacNduCJBH3P9t6/MpWJUwfPq/6uGlKqdChD/Rmj5FQIFWhzyJyK
	 Fr8oeuakJ8NTfxS6F3laovhGb8zBaKyvNGegSxFvNlYxDog7Xh2pO6cMRk4mAeOVmW
	 YChgP4BfwU89A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF32C83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175334999357.28409.16579839523986755880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be85a90344431c6c46aa7346a618d41528ccf4532a1d4abe3b2e76fd90b41b52
Date: Thu, 24 Jul 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753349993
