Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6298D1A6822
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786764634; cv=none; b=m5O/rjqyzUXOjlF2GcYSylgLfh1vKp0zWJanLCbSqBLP71iiVwXE5VfhPcS2/mmP+MKcBofUlAOdKG4OgfR/DurZ5kdpBTPNQLpZRZmn8FTbKdmWJT+0fxWFPlnkhdosv7KGQy0MmjyKdg9UVRgYAjCYM6uB9o0giem7PSq95Gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786764634; c=relaxed/simple;
	bh=tJXjuJ6nVf9KeiNGaK0bGvm95kjh8W227aNmlVj2sA8=;
	h=To:Subject:From:Message-Id:Date; b=KUM9TDPB9RZHP7wZtk/MIWIZGM0ZypPsTh4ikIAmX83KC7NZ361a/vtutfyr3aPyNV4yXNUtroWK7fK9n81OJwNtnqXzN3W840+gnn7H22UB8K1Upnk0niO+ZQDAnJ8gsxCMKxZ53TzodoR3IbBJv/R91LJ4MmaPVZJPI56LJPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j1VTRBYW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j1VTRBYW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D832CC19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786764633;
	bh=tJXjuJ6nVf9KeiNGaK0bGvm95kjh8W227aNmlVj2sA8=;
	h=To:Subject:From:Date:From;
	b=j1VTRBYW5/XJy0gVZA18oJ3EW80dSZv++r6RRomszKbPSiun4gQP/ezV+G+foyfzO
	 CJXoCVEBsmiy9wKGTB18YK1UNs+jMIgcsO+XsTwm3fYm8BbdHc9iTOtqjp+ahjh0qn
	 tEoNg+kWjQKSiuPyYomXZrZPvAQgvBFWu6oeaFTTGNB/XI62JEcXLlWElDtLRMKdih
	 8kvTXfs8Dpz2c2Imo1Y2GexozxjjhggaTD9rzRyWk1iXBOMoq1fPkD4Poaue9HnLpS
	 7S/ELzKuoqBtcyZE7nxMqrFLQ9EPAhc1HzctREX1Q4jno42Y3pevJ2oIbZv0seEIy+
	 h4Q0dfWK0+Sew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B08A7C5AD5A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178676463368.30639.8227066910364916286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a908a7979c14b4a6e15f620a0e7a0062036be82cd28884918ef9c5e688ee2e8e
Date: Sat, 15 Aug 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786764633
