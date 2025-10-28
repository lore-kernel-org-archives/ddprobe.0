Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBEA834E750
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761676793; cv=none; b=LfQ5BcTkgVLJ/tikVIbV8gJ1UAPngDA/Z4r1xKpY+dog1Sme05YO1F429H+tzWPUaEudY8YKIIP5vouMDs3hQW98BvWX5oO7ER9K/kK18fUAELc+CQ4plaaSLJOAVFw9tsU85t6UNiw7MPchxQry5JbXApxxyCmifDnEdW1WJVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761676793; c=relaxed/simple;
	bh=35cqSwQ137IdI284kHdfY9K7JR81YHQUzXa+YA5oV3c=;
	h=To:Subject:From:Message-Id:Date; b=cBPl2ENFQ6G0LqvPoPy+bsRY4qtHDXxL4deqR7rJyWzSMTrH5pZdypno/iYfxgtdS/wIJ86XJe8lIvmuXX6atAixcb/9CirCXSjasCEWlb/PLgUxJ02UAsPXVhAWspZk7O8IjZcCAZ3XWZ+8y8fMxeK7HjcbOfB8icVWVFoVvys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W6FLEDiW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W6FLEDiW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CB1C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761676793;
	bh=35cqSwQ137IdI284kHdfY9K7JR81YHQUzXa+YA5oV3c=;
	h=To:Subject:From:Date:From;
	b=W6FLEDiWO5DwhlpQBep6mNgCJip99EX3Hzwjgy8YfsQtYhdUQxbTujx346kJNAWkI
	 z53pK/GvK3nbxe58LBzpy78CcKp5l8MGBFEDc/lQNleyF/MjVqRFdeNnv+Ggz1ho6P
	 4Q4oY9eJmai+AMZMBfLB62kN3u0uTPIKNEKagAJe2TBltt0OKtTgPRbdhSBlQg4Gv6
	 b3In9LfLWxVuGXDgq/+8lyzn0am2VbaiOFLnoaiLFnpRzGXcguNLvFMa56IhCvfx/n
	 VdRcMx5yHaigpje8ak4fjj+gtVAh3yw01CE2biq6b9jEYcwNEHGT2AaruWJSQH6Llr
	 7be8SGhGaub1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92036CCF9E0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176167679358.23035.1898549023780580183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d03f9526e2385d00a5b2dd3efbeae8e4dc3953295bc3451fc5bb7b8c94bcb41d
Date: Tue, 28 Oct 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761676793
