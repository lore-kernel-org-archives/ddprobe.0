Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F29D4381AF5
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 22:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773440094; cv=none; b=TbcKbYmysBkHg6RhB8J8zW57g9jWH05PuSan2UyZl6Hw1cpD55GwE9gvQCS1qU/za3s+sfgwAZmTJwEd0tO/QMjycgy7/bjwanik0FqFHUOgChjyqmnCueNeY7a57dLU47V/3llTf5iTXxQXn1T+tQGxVzYIXzWsdpB2Hirq7OU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773440094; c=relaxed/simple;
	bh=z0lrrixA21qXtmJ69BcsF336fp97diLmmIKpvooxl4s=;
	h=To:Subject:From:Message-Id:Date; b=KrL5E6LrGpCc7ywyKrYXOniwsgnqtfjYYrhAIg79FWXoxX1xJRLrPkx/BDWeCFHV1tFc4HJvfus3mu1UUvPM6PZuaiPmx8a2arwmYATgJHGlL8fpd9xLBEe5neNAAlo7zTB7T1ifObMENutRpCLgw2dpkJK6KGWT+e7VJ1i9aQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DrqbWykn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DrqbWykn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A423AC19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 22:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773440093;
	bh=z0lrrixA21qXtmJ69BcsF336fp97diLmmIKpvooxl4s=;
	h=To:Subject:From:Date:From;
	b=DrqbWykniOK7LtX39WccoMOrLstRu2NcMc/A0y/4X6iWIC570V5uVo3hXxoV/ToSD
	 OyhTqo0Pp2xJT/hS9mbLUfc7fNqebm27PjAFlqdeGK85BFXTmumEAJghaTgxpsKecz
	 bmurIiODuAefUlMqyxSOMkO4pGyarKcXi9ZBEdOcO5YGhVRhbYSQJxvznguHCyhBPB
	 d4LY/OJjjiWdGbXqExW30BCOPtf6yVYCg0RAVpmlgQhEhqcoCFoUgpItmQcnEgvWEB
	 ZJ5vvhAFO0gbKXOB/W4W+RG9XkFZZi8wvI+zdQxcY0i2lwwtCNF6MoJf+TwHIkoZE9
	 R/3CYDabQI+HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92552107BCE6
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 22:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177344009357.858.18080157710049244961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 182bf4bf33735d395b360332ec9f07f1c50cf9fb225db2c2fca6c5843e3aa1e2
Date: Fri, 13 Mar 2026 22:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773440093
