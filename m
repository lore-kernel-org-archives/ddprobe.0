Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E6E1ACEDA
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 18:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763922714; cv=none; b=Ic/2UX2+wprDmv0ppIIu0b/TF1L1B9Zozy4m+oIYHZWxHPP0y8QMSR3blUx8PRFEQuU7NX4cuZDheXiBa/0KVvfrpnppBbu2gyStecoXqCFfmfzqvl5+9UwbGNrMZFRdPI+O3T7KmBnoPaKIG5z33XtRbV+bChFPE3J7/GIDtBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763922714; c=relaxed/simple;
	bh=0/zw9Yz67ymGWS+bnSsHWMDszXPl1stulYNoMfnuqJE=;
	h=To:Subject:From:Message-Id:Date; b=WxN0ZtM3+0iowF9MPVOrOFjx6gw4C2KIKHgH/+E3vC7ANtErp5ur59wCwkmfelSZJlO8L9Fk1tgBJ2+tOPSsuw4AHVlIF8ZXz96Bqr+GpeZUSX8MN8OR1ZiIb427op0I5qD1am51pkMI93jYiglxCVEKV674cR2iBIFXGCr9cPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XiEjfv0F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XiEjfv0F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30DEC113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 18:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763922713;
	bh=0/zw9Yz67ymGWS+bnSsHWMDszXPl1stulYNoMfnuqJE=;
	h=To:Subject:From:Date:From;
	b=XiEjfv0FjJuqYIrM9PtWw79EY2Ts3rky2QXIfjKwnjfGwbWRsTN8fk08AQfhsPT3T
	 Uy/ucqqQVjCB+VHKeCCUlrZYxNzpvW8gZokIUGLNu/qgYGUFgz07nZvIHeEsuQwo9S
	 QcnFXgKjB0iPCuon4+LZKyIAXMHMTrDCZQW9+3gwlF/62YvagJQiXRmlCnsr7xrilQ
	 Utd3t5kKTqCMpsC7pxPp66PHOUT0zHcYqt1eB0jTygFoo4OUbMUBamkjBjCZEYXD4f
	 sFgt1OGRde1MNHDElC4+kMEbnxRGEzK9GVzGFOu1Etgufc9DUkYJCCFXRkwE2Xd4Na
	 11tC0V4K67ypQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E2CCFC518
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 18:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176392271358.15669.10070048233060231957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d688debdb6af03e2550b137deb70f1eece50ea44d11f9bfd7e202138194f7f6
Date: Sun, 23 Nov 2025 18:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763922713
