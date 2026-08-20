Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42AFA346E47
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787253034; cv=none; b=ZcXF8hktSl4QGWzijCjC0FnHBm352HbYIazB3KJM2zZps6lmOZtiGborQ1Dme7TrAMR0inSwIjrvozuDJ9kN8doC6QrE5Go+fKMG+Y5nnfJrHLYEaQBBdgXBb4rBXFxQ3e5ts5Jwiovl0Pr6fEV9h9a7Lz1eQ6gbm1GUKmwkVP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787253034; c=relaxed/simple;
	bh=3wS4izg5uQv9tQz+X/oPM6WdfqSHnc6+dl+IEGQv8GU=;
	h=To:Subject:From:Message-Id:Date; b=HnI/KKagFchOIWanr8ULI9ILb5B62w5sHpqXjWwojp9Cimwas0+6j4XoXq1iExndtotojLCdLKbiI8qLs8N+RhmUlehQHFYWaBsIMJCeovuqPj4RcbM2hAfMDobmAiF3dfqxgEJmuy2EwPFG0mereFkF/WVcvxUwA9JU285eIBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JQKWe4GU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JQKWe4GU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE37AC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787253033;
	bh=3wS4izg5uQv9tQz+X/oPM6WdfqSHnc6+dl+IEGQv8GU=;
	h=To:Subject:From:Date:From;
	b=JQKWe4GULqEKblibP2j7vTNZwixv1tmyVl321KCoo/QgSE1GeDAy7l0yjrH00vUfC
	 vkTsqP/UflTeFKSCPuwng9PCOKqn1fDjy48BZVi4TnblwKn67WBHeuzjXlojWX2H6P
	 P7Fo8Tf3JdkrEeWk4TOy+M/J7D8SeLUEyFekDQbNrwUCwMEq7G5ysc3x97jExxmOOU
	 bQwIhb4SUbUrqt7gd4gFnfKmwwIrcuBcRrNu219gj34Pu0RdZfPbBzzB4TxFus+303
	 ULBN3peRfgvPfIpApkAQjig2lAI3QPNPdDA/ToKeataZMtrnrSOAr3QrXXw3n8KdWe
	 vGMJblVq3PSYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9564C5DF81
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178725303374.23399.13680931240164761210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24f381c4c8f0ca33bcf53f0329fae6bacfe7df85b853227606205cb4565c0a3b
Date: Thu, 20 Aug 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787253033
