Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C54030E825
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757496594; cv=none; b=tjZL0Ia0n+2edi45hNOPZF+6nqIkeIfWZ+AerxRn9Jn4oMPdsGUQnVzcgkixlPvw8nxuTT66mwP5ojxiB/b79OKFQaGDqTEDpDM5bD2BOGJ5TzPSs0nVk2Sqeky7eX3E+acyV7JNDFFF68kGNNJcmcY/zmOXf/07fR/+dYGiMiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757496594; c=relaxed/simple;
	bh=bYeA8Ur4UTZFEgAtp76+5Pj5wR+lv4RJ3TX2PiSiiGk=;
	h=To:Subject:From:Message-Id:Date; b=huvoPJ4B3linmejYuksd5s0Jwi6ZwIzZBMqSpI8Vd8eHFqlPs57cvrvC5RI4u3GWNXyCdv84eHv/EQF2XPeP3EXVer55YjQfBEinfZDaYo3S19H/4qpy0Tvm3uQ4XBxPssQi/pWa2qfUVXyUvww498msYkACvGiHTXXtVj4XtPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DxfnKSGV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DxfnKSGV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7808C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757496593;
	bh=bYeA8Ur4UTZFEgAtp76+5Pj5wR+lv4RJ3TX2PiSiiGk=;
	h=To:Subject:From:Date:From;
	b=DxfnKSGVKIA/0ptgOPl5UTCSIG6AEC+vCSjZUJ1Y0kUYHH9ZQRDfoIVr/MxBzAQTN
	 oATkKR7JItPisDq3yxPat6PgGWCD43CbULWBDUgGbLVbfW7Y0rtKIu5fDUrBb5TKVY
	 Dp3Tad+/kxGlQFgpRpgdvqD4kusk626KIFxRZj7Ys9r+ZZgGNjnfLqrqKi/IzmYJZK
	 bWR/gW1le0bROz+KFHqJ2UVZajfVRQPfe9/ayCE2lTMxak6c/nfiIqKGklnxciErQh
	 rtMpuqv6o0JYWSzXEQ0ClbBvFKfTHGJ/Q/8WfmDlB44DT3AeRTylGkDKldZ2FCpkyE
	 jsy54EGNgOl/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F78CCA101F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175749659357.29342.8938068900224754967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d63c11e62d9f71db4ac8df1926d99b146621bd877f0c98e4c3ab526f4c1b8e51
Date: Wed, 10 Sep 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757496593
