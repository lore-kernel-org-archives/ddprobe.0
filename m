Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B737126C1E
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750237796; cv=none; b=mxG37rLpCzxG+kDVBIQDvVmvDFUQWw4kp+kGn/onGOdGr4fVo85zK1izyFpfQoKWx9x54NK3CGS/zETHwmzQ8MrlOMgbC0PHk56dEEoF+HmH6SGo0lE9ue9h0gVJJRQE3cSpCsXGUS5bBg2yci8c8QGAnHn0T/pH7Zxzmz4nedo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750237796; c=relaxed/simple;
	bh=Hg2JCug3hnd8NCEfaok5BtyFf5xDFk126cgd4WxksTg=;
	h=To:Subject:From:Message-Id:Date; b=ERr0mCv1Zo4xHwIFz1P3+M/jUOCQ5CfQV/X5BX25UhetnwD5aW5cEcfmtPi5fHZb8oymL70e7mtXKEPq/o4/3rg9dFSMUfLxtaszHeWIF0NAnDhgEE5Cb6K4Up+rFKC2+mRzIlFSV45ujxolzDUZs8fq+QKHPIjBR1H5TnFhRp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BIXSGbtf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BIXSGbtf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D7BC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750237793;
	bh=Hg2JCug3hnd8NCEfaok5BtyFf5xDFk126cgd4WxksTg=;
	h=To:Subject:From:Date:From;
	b=BIXSGbtfHDin3iqDQVJtl1BC2p55CaigCz/l2rW5Nrene+3F5jy96bg5Vyqtn+19N
	 eMmfExifVGllYps3qHjhR1Q3pNc+0lBHWyN/5w3bINCj5CIPPnCYcauyq/IgfEMI6R
	 rew5z0Ro19Z+dD3KmPD2qred5p2U1Weu0KpQ4T4WeP8pJGK73Q5jwWgDj9spsT7NyF
	 oPejC4Usw25lI6uONUyqcJS+M73Anzkr0fo8caKBILVFclicHMJz0YWsMzSag9k/2f
	 5HLANwMfIwNk/wZEnvfxjohtIxUh8vS1n47vn+InejFncwcp9xbKS4VoDzhzLd4yJS
	 1Kj3VqUULizCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF9DC71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175023779358.29496.3382207901557772127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cc8762f92fd51397cf4fc38d692306aac6396e7eae49cbcd2f83c82fb6833c8
Date: Wed, 18 Jun 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750237793
