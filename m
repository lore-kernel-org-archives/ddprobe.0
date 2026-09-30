Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 430E43546FF
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790761234; cv=none; b=jFtUkbY4XUJ4fBr9M7AuVMzBOhb7KKSedNsDKMvk/1Gz8D4pa+tqrrOE5k62OBivKa7gzrL0OAgtL64BLmUdx8Aqdc/3+AFx2x9KkUYU0wSfUjm3xy96nnH11haXgZBVopOx/3Lj3sL7sBg81GJVKtXw+sqLjERDBaLJmv5qmYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790761234; c=relaxed/simple;
	bh=2m7JqGFDrMyrika7ymx17wsijjClgk31d2khO4ZJXGk=;
	h=To:Subject:From:Message-Id:Date; b=bPDPihbfox4clLcb28aU2sq9WViAJDrYm8xSBpr6prQZ1PsMpx5/YZ8hLhETOz2/vLVpVK0O6BXGUMkgu/g9ekJF6kG4mz3jN2BuuXFHFvakw17hyq0q8O7tDS6Sxbfz5xi/gABtHreC8Qiw0Nd6DDnNVALisSUi7d6+kM35hUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R/GGzsUa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R/GGzsUa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD40EC2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790761233;
	bh=2m7JqGFDrMyrika7ymx17wsijjClgk31d2khO4ZJXGk=;
	h=To:Subject:From:Date:From;
	b=R/GGzsUadaZbl25peoxG5HEpkc/7JeHI7P+qSKZA35yIKmr1wV2rCOT3jswMEurxX
	 LV1VYSQbkUNSbJWR/m4kfBkGjv1tD/cn15wMkOmv2vn12Wfc9770++otgrriVdoPGq
	 TYeEnV9DIt53XxEZN+jlEH1z0n7qGe9dyMyBd1upWJNjj2eOT/EO+JkO63g7GOrjOm
	 LuvFLuLtl0qT17Vp/0DcwPakX4bLE3Y/7uAzDhErmGtQMPyfBMlLu6Uj5IynQeG2aZ
	 v7u+Gzst1Ne3wjN2JysVexWzbSUGVIuZxSyvQapLonD3f5kMU+WCByLEeBFXxaifrL
	 BdsFQx6nyQo/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB458CA5FC1
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179076123369.32287.16750280872142117016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f39ada9d44236b1d66c3ea0f9d284ad5504cd23762feac8dcfd8060092fb670a
Date: Wed, 30 Sep 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790761233
