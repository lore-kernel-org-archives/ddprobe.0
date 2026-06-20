Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41350246770
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 16:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781974594; cv=none; b=E7AaFEquxUgUyEosTDdEJxE2fhtP48nF0YP0O8GuP0JpM/tpUN3OS7gAbAMNx59VqQIQCMYnFKMf2dj0SMdaXdx0OGu8zSER2k5fBgqWjFykGmB4twRNaKFFHo8rJgJ4XRWRoTUYG0LwbJPflp/QB/MXql4vEt+b31lYBDoFEdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781974594; c=relaxed/simple;
	bh=b+hwZ7LJZ671DswsDfMKnW2x1+J2ppnhELpV8+9R6IE=;
	h=To:Subject:From:Message-Id:Date; b=dNlw8jvC+Wba4IbzLdNrIvkEj7BH11wqj/XbDK3s+664eCBtJ58evY78g09Kx8cymUWh3Tsey+1cFpNFI14oygL7YbaXOe4+HgiJjvxgQJ+uNB0s7Lz0qiroxtnGl7hlbusRfP5GlafcjcnS+hETevF/e3CGfubFxdNy4HStP/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HiSxU5gl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HiSxU5gl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D720DC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 16:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781974593;
	bh=b+hwZ7LJZ671DswsDfMKnW2x1+J2ppnhELpV8+9R6IE=;
	h=To:Subject:From:Date:From;
	b=HiSxU5glo/a5xpF+g4y4tNu0wp0QDYcD5Cib9nsBLBWOogQV4sP92gWtAGIj31dHy
	 3tMFzHIPUkiAuXmg6G5c18NIP8MPA00uOAYDiayXERCJvYZuX6rHN9bip9U/I/x4kx
	 QJxmS50oAgv/1jPUQRHIw69Ajh39+f17AuUJec7D5sKgQWW6QeZvOuH3CRM4qs9Y8K
	 06mgdTS0W5ysP+NBNQ1xwxfvyL4u48e2n1rC1f8Du+/OPDkPLL7Ul+fmJCOxJ4sb5F
	 gRu4czRZAa5ks151fkSpBXBfXK7L0b/gvonjrvdrT3id9bs1g0nsFtviXrgcgYfbRa
	 dKrswFVMtc8/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B180CCD98F2
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 16:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178197459370.21122.12661462884574402879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 699e4add23a192f190bb6a2a6d3a797c875aa13317f95c52d349508aa6425eae
Date: Sat, 20 Jun 2026 16:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781974593
