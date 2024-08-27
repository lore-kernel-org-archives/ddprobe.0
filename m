Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2480A1D47B4
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724802954; cv=none; b=u+Alw9HQha1DL1eAqYVCdr2jBqBiNFBnmpVWzqHYg0Z6tnojUNDrJ/3O+4oMOuNGHW7zsh73R6U5uNHR5ilRy3qKxjsKmLDqL/v55klUZS+5iQiUK36BaFOFDS8FPMlzM7CM+4rYS+gJ3+8aYbrSHPXRHAjdzIq2W3T7UCOVi0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724802954; c=relaxed/simple;
	bh=75bClV2FmJkFWB1ahAwanps0qFAWRWQ1P69dnPkb2Qc=;
	h=To:Subject:From:Message-Id:Date; b=m40s64AeI+AnunLC9dQHCwXh3AWHQEgQ20hY6MXUY5abbSHMANHQU2oa+gajesV0jMRt0yWSVRai6MeguNZ/U7TnVLa0j0VobrLTC3LOdRtnL5dna7bZcYdGgBy1SqjQPXvyvE2DlctzxyOtvyryNR7DvUBmibhFmkpME2EfnJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bK/SJLL0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bK/SJLL0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B5FC32786
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724802953;
	bh=75bClV2FmJkFWB1ahAwanps0qFAWRWQ1P69dnPkb2Qc=;
	h=To:Subject:From:Date:From;
	b=bK/SJLL0govvLZlga8GvKne9yU6tWIlI7GIiZEkufJ7X0zAoXV8zg+ZWFEwsFp+pq
	 it0yGLw6nolFIf99gtDo5IrzgHjLwZv/Cc3hdHKyB0uIMJXSfppL2Yle3/zG0S/Uw3
	 2mrw1qVIbtFa+BGWWwq9GSSeKg4byO+PvM1vlZLqdFqOzmN8xMXBixhg7THxS/8/m+
	 1XaXkoam6uba1p3xicK12rHna+v/BNpS0l3uzlHeXybgwD4V9g1RkDQik4GN0EweWR
	 3VS4l+KiT7Uu3b/Pn/dg+k+jXKmw/HmKlqp0SuvhH6c2ffXKxiceuI7KdXY/j/N679
	 +bTDu0NPxnXZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947A1C54744
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172480295358.32383.12972610115482388753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19fa01c6bd2730cfca41a6a616f7fcac2dae46b4114fe956eb3c53e0822dd448
Date: Tue, 27 Aug 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724802953
