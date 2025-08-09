Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12FB01F237A
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754761794; cv=none; b=gBXfEpJs1XUAy8TKCuFa9kc2niS0VfqXx++nm9H2szdXIpywON192kGXh9qsQFAfUmlNH3guQrbY00fImtHOaGv3kABaV3V8Z4i4g7RUM5QKa4brL8zNkxAadZR2jCnbNA7c8zaMgz7OisdTy9IlJnfiN6mRo2YD9jRxqEIayiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754761794; c=relaxed/simple;
	bh=qzAnH9I0bP0NvB8h00kUwAqcp6t7ZsX7mC6TMv0tRMo=;
	h=To:Subject:From:Message-Id:Date; b=j9n0OrFpRRzLawcRPh5sQbsN+6KqcroBDCoPzMLNsmSgWPYWS/7XMCKRPU8ap6jcYSb4swb/EPmdvxDnIG+o7yH+URp8IUJYBuEtDF+1xg9GzKZ0cRLnAQIgpEvJnMDfhEdyWgTgiB63zwBFWZbeFhiw14XEze5PPoFpKWyQxtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pdP1Cqez; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pdP1Cqez"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA0AC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754761793;
	bh=qzAnH9I0bP0NvB8h00kUwAqcp6t7ZsX7mC6TMv0tRMo=;
	h=To:Subject:From:Date:From;
	b=pdP1Cqez4/FDCDFmUXJCQA5VEA/XSH5lsrCfuWwIsB13vjUjOvlwz8/QMpmeizKTb
	 CBqqSj7rwmtfq+RWCdBhccGkuwSQqi2U/LYDqnY5MU1C1kGkCuJzKj138b0QFUIuno
	 ifZbiEdcypI6HEeijvveq8INH8MD8zRr33L6qa/sCb514RLPJ03R5aMNkSDhDZjaaY
	 /yToPF/baJEwm2RzuURLfyJyakLdb5HIh2jozCoL0z0LM5vNSb3eyGLiVGrhuYt6G2
	 UkOVNAdos1czVjOfpwrl5ROWb35YtP3TZp3rW8hQg46I3jFaBiO0DGSYGLmkentHyZ
	 C91FCDYtlD7aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBC1C87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175476179357.15531.9370489702949125461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dec3998c04ef8ae5b5d95bc306cbf184584f6fb642c387008a6a9695bb2f1c3f
Date: Sat, 09 Aug 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754761793
