Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BE613C482
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 15:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718464103; cv=none; b=fQoO7Jd1lVgEeR6uoqJIDA6S/De+ag7HQ2un97hgtR6obTcXfAhzQb5ABcu2wCK5gflvtx15pY8Bxg+nChC4JCcwCUd94kupy8R+Kf+lfPd+mDeZoSmET/NDAc0TmGP1HW8Z+O7ZXqcEJcV1E9gCOBADPFa9UP4sVCG773n7Mao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718464103; c=relaxed/simple;
	bh=n8cNe58T85Cy4XAzum8MZNUVgVcmaIddwDfJw+XaXdk=;
	h=To:Subject:From:Message-Id:Date; b=Ylg0e1EGMwOcFLUQOZvVgoLW1j2+XFy96ZJhrkhxSyuZRQTvyXxFBJ7qT4tVa1suAuO+A/D2oN/YepuHzk5OsjaegSlF0hnb01QvKHll8e19oPX3Qk6Sq3ypi6JXOPResX2+LlhPExdvY7Dz0pJg2YSulNoVmhe1bNlkhdigjvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ItIVtxJL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ItIVtxJL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7A67C4AF1C
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 15:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718464102;
	bh=n8cNe58T85Cy4XAzum8MZNUVgVcmaIddwDfJw+XaXdk=;
	h=To:Subject:From:Date:From;
	b=ItIVtxJLasZbTC5Il3C16J41ugPSQnFgQqgBWEBsUBoyMZBENlTDw3CuFqg0OBYSO
	 uzz2LTA/v65pE8zi+IP50DFBhAKp9DtJFTuJMj1WzZspVOZfmwLDTPHsgABsto2rHn
	 zD1DSUYp6jCCyl03/QcKrKmQpnBLp7GGd7U2HFp06XXUDCvGBFCw3Jl0hzZN7ZvJ/R
	 WG9mMO54ciC4Mo2BuGdf9oErDCLgMzHyCGI2n8ZEvXXZiPgldNaBfINnh/N3iSRlD0
	 xMzWG4QtRKLyu+P6Z1PWr5jVtRFmSg29r6QdV7wD17oFqy15Uhb0x2MLw8Gj6WdjgO
	 MXUviMIFOYUcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDC1FC41513
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 15:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171846410282.21777.15297712238077685997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51e077deda1496d683540a540a1f5e6e44ac00770515e60954a44149d128983d
Date: Sat, 15 Jun 2024 15:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718464102
