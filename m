Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67A1341C6D
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 09:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715766143; cv=none; b=ig/v6B7nUa3UjdCA4YX0Zevdlz4jLE2ur3G6z8/JiIjsZI5GO+Mc7MwnNPJ4oovTMI7YORPRfw1mhkxiLlOODAvGRUCTkuOFaFC7ptWjzTiy/hGlIC7lOFRLlZRFIbeGZlPM+ry2Ason0HJ6wb6ISWKx2bzB9sbgyTCPJ/NoSr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715766143; c=relaxed/simple;
	bh=bUNZC2J54pS8Pjokmr0lEr6lgBj9eUEI2BpBsPeQXVw=;
	h=To:Subject:From:Message-Id:Date; b=bP3lDEfpCTa1+XyqKPuZ9+7Uyk489xSMBBbkW/DCfHjvz26J8KV9WtwfBwrxvvr11+dZquO0fGZ+swuq7AhT2hSLfPoMnlRROmPFRVC2/zpx6igwZLP+hf1Bi0A9W+nbI3PUFpiJS/IRG5323pfgrt8J8yOCyATrI2dhWA1HWtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kEbir1dE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kEbir1dE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2FB8C116B1
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 09:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715766142;
	bh=bUNZC2J54pS8Pjokmr0lEr6lgBj9eUEI2BpBsPeQXVw=;
	h=To:Subject:From:Date:From;
	b=kEbir1dEUTiS+91XyOeKH/+Np+vDJVAGZhQdyCWre4gFQfjbN7wx+RgheZAqLTckr
	 S8XhEQGjYW91KtyCTt/A1yzgPtqwxWqPYiTBugAJEo5DZTdfP9U2UuhFLxklbkJP0i
	 /RJiZGfb+6GQZBw/uROh+BK6HIODUZXOeF6LlXRhN6O9EG07BusgmpNuI14hqJypU2
	 L0o0pIUc+9WAdTM9VPhZmqWTUc6jAx6NY/lBvTFDVZCvpdzZMjPs4WnCnIM1v+/4iT
	 RPdvPIrjxjo6RjXCLUyTL0fSViNXk37Z53yCMUvoYQg9SHyZCeJqj9PuWiCjXsCld4
	 OWr7zWVqFP4CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1CCDC25B75
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 09:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171576614278.24200.6918838628959678312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edfaff77f1404b3afdd8e0016e7f9d6ab5dee564c3769b6c9febef965dc7f550
Date: Wed, 15 May 2024 09:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715766142
