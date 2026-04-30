Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14F153FD129
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 12:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777550854; cv=none; b=PQHUNgAWYCgBY4aTtKCGTvneG+EjsmZriMTB+f5beH1M2NM3+Ps9kJjwak41cylbFmfNQIEW8L61DmPNs321bQ58zpfxyGEZ65TZo0Vxscz5Y312M88khYLvdWPZoQeNRh3sLUnqt8Rj5Gw/4XcyLsodhhTQY3n0hNxKfWbgQiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777550854; c=relaxed/simple;
	bh=lr7sBviX2WlRPsZpUQiHf8QEunnbQr7knDM4aAZxXwk=;
	h=To:Subject:From:Message-Id:Date; b=J0LJ7DcjFxRYWCaMh5cOkZk84zLBsaqC83aV+cO9kn4d9rd0NjSmbdNk9FS6AbGPk2toMKgWbZTGJ+GqI968SclMG2Z20nwzh/E+v1oz03bPAskQGDK3l5atSAq1K2hZZT+vCG3z1L+2P8KBXR72j7VP+u0g7s86sya2UMgCrSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LU7q1olQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LU7q1olQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB1F9C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 12:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777550853;
	bh=lr7sBviX2WlRPsZpUQiHf8QEunnbQr7knDM4aAZxXwk=;
	h=To:Subject:From:Date:From;
	b=LU7q1olQW9+GdAgD8WzToA3Ffmdp4dcIHKVfHz/qHA+unJdOQp1i2brxwpDm/uwC1
	 WytxMpYAWDfEbJFJJ7A46rkSH8JGzbRn91J6Zeshr8+ytVJjvscWXpP95MFlZAch+U
	 WjJLscf0WZsA21lS5ETll8Ino77Nt2vRvjpZgATG5JauM3e53RM0ATipGFfw7rEFbo
	 cdj58Y1PJBzXd4Hw+qP0717J+Az3uKk5kYehj3Oyl2U4tXQ0Ja0q8GBdviUT+RggUS
	 D42nLtIYyHE02Wsrj6lf3DpwoB2KhvyAFtv2k9CJ4/mf8gN2aNCTdNsjED4S2eZDMx
	 RF19uH5Tpk2cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA037FF8875
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 12:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177755085368.27830.12574960626426659115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 134082310c334618843d5de41397989558ed6a92ad7837d722241fdbeb09260e
Date: Thu, 30 Apr 2026 12:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777550853
