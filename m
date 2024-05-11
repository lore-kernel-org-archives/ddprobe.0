Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E57327457
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 23:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715469743; cv=none; b=DXLNDM9c5UTs50/yYcco8CbItJM/e8vHEPAUnPzWSeeoQYSI1QmHVHEnMlQmkBvU3Yg2aokRFQew7wlLJm+a2Qw/rlYWLBdZoNL/hfUBGe5JPyUk3DAxvtUy3ugVnyLU6X6pz0gEpngozlhm0zIzec+XOq6dcqYSTyHP1Uw6+PY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715469743; c=relaxed/simple;
	bh=icehep5s7rRriuAv3c8bC9GpIuXPe9Y3PkRdhbGELjM=;
	h=To:Subject:From:Message-Id:Date; b=H0KPNP9lDsolU1HVorSOh8ckKVaQuY+BKdSsNj8CvPQ8fS4v8r+lF862gDME1gwoKL5pGuHc1I0hiYMo31skm8l3pbmrOw2Jr1sWMKveO0hdTPTRpnqHt9CEdqbJ5fEG+ullnDr6wLrYwSbseRVIxHaYiT6zIJwjE2LHfrodjkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B2XEGuqL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B2XEGuqL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E480CC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 23:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715469742;
	bh=icehep5s7rRriuAv3c8bC9GpIuXPe9Y3PkRdhbGELjM=;
	h=To:Subject:From:Date:From;
	b=B2XEGuqLgB6GeOFDUx9ip7j31W4ybYoUILtsFHNK5dOB5mLsIbrH09LBM1CWEi2L+
	 X3XodeM6SZAXExqWS7ppuvjiSpqyeT4s1GWLWdHlo09/um75JkHyJW4QM1pRaYfm+Q
	 eDp0NT8+NoV/YHKr3qC+HjD2w3KbOdgL3CqvC5nkzByVTrVPjMa2ukYodL/pK+ABYR
	 J4U+6muSJRfzepqufmXz400P4mzUFacgyEttfLmQxRkD8+HZgfM7lBveZtA25+C+Cx
	 EEr8OVulsBuPzjnUssHSXrCcubf7OztArv9v4kjm2I7gZIvtGT+8JypBprkkwA2dR3
	 h7giOeptNRhtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C64E8C04FFE
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 23:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171546974279.2079.600003297854718674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3381a86e2e9238b1534bb2885511702539f126d884524a15cc4c017d19669085
Date: Sat, 11 May 2024 23:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715469742
