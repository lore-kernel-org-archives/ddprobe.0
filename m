Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CBD913D638
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728225954; cv=none; b=Yo0R6ROWFWa+FsWj6KYQELLTF/62qBg3FAo2WOJ62GcTsaHJktLW+O0FzZxmQH1s+1vdEd1HdWegtjC6wGgQ24szENEggWh4uYucORb/rJVHiemdqwZ9MXKcndnSkUXNJgNDTPySanFjkg+V9DiBqyjtC/1mmKgSX0qAoSQdC5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728225954; c=relaxed/simple;
	bh=iNlWngfEVyRrTxxHcUA30J9Y6SRmt0uVzUBMeIK2yVc=;
	h=To:Subject:From:Message-Id:Date; b=JaJkX/p7chgQ0CDI5ZyCymthMBkbtIBWE67lsby9j/mpC7PEMCfiBs6hMjvHjc6f1aFTKjIy4g0dFAhik0m7E33BcYuKxGqPqBncDffoD+psYJzxqY1WG7egVHv4mF02395dYEhjz9m8wkywSYhB2Msvq1ganMDLlURa0r6qwm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MB11FnIP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MB11FnIP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0C72C4CED5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728225953;
	bh=iNlWngfEVyRrTxxHcUA30J9Y6SRmt0uVzUBMeIK2yVc=;
	h=To:Subject:From:Date:From;
	b=MB11FnIPzy0eVtck7ODGEA0m5vKcZzCXba4kvzOG1gnKjTd12oGAQY4++PtJ0NcAW
	 lkPllkpDX3CgDeCVcrw9fg7A7lCSa8vvt13dDuqZGdkZDK6CBdFKNQ7dlcOrpheTzp
	 y99c59eVVAdw9CwN6shpNGLZ3P3qK8ojBnNWIXwsOzZTZOW1lVB3ve1DRxuzepy+WB
	 9tk7intGE2DjpS7Qey97Il/B3iXGwhzWMm9e4K0igaAUZG3k7XVFa7HlNQWhB8dNCO
	 4lmg0qgGBJE9aXw5MEiOf1TKSVqbCZnAPY/tHHwinFx2Sa+UFOa5TvunJjPIoGPt5I
	 6H3DvKezPbiKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB51ACFB43F
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172822595369.3010.14703781570839622218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc056e1df762a5834d6baf221f7fab021ce80650d2cafccf751665fba5035537
Date: Sun, 06 Oct 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728225953
