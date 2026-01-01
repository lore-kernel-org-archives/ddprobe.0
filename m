Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ADC73A1E72
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 00:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767225834; cv=none; b=tX8EdgvJA8QcHBDYA2GMGxEv2JuzJQFyey7eLZLTbHBS9dL7IZyb4+tf0lsicHodggYVnVFi2YemTXJZVSZr6tBGoPcd2TzbsU5aWnRaeQnLPRGaLMR24CjdP6nS/hcN1kl1jyv0WyUPXfLK0W+TL182Oj50+ppFpavXNYcPeMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767225834; c=relaxed/simple;
	bh=SP+XaBUU0U57Ywaer45Ya4bteYfU42igCjmPnKOl6do=;
	h=To:Subject:From:Message-Id:Date; b=Zd7/Gp/pdzPlZP5HP7q6lrQeB5KIHEqOPJXW8rhGuYvNMJxuO9z73tcLbFkN6aeb9Zy5NMMenPXHqX2oBTptA5tZpiQdTRJTMDE7arpV13/Fzb529nyt70QJsdST9Mr5aMZji33w3577OZmTyAu0nHdireVf4gHORdKGtq+uOtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VPNAMJNd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VPNAMJNd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C82C113D0
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 00:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767225833;
	bh=SP+XaBUU0U57Ywaer45Ya4bteYfU42igCjmPnKOl6do=;
	h=To:Subject:From:Date:From;
	b=VPNAMJNduQPl/6ORvuoJamyu1uqxrRKphxfUP1lASQMM2p1EKTJ5h+knQDLbzISgE
	 iddCjcP9gdwDWJ2tK6hWLg9GMFAGqQidp9DtqK1Ud4qtfal47XjpBNNn9DDDw1BMB2
	 PJs4KeicH8Y+85otL1SxTGLvalwp40eAdqH6A7D7qsWk4IKYFRVAYedpIZCHAa01py
	 rZujlDvzzWf2BhFnSDGMXKcMQo1PhA+17kpda98yOdNjQwDkMMey4NZ8PXfMQZXewk
	 Zg8k1EFUQJHZEBoWhXu2Kc9wW6F/P6oM+ejb6KxgWGawVCwqv24dADEkgE0k0Dzx8e
	 4aL+sDMnx+rEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96405EEB575
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 00:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176722583358.2373.11728486056484682613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48a122ef35e5811381c7653415c0a4a1eae91824b4aa8cd5768f0888c3ed3e48
Date: Thu, 01 Jan 2026 00:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767225833
