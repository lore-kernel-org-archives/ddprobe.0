Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09AA423C4E1
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754189994; cv=none; b=iTpHhDH/bzAZ1KoIynsYH+fUfNiA/06Zc7KQ5BG4rWOXhIPuPT/MF/OOTdeRucjom9K2zNhratm3lJaIjUdOcbS7+AOsKSA2hqkNNAZqnaOiDGmnHSPqC3HHkVhOBn6t30PgxLFEtRSudx6d3IvUPT9sj+7L37yX9caXAgePm3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754189994; c=relaxed/simple;
	bh=QUU4kHMdXBMXbAFmJRrv2muP/fMSjX+ca1yMS17BXeQ=;
	h=To:Subject:From:Message-Id:Date; b=sqpIph73wbELYgYySROULDl+xL5cytdhSe4pCW2ZFbs0GDtRkQiNRd9Z0s2v3NX7bmgISip6oqw8unZGD4+S60jN33MNVRt5XofpT2ACuMaJ7kjK2jcJxt3TPb81xq49VeACbAB2mNSeZCgcRYNPH02uundaV8ygvjXJ6iRXl3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kuaaeov3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kuaaeov3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26D7C4CEEF
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754189993;
	bh=QUU4kHMdXBMXbAFmJRrv2muP/fMSjX+ca1yMS17BXeQ=;
	h=To:Subject:From:Date:From;
	b=kuaaeov3OHraXbgkjD2ynXTVpGe9aXGhRImkBtsaArXivhkbu7O2RYS7R0WJSY2lA
	 jzFOShVNTTE+6ic++F3R3iH/weCOBjBQx9OnExzwF8r7T636quq/xwJxyGRa2pvJct
	 jkwZenMv42HY954aSkePzytm9GvWjgFjBCneKJ9Xc4iByfnkY8u9GN/MF4oFrT/F9/
	 ff/HcKr0XozHwxye6SsFl/VBi5GUTtpIvGPaMGGb4mxlSXhh2fbnM7m98SycaDZlRl
	 KkmJPy+niQ/HAxgEqKpD/3lfUUAW0pfohVax5VGOZC2C2juLgtWd9X6AiZVHl3/M9E
	 Y62hhbSeBq9yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903F6C87FD3
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175418999358.347.13580914898835806705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c1d92b2b492cd1194568c14e66c27aa1024a43c092981dffb4b4e65845fb59c
Date: Sun, 03 Aug 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754189993
