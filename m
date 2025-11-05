Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2AF207A0B
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762315194; cv=none; b=iI8R4KdC/2jCqkEOu2D3LF74lLkySaKhi0X3F2x+F1jBD7P266HxzTO4A0KOCkJjRJUyYMYyIXtFS84bQo3YydshJpAAhkMXL0FXJUHQYf+9Iu7atSwiuAsCmpf51lA6ZRd58AEkclDTtnR4DQC4pVpB6Bb4SrhK2UeHTZekxs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762315194; c=relaxed/simple;
	bh=c6/RmHzVX/b4Y5lOTQxKJL4NzLnBXPMhHXML0mcuq3E=;
	h=To:Subject:From:Message-Id:Date; b=G3TjXgAhuve7odoDijJf+wMeMiwhYWACT26ipw/hgGaMZquQtGL9J07woYb0hDOA/FanpGFtdLWv7iTZOexXf7nELTfchIIChIBsg3i9s8CQajPXGBpYXWGC0yMG0sOpWOmWQBznUw7thVBlz0579rTRsfelSfqFLRg7Oh6pPqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r7QxSL6i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r7QxSL6i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4419C16AAE
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762315193;
	bh=c6/RmHzVX/b4Y5lOTQxKJL4NzLnBXPMhHXML0mcuq3E=;
	h=To:Subject:From:Date:From;
	b=r7QxSL6iD+YVt+3iwSwplyTYcyQWGWpibm6A1ZDgYUxY8J5Ko1kMNzY1ZAjnCFsBX
	 wb3n+zxxGL7fEoOieR7ySt3b/ypx9PQl9QepW0BoHhZotPyQZJwx7MOwB+MXC/SITk
	 XKyhFATi47rBTjr4u37O0qAJqKZgOEPqXy2NLtVIL8DZ4ij6cEky06lZ76g7vA4fmJ
	 GxQaGa/C89lD1qMaVcEu5ApqfMqXkJE3+6axvzpvHXb8I45sL/l8n4cWdPOuHspwl5
	 ZCHJ6EACAiNNHOfgVZCx6UEn93+7gkFMrXSj2nxFyqY1fh3wEfmxqDJnMBibXz5+bI
	 DeArSilRGVaLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1EB7CCFA15
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176231519363.24181.823896092749899628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53f67a37a021e821957f7595d7e91b17c508c797ffca7d057c266c3158185c48
Date: Wed, 05 Nov 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762315193
