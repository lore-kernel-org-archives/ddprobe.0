Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F1F02D63F9
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753113594; cv=none; b=ftBsOJ/18+W97f/BGqhlDzt8s6sRj6sHG7ZZVmHVYnWSYQsSxa7XBAqhXpxQBWfP0kYilKzUEDqyb7ZkFuCkZ52agX4tE3PcQFLQyNJFKOWtYPba4XEYUx+Usp3qup8RVbvEpUZkItFt/HwC+gzA/7TGM8p2WON1WpMQWAJ1MVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753113594; c=relaxed/simple;
	bh=Yf3HsOpiX6wuTOtDaL8AG+4ceLJQ79q5tQqNWe6/2II=;
	h=To:Subject:From:Message-Id:Date; b=I7RdILVW59JCCW8qhPxDkclkJi6Wk8tT+HDGLXvx53/gY2CejxvFod8fPEPs0h4Ug1XFImAyY7GCbgEEN2ekoXmROcvfoIvwtBZQO8jw6bUwTc26mbNsJdG2VrXnjL1nsf4zOP6Oerz7ueNiot1u7I+36+5kyz4lj0fy2VNRzoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XMBa9HUC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XMBa9HUC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07E8C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753113593;
	bh=Yf3HsOpiX6wuTOtDaL8AG+4ceLJQ79q5tQqNWe6/2II=;
	h=To:Subject:From:Date:From;
	b=XMBa9HUCmhgDjFBPH55CR3Z5i4RarEOxA2yKinYM9WM19tjZ5x/+gIWkc/rC6DvMz
	 dCE4MHFfo41Nn/IglFrBqNa1J9h6M4zARy4vxd7ny3dSmcg/xWpnKYasDFWdSEL1um
	 FMMhglZn+6zSyQlCRd4XwdFY+eGD9j7L5CaplRTGI0pwQhhYjQ3syS7eeT2+GB3BHN
	 rm98fdxYA5dDKBBPY0iiuRYXEfQ/gwxJPNkm6V3vIpwmiO/c5cMLlW3oqMxXueaY8+
	 8r4+XLNJ6u2QtQkv+jtEGCZTtiP755/DXnLzt9QVZYhhyJvYcrSCb7r7PtFIWdlIm5
	 nfQKoVNniVVZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD4BC83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175311359358.11955.15507797834096883197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31b544aae1add5b18319e1b44f7926a545c6292472f8c79faa6339f0ebfcdf8d
Date: Mon, 21 Jul 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753113593
