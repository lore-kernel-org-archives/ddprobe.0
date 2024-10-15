Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF8AA1D95AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728993354; cv=none; b=OoTMvF7fCMK1e7oZLWOQQYr6WLvkHfUjeIVBhYQUek2FCVmu1BCSYnNleVWgMZ/T1a1Mv2Iz31IXqt9ePNlm+3+SnezRNTG7D2uC2+oNFEUyM5Kp9KAPXA8p60aEo7Ci3TUexS/dFb/YE7YcSAvlJVVKnnZkFuohmxpvnwu1eR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728993354; c=relaxed/simple;
	bh=qpWJ+uDVovxOht80eQhOSGlgYVOCK1iQEPkudvZRXUI=;
	h=To:Subject:From:Message-Id:Date; b=QPc13L69lZMxKvlhrDQu6DCp5Dg3Mg6OS90oqlp2Z1uX362QRo9GIiK5kaM6L//LUIJk3r6ZOlTiAuM1qsYDWnPI4VWiv9A+CxgX30hzptaCwECZxzuowK9nkWneyIS71XrGzyXdALWfUB+Ve/9VWPafLwDI1GG+P2Nq+h0IknY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jlNCDbt5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jlNCDbt5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B7CC4CECE
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728993353;
	bh=qpWJ+uDVovxOht80eQhOSGlgYVOCK1iQEPkudvZRXUI=;
	h=To:Subject:From:Date:From;
	b=jlNCDbt5IVmlf4xAyJVCBLEdWPMbZZnYbi4xs7NQjcySRyj5uB8DJrNwtfsefP2LC
	 M6u4ZKdXWKSrrG4VqWUuaEhSKXsUGjmgvmdh/g3Izvkm38c+X7QJyrhLVJG8VfJbGq
	 7R7zhzcueeEaNP6UhC1A7ucudYMD+wc+x2B7a9XD0SmRO9XRie4BI+I2hDnpeyEt9z
	 4yTV+ZGsi98echkxYS/fjmWLgrmyFnTPOv9hNDR+rrAE3hRbAo8iEtRvRdk5jXUT6Z
	 8jZTOgBwCKIrIApExVlWdCKcGT+F4lPe4BAsOObZLMWao+AxJewm/8i4h3khJNALk8
	 vVhnmd1rSssSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9503ECFC299
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172899335360.10380.3581790899770313706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75e8e7c40222d241bbdb6bdbb3d47db65d85530e51ff38bfedc891d06b1a0545
Date: Tue, 15 Oct 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728993353
