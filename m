Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55F2F2D949C
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790048434; cv=none; b=aLWzn1OzUeDjCxjcekdfHJ3wD1ZAWUWUPrwxpNNi0IWj4d0GUSKqDV/a24+jtmMrMVwS58r4KqBWzeao9UwHQoFvqq5ElVcrfjeOq6fvzHIRnlIl2wIbgwaDhN6lyijQdK1+HMr/oLjUoSkG+W8m/tECV+Vj7iCJv5WFm2faSMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790048434; c=relaxed/simple;
	bh=hkY5YHnSZTa/a/ln8yxkqK6iHZJF1Xbo+bRuWpceIks=;
	h=To:Subject:From:Message-Id:Date; b=Na1Qhh9Xp/i62Qp0XS9TNQeBZk/yS/c0D3EHEp7S18/QHCqzVEFtQKdCpPxbq8x0R9B+Z7B5BiTzYdsI8tyBFI+HMscMo5jUFmcUNujCsv+TQUvOfqLtumfOx8fzl94ArGJZCUql7fGm1F+FkmGcdVzc/NL8IqQGR81hAGPxkww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mw4Zqc9q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mw4Zqc9q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB5C3C2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790048433;
	bh=hkY5YHnSZTa/a/ln8yxkqK6iHZJF1Xbo+bRuWpceIks=;
	h=To:Subject:From:Date:From;
	b=mw4Zqc9qX3hYhaIB9q7Tb4hdfaegroN+Rd5ODgq4NIE4xM0/ZtVQiYPUd8Cgxk76h
	 nkx78sd0apz6MAoWp4Pkvb3pmFO5HP/tDzlTPCQWXrv368WH7L/KVe3HsNc9/JMpFx
	 NccAWMr1kUL7DOL0us90SG/CZsjWY6TFCZmiQnFOwpDW5sRZo3fmc+rlMrzRAq0jbj
	 q3h2EWPE3cQRJw5AAM0Hgw+pddh0jHPcMMUoP/wrTkKuswzbBBOEKr9pgVIlmploiC
	 vAS7PCP94Dv7A2q44qTvsbm6FdlbinF/2XoYbboiVVj/FjEmUvIdhwZdasy/dZ69Ih
	 zSlouvJO00d6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8CFEC982F1
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179004843368.30543.11638828492875852282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcd88b3d938d47c8fdc6bd52afc7ceb989d30b112b43c1bb1ef93af7b2e6d7af
Date: Tue, 22 Sep 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790048433
