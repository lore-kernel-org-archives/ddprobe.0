Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE1713D8A3
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750904996; cv=none; b=b2FK9mlfW/NE/XBttl4o08bAanEUWJtsjsso2DekmYvBjSe16tIJo84RgZTn5WbMmeYtGFuyZlp2lDeUEZn34qfEINXPvqz8O7RT9k5ZFvvZOVq54OdDye7kgCZGPjqrNN6W5Xr7GvFV855PgC7+YJF2j97m7GX4LyZIPAs/YaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750904996; c=relaxed/simple;
	bh=bAdw1UAQbBJOadWPZxAjhDFWmu2OAleBT8xVpP5Ptmg=;
	h=To:Subject:From:Message-Id:Date; b=ahmOO/23HiFrCwEhOorKQXZwXKIv4zWI6N9jdWlNVceOVX8YVZm9C6m2JDIFm/JQfievqsWLV3DCIFi+4jRHibPhqjlAij7da8RZoSU3Kg01imzob6hEoFFRpNTPHHcJTxTH4LnR2Q12GijYO7eYUb76bTlRvcnP0K5B+pnDRLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fhzDxnFT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fhzDxnFT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94FEC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750904993;
	bh=bAdw1UAQbBJOadWPZxAjhDFWmu2OAleBT8xVpP5Ptmg=;
	h=To:Subject:From:Date:From;
	b=fhzDxnFTLqXurSQCOdHmEW5BF/A/sDnZb73TSXnhRx3IT4wkknXz3NRbfOT0b8jal
	 lCAgZawEoXklihM+Vi/mLOzj6Vd9o4meg9pIhQoHflzSqF8uXYMXhujzoJrjCIWps5
	 ej97RQycodZWohepv9LMQS7D7MWWHf4rCQwpC+6An71QNyiVIvDEMV/srpXC0zvsXQ
	 Kl4Jm3HGnKdCH0bL8ApIIKRQUyA3QDQDzkdZlaT9AxtwQZDTKi7S6a35MTpFDIrwrY
	 aBuGwSoSiYgaj4/OUmyda8rbeiKdvEXyd3u/3fsnTmRSiBPGQJSZLBzWHF5bHSNnCK
	 UeWXfJIFF0JUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D50C7EE2A
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175090499359.11002.8269843668449054875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01fd9bcc8e2fee793f856ac891c8487e3de37c9b6ce473417cd93cd6bb36330a
Date: Thu, 26 Jun 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750904993
