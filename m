Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35F26101DE
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 03:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714447343; cv=none; b=hjB96XR64d7UTVUFKqjy3AKCKD6158fT+vlMgE4cQnpxTDp3VzBcp5c8ZsIzFEasyvtrtfD1D6dX7dbuq04fIRA274YLy46GqB8lfd/NmzT2+iFrJs20p5X18S3zNb184kjtlNBLTjcKKS/Gp2i5CRBvoIkRmCPwnpe1Wi99csw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714447343; c=relaxed/simple;
	bh=sKK8Cf/7fB5eqAeW4OfPDmHCucku+6oaI9KGJ5DfcU8=;
	h=To:Subject:From:Message-Id:Date; b=Zkit3tnvCFQWTHerrrcqFmMROlu8bjq7zgNPUtkQjHyfrlADyDogHuZPZ2DQTZwdOFlxlo3kUxde82F4/fRjLUQF1+7PoLeuv59OioVQJUZNYdu+urtMfi9Wd4d4spSF4EQajlwC+oY8njHSgB/ow4EVFL5ezG9Uy5YKbYSh7f4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GLvtwE29; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GLvtwE29"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA48CC116B1
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 03:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714447342;
	bh=sKK8Cf/7fB5eqAeW4OfPDmHCucku+6oaI9KGJ5DfcU8=;
	h=To:Subject:From:Date:From;
	b=GLvtwE29fIxwfSrtAOfkOkCeBzRUCJavp2umwIUQDvY+3oyxelUndlkgeBw3UO/fE
	 SfwfhFtVv2xGlfxrY9zLE6Ga7T0xEituy6ei+MMATZgzLH9cqtnsA4myNYaRvjYgGI
	 kqb+WwNRnwRsts5D325ZNp6zXYcz4/Uon0ceJ8un8r5MpXZhkVd1XtaGoRBgTcoXv2
	 9lDDGAy6eBt6T+7/Kfo4reCgFK1Iff0cBD4eismASjvTmQsADwprJ9cSv1K5LvxWjW
	 bY3MiT/+w+qobvvc46BJf4VjkZX1d6ZUx0zAWL2nAGoaWLL4ZMU9B+2xYZ0PgrnQHq
	 hNziHIM3BfQfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA074C4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 03:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171444734275.7461.3330473005738067435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 849cf0f51052c7305fa4d8743322de39eddb7ed93437e96d01493da418380d77
Date: Tue, 30 Apr 2024 03:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714447342
