Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1D41F30A4
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 06:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768113834; cv=none; b=N4iwwkxqeEXcTgv2Z1Tcv87ulfbIj5mhIv3sAkIu51XK/FVybAQGUyas04qeRIzI1VRF7U6PtxT706/2+KPMTwzALxVcwKV0DW4DOg1mNkODio66JaLlcm8BMnYLwzTI5bxTRDerhU17Zrmhm0ZPLYmaVDzhVbhN/IE0nZQuvK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768113834; c=relaxed/simple;
	bh=xJZFMdzHSOQCax3bWzGeDOAjFCcsAPNpSRdKTp/HwOU=;
	h=To:Subject:From:Message-Id:Date; b=nSQJvKAe2FucaItixZynWz9/mIXByvEfOc1+hMt7t3B1tfMpiPKtXcpJYVGBtxzLy4etkBIRQN0h99SUgo4nf9djLIt3m7XZYyFiHNk1Zua4JyheDfMze7iAe+x4CWuYKYAefC4xoshPwJ9ICpcaNsEb7JFtVLrhmXPjw08D3Hk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nx3wkalH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nx3wkalH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6500C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 06:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768113833;
	bh=xJZFMdzHSOQCax3bWzGeDOAjFCcsAPNpSRdKTp/HwOU=;
	h=To:Subject:From:Date:From;
	b=nx3wkalHVrN7SF1OiZ1lhSb0SsqNRXUmJsaHzm07yEcYidiBOPj2aAHz3Bgti6SA6
	 qFaJt3K79RDjh5hcaWIuIPdVDWigG4bbPyx0/cK9bukMAeEAqq7oe9/VtBG8CwHDCf
	 UUZOfMsFUfSwdaXh7zxcdLRU+Jv26bZ0/P+mUE95fZZAsdBmhcC0dKYfUNYzOWsna2
	 bAoW5q9cRiCxAUGJYRooSbdszI82VnbZCN9N9tdFo3vLX2Mi+gEFZgzOyGyHBdYLmv
	 kQoNmv7jN1oc+GMBLMdAFyubLnxO4T+2q5lVD5Y+8bXcG0/tA5Zi33uyH51OZYbhLH
	 3QS63PkrgTDlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914EAD25032
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 06:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176811383357.21583.15045201207105688999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4e29b28da373ae113d0848c0619eace781a0391d0a6b369c9cfb865009e1fb3
Date: Sun, 11 Jan 2026 06:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768113833
