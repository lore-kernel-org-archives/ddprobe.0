Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4751B13E03C
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 23:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717716443; cv=none; b=WUeymme9d7d0LsY9fKU8P5hNa3UT/RCA2aQTqhlSp9mH91VCA+PP64dZMOtStZmadcNEsFVXc8SIkmmSFGNeBPH27gQK+Q5CG37r0n9j7RfR7gu7pDgBof6xJHn6r5WF2VMouQUGQC5OpsFXAQC7ejGKclSXVaac3M7P1g8fY6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717716443; c=relaxed/simple;
	bh=LCWcYs1yfsYf8AGTj9DloN2CApvgc+Eau3BPxDtvpDI=;
	h=To:Subject:From:Message-Id:Date; b=JQPTI5yMqCO+99iqFVEvaCmZ236MS3i3A/2Au4kheJn0+P+a1ou5XiN0Uyo9dFoAXtUtj7D4PNfIa4VP3qH/rs+RWIWFNbujsYf+5OZzmgI+3HeMskpY9hdTqZ6FBmoPvDDXTkc9d6P9TCQrckfzuDQN57Pm3bUZUKHCIImJi5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=au29q3qs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="au29q3qs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDF59C2BD10
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 23:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717716442;
	bh=LCWcYs1yfsYf8AGTj9DloN2CApvgc+Eau3BPxDtvpDI=;
	h=To:Subject:From:Date:From;
	b=au29q3qssB9tX7S0enXPATsI3cJpHbD8LS/J2VsK3qN4ZDIQ5iNwTVoNQR5OJ5gvF
	 d/EtGdvgablXJF8vvqRSj43YefW/Bz1gfuuVTa0eViF8/B5KRIXnqoymw9DFXi4/z6
	 AQsFDExqlrGTHc7XB/9smC2+DZ9eeOWJo0RTvtBhylokGH2iFVXeHrT3xjX5P3hjKg
	 qH4THx8FOLqguCylfrbbWH7FkOpH2kGelDQz00JYOzNExiTNL7ecKDQ3++FGChjiAs
	 JuLfZikYET0USbtclkcfFzhcNOdYBrLK+x/eCjoWx1sD0VoNBFZpbgluihQ1vYo+kP
	 H25cpi6Zo6m3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2762C27C54
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 23:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171771644284.5334.856055290914999092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5604aa78fe71a993bc7c5c33285360aa504439b8f06864c349d47611dfa1b8b8
Date: Thu, 06 Jun 2024 23:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717716442
