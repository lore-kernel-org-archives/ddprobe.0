Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42690CA4B
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745149194; cv=none; b=b8dAinvWQ+O2sLvOGD8uf9XqryGmBrlnNymhZk//UAanHmfxF8eUe1kRK0RbyprD6KfpZk0RW1VeyRHcSB8l9P/RqvdPm7V1Ar2Jpe3SHOk+vdapIrAC+2MGp4nh7Nlh83X8jfaDwttnMWZCkCf0v2+nbXHNMkk9Im+Pu7vbEoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745149194; c=relaxed/simple;
	bh=9z9y5n2yRqbEp1dQXXso/M4I6p1oYEfcg0h1NVse58Q=;
	h=To:Subject:From:Message-Id:Date; b=swmYHf0gcpBBHM0bnvsPwhXLXNM1PAMeFSWkaM0Nu+p6sJM0148GcdlNJ1vDed9Uw1ioaf87yi2mYA1q+TEKmZ92iQ7sBuRgkWmJh8YXxUFyMlmPnhdd7dK4u4SiZ2XjmrSayD/wmcGF4XVVFyhrOvmlxJo9TeHo11Bzgp/I2dg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dUiHPj6E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dUiHPj6E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC429C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745149193;
	bh=9z9y5n2yRqbEp1dQXXso/M4I6p1oYEfcg0h1NVse58Q=;
	h=To:Subject:From:Date:From;
	b=dUiHPj6EzcneiefqA3BzSV2BO967N4fpa9NMI74jpYZqczoCD8G10+PO9spWIWiR2
	 8V8mdeA1Lquv0vfTRFMhqWvKsC7F1CVL0RUF9MTjJGCaqOC/C0MUS0JGh53VSmgFDI
	 E08WNCSQC3+E5kmSHmaBaiiw7BC7ceTqrMEjCLT+Y1dm1lRpERjc4OgWsrCTc/luHd
	 PjsaURzDtXjnKHc3yF00m9lmxb9rJFY6M99OPjGR/zuV0ko35zsJTuT/gE99OV/gLM
	 maDSohGso/KCVTRLs15dGLwkET2B2AFgHIOcDL1fCgZCNP2/v2fGITM5FoDHX3WnsL
	 KfFnaYNthT5Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9481EC369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174514919359.32164.4230998125315125758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4f96fcfa574ddb9c8ff148a4766c73a5121d9bc5063ea0ade33705b304f35d2
Date: Sun, 20 Apr 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745149193
