Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37954D512
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721687754; cv=none; b=h4GWMAwIm/rD+SJvGhtMIF/Zr8pytWpVLzcgVkIl0Ehn4Ekb1gi+EHklXNKrQ5ShQ1Xw+kMD0v3j8wlIgxt7hh/HUPAcKHo9tQ2Y4zpGjpUxciJhpOTz+6wJ/lGbE6cBAYmBkTFBdGWftQ64zWvMeB8mtJjpczPpfNFLQGon8zs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721687754; c=relaxed/simple;
	bh=0zeTVcPB/euI76cxhKNWj7IMzS675Xdyh4Ov1cin7JE=;
	h=To:Subject:From:Message-Id:Date; b=n1DUD4EoWk4RYpW+k3UNpY48gmd4E9qmGdXWKQfW/AS+jROeB+GjSan7ejuJBEKzIVeHUPJ6IFZFnW7A2PvB0Ml16G4nt//6nbqYqjMyM0qO+29OE9aQx0dOJPTyPsIMAvJgmR21mlrTQTbV0aGC4TcgHAZpZJ2aJBA59r6WpJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jCCh9s39; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jCCh9s39"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB52C116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721687753;
	bh=0zeTVcPB/euI76cxhKNWj7IMzS675Xdyh4Ov1cin7JE=;
	h=To:Subject:From:Date:From;
	b=jCCh9s39AVV+er2ubD0XcT5mMA2chhI2xnCG0HVTZDgR9YcuQ1/czuq1vltgDlmNw
	 Icyc6VOdEpHDT3gDfkqXYJaOee8L6pSrDYPxi718vmkVEKS1yjD75C7P0O4rJ9dop4
	 7oqC+o0Emw+j96UGiyltAeeXx+KDbirEB5DbwGVQ4BH7MB/P7ElcEuaNmzkGFEC6OF
	 sa8pBh1hjTT3OrPKhX7K5dWvcXTF3gaoUHb1CpBHrLLSdVkFZDA4h1ZQ/urP98u1H5
	 NkBMX2NSFNTioZ6hPOnkkCyP17SDG/xxZHlYJCx2FGRaI3Nh7vNFzz6t1+kfHat+yl
	 9QVC/gkyE/DNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934E8C3DA59
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172168775359.13126.2380161648820666305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36a20e287eed2d05cf7a1684b468d50b2325c00b8917877088f33621a18eee93
Date: Mon, 22 Jul 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721687753
