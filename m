Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4902853E0
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790627434; cv=none; b=MamhYcBLlI/RwG3EdHebKJvwIJvK6Ls+r/4ShXawVlOQ0tnvtdUsu41FHfDkx6jxo3QdgnddYyaP9ZY8wL+b0cd0YoFdHUeRG9kF03ogSfJPInJX934myz+I0T9GjgRsrG0BbkXEyD2YblBfJd1yQR6tv2tma2aLqihAqyEMqaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790627434; c=relaxed/simple;
	bh=/HWL62q6mWirMuKAqe230eZ3XqgpQmr8v10RM6BfVVU=;
	h=To:Subject:From:Message-Id:Date; b=A/oIh7ac/9ES4BQiP1zb2quYCfilX3xn7motNfpZwimvRMq1LRAZCy4QPHUs0CiZDiqgMPfTNZvW/MWBoITRqqUdBB11diWgrIvKtzAfCiObTQTvEYl5vWka+jEzp7I4w1hDIhGGYfs/JyMcomlT4KXvtcnMWiykzCFO5VTX++4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JIIsvtrP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JIIsvtrP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE0A9C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790627433;
	bh=/HWL62q6mWirMuKAqe230eZ3XqgpQmr8v10RM6BfVVU=;
	h=To:Subject:From:Date:From;
	b=JIIsvtrPaURLwPjgTQp2dDw/sGOyUnyUftL6ffFQ6xY8+SbdyzRIRL0QO/I/IOwUY
	 /vjIMMPitNgNyDUfotgG/aROs9QuDkxbQ6cSS7zbC00N+hJWb6/JUyRkPouJyjYyUK
	 JZ6ztyuHRbTS12I77tUfGm6YGliOrvQURpQeZ3InR+6/RyUl+OX3I/H93dM11B//4f
	 5BdI50fL+YKV6FvHyuKCnohbzcr633I/jdZWFxGuX1AeTHV+CgCVYw5wI83+WcnW84
	 mNut6sqpFAqOmijCB8HcBFKwkilXRwK1i3M5pYRixnGSZYet2ocsg1pmE+UJ+z39UP
	 gjeHUW/dKWb+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DBECA5FA2
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179062743368.20014.2117925286569156122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5804c3d7f74b0a7e7cbb68fe3a9de89e818b50936c23099012e951d92d87af87
Date: Mon, 28 Sep 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790627433
