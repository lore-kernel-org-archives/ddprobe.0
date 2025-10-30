Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1531B1C84A2
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761783594; cv=none; b=hWWAvIwqkX9PENWqIpssQ5VbfbAFXBT50qbykigACMajTuRRa/YQbKcf+V04218AIcirYci5IMyZ+0CDnak+cbubJ41YbZJN9nDobzBitB/r5h7qKlYrti1CWSj4I/M8GbdwDieqxhnZVx4+2dcwC8IqFtkGloA2JwRuyF0yiSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761783594; c=relaxed/simple;
	bh=RsJw5Y1y9siivsLGlnKlCeAwwTsqHiq8aB5AT85X6RY=;
	h=To:Subject:From:Message-Id:Date; b=J3vid/vCtMmQLbzFLLsZJzxMjxJ1Wly7DD2bl9luwwzItdIjkIieuI86BkSLvPoGPyMzr2v2mjMDz6lDy811wdaZMNfNfmUsqYcMh+TzW2LSwMfh75VM6luvFW8dNj3HC9qgZ0W36jwFDcLuhAcYh+KTDhd/P+uWg7UXbyS1RZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WN/hJSqO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WN/hJSqO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E5EC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761783593;
	bh=RsJw5Y1y9siivsLGlnKlCeAwwTsqHiq8aB5AT85X6RY=;
	h=To:Subject:From:Date:From;
	b=WN/hJSqOBOyR+CLUCo6x3Ale5SucXJPrE9LSk8QnURdJFYbKPI7ed5hoNAmX44rAK
	 p3RaQsyROOSjafUrUwxPdKUYwVcg84z7XDambXRcFKf2rUA1SbxylFQ9v9dIIXVURv
	 g2LB6kteH1hL5rpSg7INK7qsdhPJ2GQ+3QO+SAMJS5aFl7zzQXWBIGaCGo+GUFmH04
	 XwJsDtZjtDaFQj3DBEnsduLt5rwhXQ6q4gJlSon9fbzik+P3oHOXTUcw/GjCnByNX9
	 l40qE1BzBnY/nmAv9zycmatSg6B3H3m2ON4TAzsfz3OgXo1w2habiyR1IE9PlVhZCr
	 7wztoYIL+rU+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F26CCF9EB
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176178359359.26721.4022733795311797897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0f06b3aa946e7a2daf59c26e7c67cfad5c2a47b7b5e8fe4ef580620170c72ad
Date: Thu, 30 Oct 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761783593
