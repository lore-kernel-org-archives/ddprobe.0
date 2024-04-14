Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 535BC179BD
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 05:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713074363; cv=none; b=tjP1iEAb1pO/ALu4SqJryRYA3scOhmOxC+I1T1xy3slZ4udmrN5V4a3kOTXUw1TPBxv2wYBGq94sKxedrSH81KRf8aaOLa5kgsaMnqXahleRbjEGmQi+d3VPNrkdF5o+p+gb962ENkmRvFwfJASgtNubV5Phz7qphO46RANPMa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713074363; c=relaxed/simple;
	bh=tMxt5CJZrQNUeOLIpx0RWJMRIm3BGSzXBAmuDIGae5Y=;
	h=To:Subject:From:Message-Id:Date; b=SAmwiKvxoBkSo8l/ZwACJlWjIoVCjG8vbtCgeK4Yo8b0QNeoBcG19jGFpixUiFWiTs4XNRrpxoA5uYdj4j8S8fGnGK4f7UsYdFTb/qEX618un3vjZ8xQAR9qvd67rxtHBHv5QhYna3VxuujzPpNeV9hjRpKSowO4BqV75ILbhTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZSvuhGUM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZSvuhGUM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0BC2C072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 05:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713074362;
	bh=tMxt5CJZrQNUeOLIpx0RWJMRIm3BGSzXBAmuDIGae5Y=;
	h=To:Subject:From:Date:From;
	b=ZSvuhGUMNkY9/RcKmJxsK9T7W4Ui3KYDrKSGEEcO1sePtZ0WCaH1s/vv0QZ7SwkfE
	 RaAf/HFA9nlRutI6VvM9RwD2SqtdCpBD5/84wJGQ22sIYgHq4WKqu9B846zRahcXIx
	 vbi66PQQYu0qwu7++TyUy4+spPmeio9miYGklP28NGW1PTrJ2krdDl+QB+PFQN3bfn
	 455v7RPsflgWihH3DzTLGN/3sK2ERwMGlbPXtojnmu100TUToBT+tGlTgNleSQQN/G
	 YoPQwu5yAPi/zLpRJghvVib18byStKYglxB5Nt7oOHIeU61DWj/+kb9Ynv/BLkqg6C
	 EqLfE30/zj9FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BECCCC4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 05:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171307436277.22420.1684105695096799776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9051e0e4b23793ba8af0fa0626d0cf3843feebc79d2b8c4b4450e83f2c22897
Date: Sun, 14 Apr 2024 05:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713074362
