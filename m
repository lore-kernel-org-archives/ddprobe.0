Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8DD8F54
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751095794; cv=none; b=qctbQ3qOcM+ojeYEnvxqAjMDdRsUjN4koP1lm8VP8P6NucENkhAhh/PAOLqKtOcObFMoFMqZL8HQvZDz8Nyo33uPGG+tdIrk8WMWZZLKamJSAHhfbxxnefEtu9TIgWrSlxBN0pckRYtjYHAffJNnVqLJ0ohfLpcAdsWwkA/dP3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751095794; c=relaxed/simple;
	bh=ZZA8N+kRhNUM5Dbr4GWE5OqC3SMdp2ab2mga2bryTQA=;
	h=To:Subject:From:Message-Id:Date; b=urvv8qa+6VMMPVUVjiDGWw1ZPyU5bYk1sxSxMoZcznRZBJZoLpT8QYm6TSzn8ucSjdiMCLP+6B5TZwdXAA5reDICoOBwReuXlT585HD4WNziDwP0K52WMFNeVzUpHM7mP1Ehw8gH4Fa+5XKT+4rYIFxKPxUU1LPq7wltXkgEVhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fORaxW5b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fORaxW5b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F16C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751095793;
	bh=ZZA8N+kRhNUM5Dbr4GWE5OqC3SMdp2ab2mga2bryTQA=;
	h=To:Subject:From:Date:From;
	b=fORaxW5b6CIbOK0v4iZOuc6NSDL2sDBvDLvqLHSNaWnkmw5oJYr3n/tyVzzrGGLeF
	 q2KHB/HDjiRE7mUIbLlX8w89K4xTDB0KYyQxwSLc7PUz+Fa6k4j9XGPKYvomqk7Ppe
	 PiBX49dpND89a07vZDd2Tw2soUmdDnqyBZ4bADLkNlq/S67XxYvivjHvQrTkHwIRLq
	 M2SeCEC0/bXY2X1Qz7dzvg0ELrQ4hmin8NDdURwfJfCSfC52sMB6Ag6yVzsgEGDKeh
	 g/ScyeLmgGyubUHlgclYPnB/6aMcykp9LM+NH5oLwxMaTM7ytq6R2qnwUtpaS3TDRY
	 4WDxjLUEp0n0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF6AC54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175109579357.26720.15626535472150907433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1116c19681f52ae50195e15fa44d8dc055cb5dbf1ed49a3ff9e7100ef8e8a516
Date: Sat, 28 Jun 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751095793
