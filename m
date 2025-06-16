Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D55F175A5
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750054196; cv=none; b=u+5BcarGerQA2n3q3LuHAV+ShmFIBLaTu3LvCwJkc7G+Ss8zGhw+/+6ZjteVK1NBfyCL3X/Lo1ZA6kSyuqbYQAnZvRtqqKJoaGckw6bgQof0A/vMhdXLMsxur4cDKPwy9w/UXHlAgsmFGHzHFCBT/1XC/yeYzBH/ZSC4aXAUeu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750054196; c=relaxed/simple;
	bh=9UCLCdCJPem1XRJXM6PE6pq6lsy5TBoHdVP/oe7FNFo=;
	h=To:Subject:From:Message-Id:Date; b=R+l2G4cyr4wRBz7MiShYqpERHdsR+tP5PIdmGB6aJKKqS9xuhCl/l35dqVmiyGQnlyb7m+FY9GfFIXyVv3WTMZ8OH8u/Iy/g3oseTDpqJoi0lvQfmxtK1xoO9e7qmOVwaMPXj7+swxm2RKHUOyGDZFsVYhw0uj1eaO6TkRqt2WI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ueeYk26Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ueeYk26Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8064C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750054193;
	bh=9UCLCdCJPem1XRJXM6PE6pq6lsy5TBoHdVP/oe7FNFo=;
	h=To:Subject:From:Date:From;
	b=ueeYk26YDExSz2eAR0ZcLuGZIv4ObhjJtHoKmTUhuv/hpy/BWoeko8kobEVc4zkQi
	 GO8qpIX2eRhDRPE+o7QLuLk5fBcSaYRsX//BYKh/EgShCyTjE0Syb6MiDl1H0lIyNu
	 5OYSdxgTC+hQRqAXyOjwCC5hBRcnEYi2GeLFUuoggF43KswcXBJhOrJ1UTUgTh4zB5
	 HNBWn7xRvZkHyOosSehn301w55eMiwih9BRFsplmpLW4+9nwez9B1dD6jaNcnrpZBe
	 eTpbvesYpEXDUX0mr+Fh3D5FSKqroFwUzWSurAwHbCF4r9zwROipr5dX5ybXwAbRU/
	 3P4hBTeioXZWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92699C71135
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175005419358.4426.13803717821074507478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30c90ecf3487eb5a9f5c4c4cf551d6ee572394fcc7f8babec89192c6485c3c0b
Date: Mon, 16 Jun 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750054193
