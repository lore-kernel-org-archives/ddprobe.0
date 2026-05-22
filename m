Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D548356778
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 16:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779466954; cv=none; b=BGU5mwu8MgmI4H1bKuI4tNSUnWdlUw3wWcThthXAQ780CWeGtROlk8UmTnxIXi1okPiSauA1XnntH2h61uT3Lyz7HZe5Ice87BR2yTWQd/kt6d4Ix/dO8p+tARlRECHNSoPXAOqsWCF0vQTDKcIGAGNJuI/byT4IGs3EYbQjErg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779466954; c=relaxed/simple;
	bh=t2V2h2/mM7cna5Ghv25x6qYLE3fOg+2equHeodHIhQ4=;
	h=To:Subject:From:Message-Id:Date; b=O7k0MEZfCrbix2kup+fKbT/cEEF1eeTTZjeVka0Ia5QlscKg8AibRwEPyz8Ueaao2hZgy8DvayFVRFEbGkNcFMYXpIil5U4ervmBwvSqEh0WQK0siR3BQS9EgZq/FST5KxZPVq5X9uV/R83Fhp9FsAC3BfYU8dMufmdQDgO7CdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e7PCejra; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e7PCejra"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2D2AC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 16:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779466953;
	bh=t2V2h2/mM7cna5Ghv25x6qYLE3fOg+2equHeodHIhQ4=;
	h=To:Subject:From:Date:From;
	b=e7PCejrasM8XYo2LBfz+jg2pDYARDtPyxbEMrLYxrRQ5WauHe3gHmPggwZYOGp6RY
	 I01ckSsgruGajhOD7zLyTtvjCyWXZZkifHKkaRiv2Pkst+A+2AIgsPoDVaPTKQMLC1
	 Aq6rpnguYuzK2glCSATxEVKQYWkFzrvvwVE0aHR6Dk7tKPwlTVHkNmlFJ+ZXlyi3ps
	 jeadAZPrWx4zRwMD9EKhvH/R3Br+hha0nTzg8ndaHNr4KWMKqomfOTW28fORcrFy3k
	 Dw+D8chNpS2lAauRZhIBR1ReoHv/ftjA6R5mH+I7qdFz5LxZlhjo+TMSZOzxxEfuDx
	 qa8vDAYAa/j8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DD7CD5BB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 16:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177946695368.3443.6399859156300531666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6ed18afb7606740e231ebd1377584c5ca15e47281e47eb4c673cf1c01972093
Date: Fri, 22 May 2026 16:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779466953
