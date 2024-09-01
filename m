Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1520A2AEE0
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725176754; cv=none; b=OLXS8OT7+CQ4elDVEKJLRN62Zy0cR3+eOhxLxJKPZjXNpht3gz1daTAUstmMiMAeujj36lkuXbp6kkaZ+CrsYAjfDlWhMZZ8ypIZRKPy58VWeD7Mz79VZoR7P7iF/7SYqNKluqdoVUxICS++fUDfgNU/KTeyArOY6wGNon2HMIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725176754; c=relaxed/simple;
	bh=X+2p3Z5QW+6BGGc8rnwDuaOdtkse3EUO/UgH5UV9Cgo=;
	h=To:Subject:From:Message-Id:Date; b=QcWVbrXic1YhH0OzEekK/rw4Su3TZzCII7fhzjSfFNkJwnCtwNGaMtbb4mEYkj4baPWOgEKKZuFRExYMVnvkpPOIi5ViofeFr6CTaZ2IKxxqnDRdsJw4Yy57rNxP7CcNDcMOcgFQb7DY3s2XRw+6H4V1SbqrJSbudhR1+2DyVtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=puCkHiGB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="puCkHiGB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94A2C4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725176753;
	bh=X+2p3Z5QW+6BGGc8rnwDuaOdtkse3EUO/UgH5UV9Cgo=;
	h=To:Subject:From:Date:From;
	b=puCkHiGBl0Rci1Y84IXQRi0djNoPPlsXqQPWDVVZUTqeXhgt1J4LQM0IL7w31X0l/
	 jrzsU9DAGREUevsEk1ncJ2v3t0vLuNQw87ybaVtLflFM/lWZ1Lrwg9LvUL8KbTJASb
	 N7rWP77jh+MFrNsQL8Knyh6twtg/x7rJhDdIK0DuNRPMqR5pUFFYDeg8Vl+E1OIvqG
	 NEL80k3IzvotJf1R4LTTwX9NRhKvyBa2TJgZeh3KCExZroffW3M/nbSQ+nsKLNuPGg
	 aigGBJzkreDn/Z2+61VYZHWKnj0n+YG16h97aoGGfK0v4UD0zlLYO0A/0PEQSaH9iX
	 9zfacpjW/dfjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9550FC54FC6
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172517675359.29828.5625904870015380031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8773aa6aacf73e13f22021a7bd705a7ab876cb1aca1ccea3fd8e6f7e4c673642
Date: Sun, 01 Sep 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725176753
