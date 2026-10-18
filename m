Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C6B12868AB
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792287634; cv=none; b=djoAymk4mO/cC9W7J0Yrtm60ohWlZA/5bmriV3TQiBJXpD7Pa/FbYOSjxAREGFsbNYkkb7bvX6oxSlpvgcfaGSVi/h1njp8FNZ9dZfo2PYMuGKHjc4VrNQ23m0gH34OknsHXR/y+DaCJMTjNJEfobB6gQN+3EDW3Fm5ZC/55Tzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792287634; c=relaxed/simple;
	bh=H3XSk/Wr+ENMiehKXgCfZpWLUAcm19uowbvAP4TIeP0=;
	h=To:Subject:From:Message-Id:Date; b=lwerVJqk7nvUNlhhrkKuKIa/GpTix8re4jzYX0K6s0ZGt3t/xQ+c7PALpd8q89Zq2safOVpiqE2hGYAxuKeApLSQv5AvK5lSh5sWBjRPqpiXrtnaOw4MFLRHctkZFatZxmDkmwqrVQFMd6FsosSB4sBjd5ugUJ7v8zSczUuWwTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=az0tbhPQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="az0tbhPQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6466C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792287633;
	bh=H3XSk/Wr+ENMiehKXgCfZpWLUAcm19uowbvAP4TIeP0=;
	h=To:Subject:From:Date:From;
	b=az0tbhPQYjNuT0avOC/gTpp8wCWdiVmOV+jZcAOWQGTE/GiYePtYcWFyxV8hCszyv
	 dxt/HoaCQLAGFZs2ETI3n1yB1E3OH9Y4wyHgCiK0VxRLQ3wDep92TM6KxdrSTz+yhP
	 p8D86PvyEIBE4C37uBwbXZkvrG5r+hYTcVoSipFLR6KSi5xNuQ+ciDnzdtqh6toljI
	 VAXKLn0hS/KLDSA1PmY/SpPo+3njb5w4/a1ErysSeXQSgE6HEaDrc8RLzRaqZL4MPZ
	 k9iVClR1dSxv18B6d73nIwh0h2ZIemd1WXNCt/xKeguwiqRfynDqbWc2yRHMcXAvIu
	 BAu4kwJEoQ5jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3489CCF2C4
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179228763369.32645.3628922621955100497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4368f1709ad975e73c77efaf80d47f36b5d1a60dd766fbfefc4c0b9a4c4c4417
Date: Sun, 18 Oct 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792287633
