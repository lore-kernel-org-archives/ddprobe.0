Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283922253FB
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749624594; cv=none; b=pGmk3/3p1vHnLe8dC1ad1G4zegD7fK7ikBQdC4Pp0CmX9DfV2icLjFE1R7HClq0+YPU6WjrPWteJxLZJFlC0lKJA0FE3Rb5AXRbUI51bQNRBQPCJS0P4gf50oXFXtOIcgUeInNmtC7gzh5fo61jqHBCs6pt0fZSce2nE/sP4lgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749624594; c=relaxed/simple;
	bh=GpV1d+VguqX5ENGcAU2z7YpUk0LIlWE2ZuewQp6A+fk=;
	h=To:Subject:From:Message-Id:Date; b=BF6KptAcFD4rU6IRPm0Vhy0y17CbOxnMgUe3PgZMs9mR6Q1ENtpdfvYpm8SaKeOn49vdDKfHqc50GU8e68QMtRbhBNdYvbt58/1a69A1dshSgNz53sRwn0L5v19mV7lVNKBRU6yMFdk1310q3meYLQ08IMDOL1FzYUu9tkz+Lgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pxMiwVnZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pxMiwVnZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA967C4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749624593;
	bh=GpV1d+VguqX5ENGcAU2z7YpUk0LIlWE2ZuewQp6A+fk=;
	h=To:Subject:From:Date:From;
	b=pxMiwVnZXypRyVAWYugUUWwSzBS03l4aM9+5o8byw85+HaFfd7gw4dwgqtNAN95RY
	 hqmbX3Rgt1OdDcBV1qZ3bD1BiUOeJMBZos+7oyNfmyGYPEAnGfJbSF+B8wtnPsS79b
	 UmHV99RdtTxn3M2P5+rsWxtpvd7bw6B7CLDrgxleVHMjCevHHpnClugKH3hWBGJghG
	 9oUDxiQ2GclqDIWPxSK6crJMyKBFUfh6d7Y/8yZhXN4svBQlHNZ5aSTyFSLtm7nlXv
	 M6IU0eDZC/HeLxdM8PoH9Orxn7f7NkX5elH7ApBsupi8qsReIjf77jyNddQR2CjyC8
	 +0WRglTo5b7tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BB4C61CE7
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174962459358.31886.12957949191100935799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a25397d95eb39d19c23ce3c4ac60f2557f6857bfd7d8305c7722be74f8746956
Date: Wed, 11 Jun 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749624593
