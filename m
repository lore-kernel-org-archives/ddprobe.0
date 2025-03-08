Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C84B26289
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 12:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741438135; cv=none; b=I4OUvbXpzfxXwZinYgKEWi1+OUuxt8lAr7+1elihxkLjevInystnNHDrelqyPJrEtVbG9grVd8N0nNwpMjH9bOZgRxtepn54/x76vWzZPM3Flexxvf22q3PxSTw/c2wxBc5MHFzkpuTXR20ZcJITz7YyStXlor9HATtkLp9fK0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741438135; c=relaxed/simple;
	bh=D4tFpxuIncs+PxqHM9affXdnL33gIbs9ZTgomUP0iEA=;
	h=To:Subject:From:Message-Id:Date; b=PhHdaZFUvUmk6RWhprgRU+pAyLKIMADHPJO62m/Z1Lp1cMjEYTwJjgqWbuAFneSFnW3irZEfsKxabIAizirAz7puIgheRF69NQ2NFv00e4y1R2ytsR6eFzqQc6lXCc1Ug0/fGj/ueB2UXTm/iCGFusBk9b5ecgE2wWvEs61XWbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JOtMYbs8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JOtMYbs8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC647C4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 12:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741438133;
	bh=D4tFpxuIncs+PxqHM9affXdnL33gIbs9ZTgomUP0iEA=;
	h=To:Subject:From:Date:From;
	b=JOtMYbs8NrQmk+u7uRooU6TKCsSyw1UBupQLk0tN5iYpQfQl9pG9pQvmSuDAdEICy
	 FGRJAr7aNqIpFGmdBxMwoNr5Sn76MEvdN9NLlOCmKUVxXWZii0jDsoVxD6Wdr2AIh1
	 qQeJuFqzHudmek1QlHOL3Ie5yRIZlTagzzM1ZsZiHfQKNGFiStFimQGQK8jjzqZ3Wf
	 wh0MwCitAyWFn6HP50UUKqWqGlyqA8JlQFNE8cMPy+A2p07disoUb92rd8bUCi1sXY
	 wh6uKEtFfqAIGsjF0ImlgEMJfGkWG47NMtzjnP9aWcJI0yQKw1rxe8S0F5u2aP9ked
	 xHEAczLm+/ykQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A421AC282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 12:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174143813364.10228.7829292854378803454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84f32e46d40603c87e59f80928d7da6cd137ae27efb3f8207e3609b3217bf944
Date: Sat, 08 Mar 2025 12:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741438133
