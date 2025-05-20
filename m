Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36F25217F35
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747779595; cv=none; b=FQwo2FY5KH2bT5/928OK0HxDyndqdP7HPG5PFk/sDJAehfg003CMkPMUy8yza8YnSlUREpw2EFLzgoCObialv7ysJhVRfCixi2zR9ebsWefbpCuW+J9glrB7aye+LWhTY4R/stV5jNHm0Wyo07qlLjTQfD3NnRcnaSH361FhAiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747779595; c=relaxed/simple;
	bh=J9qwpqpPXmga/9QS/J7C3YTnOA4VPjf1RJwhPYVxmOI=;
	h=To:Subject:From:Message-Id:Date; b=dynjyQhDBtW1Ga6TOmhMjZnI5s9eLg1K93lsXnV0T0mIv6Dd2/fdA36H2LMyRu9u2kgEOTdzFtLATdt4ixb4j/Z/vN0vmM2ayCiLUXCrZZBFcFj/Vtwx/fCbu0iyllK7/l/KSzUsOP0iy/ft3qtzeUS5mSJ/PLUm4z9l0nOY/3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BZA8nyY8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BZA8nyY8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2689C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747779593;
	bh=J9qwpqpPXmga/9QS/J7C3YTnOA4VPjf1RJwhPYVxmOI=;
	h=To:Subject:From:Date:From;
	b=BZA8nyY8MJ5QxmPDwIRsvf3tfuOeKDYvCwB6TmdbpiQONwLWGxZJQwWhRMLMn+r+G
	 4K+kd4wUVr8ji0pafMTu4C7eFF8ZW9Lowfy4OKBtaZUAmnbj4K262MNpIXw4lJZGRD
	 gVLkbDOSCffs9LTlKOgfG417zghqeVpve5GcaonJxS8smkGoFE1J588FhQFzHJXFvt
	 syeWN7EIGcBo0UWnw6p0TfPtO/KnwBZbcsp0VaNeeodKzDD6qmHFwIwOi9guzFGChh
	 TfOZFwMFxXzWcUNT0LGRM0Z9q4ovX4AllPKcg9Lx9lbfecHJKHydz6HPbWDK9kEM9E
	 O6PvP6WyAFuBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90730C3DA6D
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174777959357.16752.11436079558485249421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b3572750ad8d35d1678f1abcba4a8f470b8ee4414394ac772174eaadf36ab0e
Date: Tue, 20 May 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747779593
