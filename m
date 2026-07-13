Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34187392C5A
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 07:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783928914; cv=none; b=J92INPkGO2LNEAezopKjJ1VNKImHpkxdMsnecvinvzVRbJBsvUv17bp+zIZsNtqqvopvm8YpNNf4vXlOtI6+djtsFbAUWratxYt9lbovWMi7b36piHKAZsKKYsqTKXHlxb1+fS+S4SIvUFA+6eF0fc0hUTo4/d8ec1mZ2BafvRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783928914; c=relaxed/simple;
	bh=4fRYPaA0ntwavGuFPLZDpK++QP4N711yYoTAQrEl+zo=;
	h=To:Subject:From:Message-Id:Date; b=Vc0QXDpWvHIOAOjQfZWv3heLaCx3E0sZEiWSUua3bwgFxp22BbTsDpFMuD5xZ+SKV9k72emaGVw8qZGLPR+xkSIiftJ1Bf35o8NLYjd23ol+i/2eFUKpOOTW4SMEQddyvfaz4diYxoelhvQVUETbN4X4Sm2pskDr29Xl5lhb2ZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ltuL7P3e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ltuL7P3e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDA30C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 07:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783928913;
	bh=4fRYPaA0ntwavGuFPLZDpK++QP4N711yYoTAQrEl+zo=;
	h=To:Subject:From:Date:From;
	b=ltuL7P3eHY0nbE2RCjxejsAhjaqvuRQkbAXDyrQG593SjiJ1n0OYLCfPcjfdWuWom
	 ZdJHJllyA/ZmFnBfa28kYWPFNR3w3etNCD7nlP7IxMN/6HgBJ2rWfYgRA7/rLBn9H4
	 E/QTzkb9xPitHN4VwAKowN4wlwtsQim9dNWmKunRl6ZBym1bdorZ/H0m6fKNMVcCax
	 vMIeSMURF2SCXgff+/fGfd6ckw82AX4Enaa9dLDkOSTHQwPUYQWegdU+OeqiTZV0Zo
	 1Flc9p3MyJBd9K9uZtjszF/wOO4Q18VIr4rznnARIPqpi51I9gRkHAKpTO+1rLZxPy
	 B9AkWdBghFvRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FE3C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 07:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178392891368.29696.4633770751898744215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2abca3cd214f4e1813c911c042c00d458a34e63ffdfa2593d3db8d91cf04499
Date: Mon, 13 Jul 2026 07:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783928913
