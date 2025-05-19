Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA16199931
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747671595; cv=none; b=Dm7Jc44HrPa8KhlpfM/EtYes+R77j74SFUMdTdxtg39YiHTa7Lnb6zHiXOBOtXPAo96fBzc/h2QDq/9UyHkwZWdnB+x76ZWHfx3667BxozSn3kEA/BI5VLllFLYTuR9wC80kWGCy1Ana0BmMPD3CzvSSPRjt0CQY1ByuxGpDSNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747671595; c=relaxed/simple;
	bh=gZ6ellZ6rDPO9chHY22TdwJZRyBF2IPwmjP+L05HG1M=;
	h=To:Subject:From:Message-Id:Date; b=j/efyGUMxw63rcsvg/RbNARN+pNHE4tDnEvzd6jSKz8qotvrjSAfItyMq4BIAgbZkXqLEkNFg5WbSMZxtkwOWTJCX76bkm7soZqFDEgZW5PRgS7FLKTEGXZuWnivIFAcADADFwmk1tfWViPqvfjncHaiNP6g5R1Fv6L9uGJ9XLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KF9J+O3o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KF9J+O3o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF13C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747671593;
	bh=gZ6ellZ6rDPO9chHY22TdwJZRyBF2IPwmjP+L05HG1M=;
	h=To:Subject:From:Date:From;
	b=KF9J+O3o0wkfFLW3QWGuIFPkIwutwehmgVerL2aWdVPt/ZRhedsItX44sd4slu3Yz
	 fe4jBlhG0TmfxWFaoODDx5NvrGHLTn45MhVz234QREL9PSh70abUhuOU+s1RlOy0/y
	 Cxf6hqFN8oiEOjjGbeVft0zCXibJBqXiEwbM5LRVk8NWbbCGUtlfQcIYqOVQPMGgxl
	 KPgxCZn5yUbhd/p5ZBfoa3bt2M+XuNwymrVU76bQcWWmFkiqQSXefHDGaYRtyRCeOv
	 CLzJ+GO5/MwJtpZgdJzLF6B2MRTnqGobUmFq0xolF6k4tquWiplCXu94stN5rIfdbs
	 A8Zzgk2AqvFPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E849C2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174767159357.29775.9734600336600153168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70e03da5a43c05888ae145a006d4736065ad3b292a4b9b56e054baa3bce0910a
Date: Mon, 19 May 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747671593
