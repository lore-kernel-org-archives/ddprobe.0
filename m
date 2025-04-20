Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5602129D0E
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745154595; cv=none; b=by1U/tOgH9KxI0LUveDvhPHEbHp5nxM33G6dGsvGhiq10cb1mtBAag8euiqV25WM1Hz1Xu6Oc8KwXJeqUoWapf8mAbDz6zIPtR4GbDWJt/V1dVQDPAS6PYPjWPL2KMm1mAKh2vylcLwao0u0+htybJvJsgsgkVqst3K8oP+qh+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745154595; c=relaxed/simple;
	bh=Tn+qu7qQBb/9H57fEYQ3/moKvThnjuFPBihaNjNw8G0=;
	h=To:Subject:From:Message-Id:Date; b=dj9G2JBbtBB5xj2K91xrLgOooqCeONbrO5IVA6AIa+1s4cTxVx/ICndeLsLKVXLFXtcDgt5GGW1cgp2e1Uz0oxYaO8A8+AHWEQ3lzyZ2xRfm5zsLAu44JEkpVWesE2enqEUkg7ll3kHz5aOaNP6Q+BpOkL30JYGLFFW7Ap9VrBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cbECRuqu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cbECRuqu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF323C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745154593;
	bh=Tn+qu7qQBb/9H57fEYQ3/moKvThnjuFPBihaNjNw8G0=;
	h=To:Subject:From:Date:From;
	b=cbECRuqu0lbGu4kK/FEBcCqn3+J8Asmmw0AEuLQX+TNNYaRobAotHqr9DegS0CllF
	 c31zWBjeO2qdFossnZtXCR2PrEfYi8N00HNn392gg8oTGAMzJSxVZzgM3/i+A5rhV0
	 FqIRBKmM7AO5ksJuaksZk6kqHjGtn0MgXHS+XrziqrunnJ4p3DDVbGkphWf8BJ1T9O
	 x0UYtuS9extzw6LX4qDZC2Cc3teEUJN05ETo0FcUCb8C5XgUKvzrRUaZDLO41fnOX6
	 d7QaG1KzXtQ4lT4srAyhPoGH/VT4YVaG/x5JXu75WXGgJnW0N6yPGuycAUfhDRqfS4
	 1iYuWmYFnoK0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B385C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174515459360.5031.10680097167042515675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f464eea7b9b292828bab598ddc9cc7f86d0cf27493d976f671faf11b737ff68
Date: Sun, 20 Apr 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745154593
