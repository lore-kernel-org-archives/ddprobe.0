Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA02482EF
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735293354; cv=none; b=J+UN8gJRWJ1jexIP1t0c6yvP68l7eEOOWcwysa1eZNqT6qKl/pnm9jE8nmGrO/EJmxxuinXhn7TuvUVB1uyfyGgTzqh3PX0G9RoThpJ6zCeDVjZnrP8m4DSaeaHXSOltzq06HNljleBZcGzpBY6JOQIs8wW6FScE4NLlVcdgMls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735293354; c=relaxed/simple;
	bh=n1CznV83Z+RuQsgvnyzaq4meLtzfd5HerBD/n3gtAYk=;
	h=To:Subject:From:Message-Id:Date; b=LY2vRZpA6a6F4cFXLNmuoYmGO2Zo/Ns0zCfzRXDbQj9a8rIj5IVz7+jIzHzSLZCUG4zmfo9bsBIuRDZ+u5b/AQPfzMrFtEYpSMv3WuEScExbaetbnaEKkg4DBwHxJJnyUROR1qwBGtyN1oVwEbhkTon8I5Vz6SeN5M6YqzTutfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eQo+PUAf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eQo+PUAf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE2CDC4CED0
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735293353;
	bh=n1CznV83Z+RuQsgvnyzaq4meLtzfd5HerBD/n3gtAYk=;
	h=To:Subject:From:Date:From;
	b=eQo+PUAfySdDjNcHvpDPIoFiTLEjOeZQDCy2WhuKHYym+WUQX0iLTG0lYncjFP0hE
	 MZTRbr+lPgY6Wy+nPc5l9y1kn+ZZThKfnkJfo1erWxi/ENw4K5YJQn5Z+R0Ba6AC50
	 ag8E5Gn0vbY0IoGlah5U2XEDNm4dC6WatEJpMksKlZ0APH+K6SLhAR4f0T5GSTUyAj
	 whDT6J9lrR6Zkh3SM2y8hDMt3suBhgLRq5Piik6NFGyEZomUdEsHsSOT+d6A9b7IOM
	 BZ8x78ESkRcsF7KDbEXdKgMs1BKVxg7opviM9hexhwsmbggqYok9emVZOGtRFyKFV4
	 uF/5SWhO/GJuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962FBE7718B
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173529335360.27818.2191858264053657496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53eec1df82919928e60e69daedfcd617088fb55215579a1c7927328f00dcc0e8
Date: Fri, 27 Dec 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735293353
