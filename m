Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FF661B424F
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759034394; cv=none; b=ON/iXWCx/9ULsy6jjsm0At2Em235pEupPXrPPLX6IpjBLyrzjm41dqqeasP7ECAAcOg1uygMgreNdAM++dec93TJdqvDWjqsnTtd6Yc/HuCfuHyCVH/HoT28fc1mEHq3Dx5GPH0JJc8hWzIWbquBm+WsmZqitxGpxHJx0uJJ/1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759034394; c=relaxed/simple;
	bh=Zdg67NFjvvmmEGGmFjlRaUhJ7OUrWbA1zRv/LdgvvXM=;
	h=To:Subject:From:Message-Id:Date; b=eLybYOa2z3+EVVfYh3idEkzXBLzDCbHIS6cojkLGNdeVtrZeLdHaHg3C9TGf+8Lb/Czyfn5OAzHlyIhchXTJ+AZ9ujOoJvgUF4AKE86mYiFSyy4x7aq3P8oWahQQOwwguqiYUJLfnNBj1+CMXWimdsWJAtKyesl1iulkPUOVb14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sqT5VU+l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sqT5VU+l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DD8C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759034393;
	bh=Zdg67NFjvvmmEGGmFjlRaUhJ7OUrWbA1zRv/LdgvvXM=;
	h=To:Subject:From:Date:From;
	b=sqT5VU+lyITMD9RB+yiNsoKTT+dO6Q499CNhTiy+++BuSoUYN1ueBeeqxo6TOSPsU
	 5SW84SXzJFNHSb+cjXY7d9EbmNE6gfRbxHQ6i7es7pmzB6iaUO0jITA4Gkl6FAhVmv
	 CX+Oy1eg7AHwblH/mUX/DppVvUyTV216Z2r+s49oB0OH86Z3zOR1EAvKJxRgHcRm0K
	 2c5Q2Ejy6KK7HqQ//U/tUe3Hq1ga3jv9S6jjiddLTkzSm9P/nIjsr8zeO41fV/Bfiy
	 ZkCcVikU+KWgEbiahd25FZ8oUQ0UVdgqzKWaGFk8TMky/wtiWnXctugtYzIIeda8zE
	 I7hEDRVqqrj5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931A8CAC5B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175903439359.15856.9102304282021066711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cc6d1f3721728dfda598117e9b9da6836a6745075da7a17e5ec1e5aa8883f30
Date: Sun, 28 Sep 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759034393
