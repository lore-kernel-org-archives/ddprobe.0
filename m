Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 690F013CFBC
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 12:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719406403; cv=none; b=HDYzNTGRr94Q8aZP66EEAtl6slBRLRXDL0usYsTKMRbFB8Cl/f/PaZTpI9hhneuZ14X/hCTWP4ds953RLVZbQ4ePQe7nnRSKCR/4iOIbVsqoANfMoCcKgEjm4yPcWE+un/lGrU/vi7iZAUfkXgSFvOwxi+sJ3o/PTRbDam9M/EU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719406403; c=relaxed/simple;
	bh=xQAFOirnTr0hPRgLzy0ws2KiAYvmsxnJcLXrZcJM1GI=;
	h=To:Subject:From:Message-Id:Date; b=lphvOH449zR1omt5wc9kHP0iN2QgOqXd5J4gbX0CFcBaKHSVLiI1YfMY9rPmMaLY9wziEHpQG30JqjBvFPkHadzW/RZN1AvsO2d0X2RmEm6vYToHbsJTmlmao15PtLvPXuDFho2hQLURiTcdGZPBvbJVgxZxc0+eagwyKHaT2P0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H2/1abvG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H2/1abvG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC2F6C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 12:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719406402;
	bh=xQAFOirnTr0hPRgLzy0ws2KiAYvmsxnJcLXrZcJM1GI=;
	h=To:Subject:From:Date:From;
	b=H2/1abvGJKYzf+ZZAv/l+PwTpswyyZ4BnXepNIL3VSf7L+F7pddge/B3g0hPHv79L
	 X7zgx1/ST8AU92upUNFly9XYQ7F7HemrPvgZz1e3pETp8e9hMV8qX0X9XNAWRmpBFI
	 d2Z+ebar4wKTR/ltyW2EdOv4w6A4sjnb2MZOB6ZTV5Y40w8vZpiidpgN9cOlrfiKhM
	 oVC5t4elKDOsulH1HnNJCjEJG5qHBSBGfp14KKppIPyx9xq/4ZcUmzsCqtthl7zqiK
	 uDUWRPg3+ujGMBkVnAFhtMhtP5DvajSFY0DUso70eCUSFaLJBz/U//FUcl4gBZ0I+0
	 9JWtfZVVbmXoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6DA0C27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 12:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171940640280.25515.13847000261212895025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edce85b040b0109707fe34ba526c4da0359c93251b5864437e4789ff60ce01fa
Date: Wed, 26 Jun 2024 12:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719406402
