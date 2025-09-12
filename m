Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1730B26B756
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757669394; cv=none; b=EK/zFfJ8O4puJRWQvJyUij7dyOKGQrA1FZGUJsS5uIhl2Xooq4mkUWQnhhzoCescY8sDxEvn9XLCQDApwTDrnOc1WWvrDDhCyIo8X0NlIvBmNBGZU9zDJk2mksvvq64zbcoAHRHLmZFCYH4Xcn5gsRKtaw17o2op+bVyNDWVrgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757669394; c=relaxed/simple;
	bh=yQc/NKXy6XppVaaAZX9fC6FyswGg5yp1JVGnxfsgRiw=;
	h=To:Subject:From:Message-Id:Date; b=CYRC2pe5UBGqC0wlW+qwov1D/5GzM/irTexxyPJhsqJ8S6KddixrEi1sF9LncaFvAMxe+wM7wsrb7PytHmt/rsaJv26vdp7MjoTjNz5E+aie2qVkW/JuwKpwV0PSOM+gZqwN2C03BOCbFd1cm2fA9XPCLnOWeO/U1jZR+wvn/hs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BSf4+sWP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BSf4+sWP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F094C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757669393;
	bh=yQc/NKXy6XppVaaAZX9fC6FyswGg5yp1JVGnxfsgRiw=;
	h=To:Subject:From:Date:From;
	b=BSf4+sWPDPD5SRsQ22Zc2CkJKipphC2kDTPM/lL3sx18Gdvx3o8IskhsrpOz0qLtX
	 xh+YlYo+0FoLSBW666meT+yWxv/SRCz79x0lcmIsAtwT0uF87mOemadJu1DV8lNRuR
	 0ovTg6W86VkcBM8IoeV7Md2E6J+klk1CTEM5utTy4tLTGUqKJ8I+tASMzxs64wofR5
	 A8rFS+liItbP3Vb6pUVm9oOjK4S6inMjhOjTnkxeEhORXCjSdxoWrDI3a6ZRZ0J5Nv
	 OcZ50OW5ut4QlvAs3JU3UfFTyqxh33XpM0TbxshTv9yA7MFHs5LuIiTQeE4sbIwisr
	 CbEU6e46kNNbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBB0CA101F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175766939357.26709.5031441024599596600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 916432f10d4119b0f1eab6cb1699d0db104a20201f620475a5e30f5d83bb6ef2
Date: Fri, 12 Sep 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757669393
