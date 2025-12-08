Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E0CC81ACA
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 08:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765183374; cv=none; b=V90aKIMVNWER2RLmfmhrbJtcen/i8QNAXZkEwmxIy0yRVFdDasPKilwVk4vUjiZkmdIYMOHK+EcKMpuW5wKRPCVUIBFNoBLppgSnbKW0gBpdQZqVoWQrZeetS/kEcJmVbWqz1UzSIRN9w2EtsU+aGy36jDHVZZ7JHEayak77xp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765183374; c=relaxed/simple;
	bh=zKObXF3wx8rONu9fPDtxyKTfATyOsJjWLJ+ehe/ib5s=;
	h=To:Subject:From:Message-Id:Date; b=m0oEPdc+o8XulK1j9fqpiqkyebXcx/68QV3dILwtTPHG0yQ7ckTyPUvqPZ9huI4fk7FG0P9cMYgZFPZT20nkdHGDSQwdg5Mhp8U1CCW6j9ivYSz9ow3gJ95QB1195HKrK0OpJCyWpgt5czMrM1FOv8yovlFl/8R0JnPl5wEJ1lI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OaVdDyy6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OaVdDyy6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25FAC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 08:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765183373;
	bh=zKObXF3wx8rONu9fPDtxyKTfATyOsJjWLJ+ehe/ib5s=;
	h=To:Subject:From:Date:From;
	b=OaVdDyy6fxjnimfNCZ2lNsRloxppI0lWrGm6x3mf/ifvcKuuT09i70csUEAmHdJ63
	 7AccLgllqqlhV484G/E1B7lZtNYYx9/iJtgKG6TGfuEHl+m+Lm/Nq+rqk8JyXbZEW4
	 bTCisJO99NBcprYSF6tn4U0fQGNwiksPIduXugobG+Kr036OTGGVsREEtOUZDob37q
	 LDgWKlklWeKognb5UecvQRHBac7lvygQD6LK09gc+yzEucGTvBEUwbPiQ5/IWAMWtH
	 hHILKLlQH6xhBQMi6PQ4wLQEXEiLYI+AiU5UeMC9YVI7tescRX5rzbsEaeAjNc4qSO
	 V5uwQg5MYnWOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9153BD3ABEF
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 08:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176518337358.23360.11612678907493058523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5ad2aa3bfb7a726b69f64e7c688c2bec492369f0868cd186a4f6371593c8a4a
Date: Mon, 08 Dec 2025 08:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765183373
