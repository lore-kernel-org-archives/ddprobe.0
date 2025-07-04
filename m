Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16E8B285CBC
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751627394; cv=none; b=PVGATLiAzFcjwYZ0ulUGivZHRzLKXj7JOKvU/qSJNh1igUYv1BKm609LPVLeSSa6sl2vdy6S+Ggyr7Rx8l+DMCMSXGu9bYtloyWtKuzgZKDQ3UgmrfAhVc0u1tBiTtQWqOoGGU8DhIDuc8VRpYITf590kyUgCilisBvctyscq0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751627394; c=relaxed/simple;
	bh=abgzNmIrmJAAvY0kx/w3arF0B2GKykfS68Hw7vAurRc=;
	h=To:Subject:From:Message-Id:Date; b=Ry+bKDl0W7jrjUULZc/AZN9YQUBwVIFH0oaqzwJ+NuP1Vi+XOr4CS4obwq26cI0qF6H7OWo7Mka4vrJECxPFyNyAjUA6XyRH7iEy406ogt216dbjOh1ecnBA5OAPDfIIw0GzOgr+EIgQBThz5CtKX33PBDkIA678C2dGF7wFhcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MiwBSUjv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MiwBSUjv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F155C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751627393;
	bh=abgzNmIrmJAAvY0kx/w3arF0B2GKykfS68Hw7vAurRc=;
	h=To:Subject:From:Date:From;
	b=MiwBSUjvIbses2yC0wI8/uKaFjhNKd9c/76VX06Nv79FMGX9DD3o96GsnajforWbu
	 8i02gJM6p+JlUIqIrIKlCYT1u1BoXcmeCrGlkK/zS7g3uxWYLwlQia9BdIFIaC0ik/
	 6dNA87nlzmg3NnIH5plakVeDkRLq6K/DoUTT7AS+JNl/t2qbypaBDKRPPajKZdcSwr
	 gDw45tEnCqmpwldFk6CpwiS5r/WzvccRHQGDtpHL0tPsTK6/pAKG490nGBwm3OIlca
	 Hc7z8h67TXjZbdFIh5dRJ9PTQD/GhOo8BJucR29oHatmRTUA/fa2FQX4eNyL2GVy3n
	 s2RMsJlaqHMJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DE79C8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175162739357.16006.2487555915590655492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7911aaebbc9f6302d33622c062ad936b5b5726f16fa7aedfed2fd3ebfa8a64da
Date: Fri, 04 Jul 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751627393
