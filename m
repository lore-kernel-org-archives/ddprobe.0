Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD1039D6FC
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 08:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782722914; cv=none; b=ffOe7D0ahOoW1SDxZSlUAzc6At2mra/dH514OYXUwpy5CDzu6vELeUsWSJ0xNhO2Z4VqBCe6cVYR+X90c1VnleTT0VdOssrjA0FMZ1NrM627HSqrL9dOxMUdPLKQTckfJAGqWkRQHm/Gme7jK1Pc/WOQv8dqE3PO7f81jr9MOGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782722914; c=relaxed/simple;
	bh=BEnSTP8ENhpZk9FczywiGJFpHQI6Q43GX3TTm3WkvSs=;
	h=To:Subject:From:Message-Id:Date; b=Oova+qRdEOcMD4SXiqJfWcqVkl/aI6xstnmEy0C/gqfs+9t4MLCDC4QgEJnFPF30nA8C9S4w/EHVnjhVePNH0/yfSO0nzsJDq6rEqZhJCgzW1WGeyn4KBDiPclJAUvV4Az7wdvZEKkqN4G2bniTNn5bhczY98/YeracbL+1A8U8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dTM7PQrD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dTM7PQrD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5D2BC19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 08:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782722913;
	bh=BEnSTP8ENhpZk9FczywiGJFpHQI6Q43GX3TTm3WkvSs=;
	h=To:Subject:From:Date:From;
	b=dTM7PQrDVSMivOdEnV0nygeT1Vg3icuPglXfGl40QJ3hZbf7SsVcp0E4opVXxFcQO
	 Srn7J1JvDE704YJm7dEELTRBNrYqDb21RWAl2XldC4Lf/XVXq3GtL3yuM/Ghu3wJSm
	 R7VdUttWKL7pYJ7QHYDFE9QpwRD6ZDOiosdtr5uRZ3Uy1BNrQBalSEGzdWWLskFoEm
	 DTFKa1Rp62/yybJoOdTCgHQPMBU6uCcY9Df8FZYqIiUkZPxUp+YBEa8fLm/6/Q1qff
	 rQRVB7+6NpiJp4xFcm+C18bHSrtWhIaz96bAuI9C0apN/WMHCNkw3NlvraFaKfXSkL
	 n/gJ8gVgc1zjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E99C43602
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 08:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178272291368.23639.394458398066149594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f68a858b4d5c26621440fcf107440df7b7158ebfd893af7a22a750e717502cf8
Date: Mon, 29 Jun 2026 08:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782722913
