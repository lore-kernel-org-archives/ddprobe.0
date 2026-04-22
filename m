Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395EB2D77EE
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 21:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776893854; cv=none; b=mQverAv57QEkI8htLSuVla6dTVjPZtWVkouixOi65U6AKMtTcAbflSwQCbESiyGNjS3LDhOrtJ+b0rOVyzN01hbJ8oiJqBCyQFciqIZfrzJPZ3dceAj46pobkZ7tFcQeSVDkBGu3ZHp4EJeX5hM3MFmwyNAa1E7s1Pc85FSZWs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776893854; c=relaxed/simple;
	bh=s+TY5l9Cn2WGvXziD73IHvSqvLn19Z1szpR/uvXvSYI=;
	h=To:Subject:From:Message-Id:Date; b=myhAtO6cTiB0SXRi3zKyJPKjIWfyGXMJmkqko+na39d1ol2YpaAWILdCIbI5XJFpv8SPc4BXw5pYM7mW+Thnx9SXUvUpoWLw3r/18t9PiX/iAdj+7Eun9nZfkmFKZRFlLUzne03MWlli6LVpelh7sYvP6qgZL/jqi2mhb7E60gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kAugttBO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kAugttBO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C36E8C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 21:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776893853;
	bh=s+TY5l9Cn2WGvXziD73IHvSqvLn19Z1szpR/uvXvSYI=;
	h=To:Subject:From:Date:From;
	b=kAugttBO8MHm4kYBlJb1z/Pte9Aj1QyN8FTO3HbzUVTVTXzEDGVHzGwVdodyXHLpd
	 cSXj6Q7lNaxk3kc2ftnkKeKB66AJtmxKwaapzqv9yQyVkfWx+y3bDUvAd6wze2suOU
	 rmMBnGiASOQeTW+8g+EU6UgZQ0RV3r8ttx3gsPtr4m+unYG1jR+aHYTBJgbAc2idOs
	 QD5Olu4zrO0NwLCWmiqT8l5RQBhHkS5x5TRug8UWY/T5bsnF1/4HlM6ofwvJgO1q8g
	 KVysEtzI+ds4U+8jTCSnarmSlpFRlJHX6g+qQRayE5JzTrftsqGi4zZxT6vEVmtpkW
	 QyM29y9hl4Eyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B11F3FA1FFE
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 21:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177689385369.9580.5246889205470469314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97807d5428c555fd0097344726d85979b49b402fb1dc56e64aebc9c5e9ae440a
Date: Wed, 22 Apr 2026 21:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776893853
