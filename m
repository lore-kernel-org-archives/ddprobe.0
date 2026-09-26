Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E5DC3115A2
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790462434; cv=none; b=J89atODSanVikWwnJjSHqVX8kkQp9iI184eAix/lm8+83rLQ805XIswdELuTQcE1p+ObPhcLpPMwamYY2koifsO9H9yK9ihdK9PofO6H5KtW4YHxGNb9wFd4+UgXECMYNgV/HiKl8M3eOd/Q4R4Tk0XCfc2Vd7M3mUgDrY35W+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790462434; c=relaxed/simple;
	bh=osQFUtPZoQ3w1BnbgrhWYs5N2cjEoP3N5jjTn5rYwP4=;
	h=To:Subject:From:Message-Id:Date; b=UALDx2HeoHTdC79rJG96fL/fp7XQ11b587VbkV7gB8Sx8a0tYVx1dfWkQAgEVIxrgKoF5EAdlYl7F1Uj3nvy/6ogYcMYif+RaEO+lUFRIQvZTxe9UyO6PpXk5mIrpbOiWCLlh93XCIDdT1e28TpNV+DM2dEUTTs1j2qsWFhC8NA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B4TYoH54; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B4TYoH54"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBB3AC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790462433;
	bh=osQFUtPZoQ3w1BnbgrhWYs5N2cjEoP3N5jjTn5rYwP4=;
	h=To:Subject:From:Date:From;
	b=B4TYoH54EuqaSB3/OA2Uc49qqhx7/4ceE7U5nnX845k4bM1GEM4HJ+PMMNj4VCQ/c
	 8F/QAkpL0ePEPbtRoVUD0l2s2ThEN8TuX5MEGim72x9neq9Iuvjd+5H1YS5LxVFf4a
	 ZGM7tpVcMI/MmU+1N2YJcFFHrVz0Xv2utKwaLMaRqR/SZJyIni67JFs4JIGL5rYPkF
	 PaPuqeQhNIuslo6v3hOeU7Coxwuo6guVR1hQixUL7Tjw45xoi+z+k1uh8+vzFGw8GI
	 ML2COxuBQujnzP51Nqgv1CeFzLQbHGRIg6wGAwn93f/yr/Wi5KfiOpmbCGH+se1VSg
	 paLERbpmOvABw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B911EC9832A
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179046243371.14923.4674575161078326260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72c3e23d9a71fe97bd8298765de7b9800dade5603bbe7d5a1336f57ba8446170
Date: Sat, 26 Sep 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790462433
