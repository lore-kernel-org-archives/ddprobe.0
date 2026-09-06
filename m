Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68AC628690
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788664834; cv=none; b=fA+MnZXtELzbKcKWtQ+M3eGACY8afDLTfS9dwr7LvSuG+P82+WS8Laj/KNuELQ8If+McdomtsXoSfuuD2ZlYqBr3C5ZGS8C5y4KRX1Igh0YFB7Z3g4EF+hEl3rGb+z5mWkSTmqXsXQKWAgT5wrzlV5aRwX4IsIAgXETt2Y9EJic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788664834; c=relaxed/simple;
	bh=o8jhbqjEYpADi0jk8cm6LAeCeahzWHsqYi2CdsLSyIg=;
	h=To:Subject:From:Message-Id:Date; b=mTs1M/zj0m7eFJFC3XhKZMpM6xazTD7skl1qsfPJ2xQm4tfVvFxfMN573vve2o6kzSPTWEknrQ5vyrsRwnh4bAJ0YQeCpRnRgF/TV4EC5ea04ZK+tsJ7Os8AYmPCz4DhzCig1yEGhn4SDWeOUzab+wV3stx3WA5eLHw0NhwsVJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T+6rhJuH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T+6rhJuH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA444C2BCF4
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788664833;
	bh=o8jhbqjEYpADi0jk8cm6LAeCeahzWHsqYi2CdsLSyIg=;
	h=To:Subject:From:Date:From;
	b=T+6rhJuH0j3h/jfs/dyS3P0SteCfaAQ/kII1b2HVGRPgh0u5A+9cuz8LjiOL8mwKq
	 iSnWXHkt2WstFK2+Y+urGwOEIHLL1gT+H9c/HT26SOdFmysBhrk2e+eQEizcLkWfvv
	 y06/IZuPeiVW6HNIFn9NxgG+fL0qLFQu6ZsCheZNJBAQdvTNiqm4r8T8HSPQCzanr1
	 YdWELEc99qbMHsgDjEDZ59TecAE+wf5C9E+6mcU31WMh+ijmaF2/oOJecSTrwOlahc
	 /0vvjMNxe9gP52DjcELnAPEuiLmsvrdqIqhSR4GJR8netlikBo6sw+vbCQTKvn2QhJ
	 SjvA1Pqvq6y+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1BCDC624DB
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178866483369.12478.15846627011632081968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbe7999de5a748c0ac7fd0686d4a8f10b64b481a4e4ce7983e9c7e81f0887d6e
Date: Sun, 06 Sep 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788664833
