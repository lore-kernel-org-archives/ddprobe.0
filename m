Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F1EC25B084
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 19:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784404714; cv=none; b=rYcY/MgBhqnG0uqUpZKeLqHtyr4hP+oYgzSacz65GXWZ9bfLAmnamsg26CHPRjE13a0g8S51VQ41uCR7RluFPgxfMj8SksE+ewYXb1CmfA8Xl27YHX7/2SwUpiDxouGljcIVIoVylVIYnVSKy/FrPxxJ/G03Dbfe7F67nYFQZ+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784404714; c=relaxed/simple;
	bh=hUSr1gyK87zp/aE8qudTdj4uugnwmRr5wav3Bt9h4Jo=;
	h=To:Subject:From:Message-Id:Date; b=CkzBCMWhAJyD+FtuwQs4kNxsA+nPmbQqV6nxZNd1gIdCLUKNacYt5Cz19jPDkcY6jlO2rG8njltTnHGbRffESv3d17+PFdRwvgbMa7xyPDbrRsiJ+TLAX7OOGcbeTFPCerQVajLWIUXYkskD7nJE+vhbWGNagptMUWlgTfC1FMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C0/i+M7L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C0/i+M7L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D72EFC2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 19:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784404713;
	bh=hUSr1gyK87zp/aE8qudTdj4uugnwmRr5wav3Bt9h4Jo=;
	h=To:Subject:From:Date:From;
	b=C0/i+M7LXKcIeEVVM4GLNkvk6lrGFprDZAcFSB49lzqL1EvejSwZWdscmNcPr0Yh4
	 lf99aqblgnommmiIdPy0RLGeDxYLJE+vvs4bvXZ9oExWgX9GzCgf8Vj3U0HOMgr9wy
	 u7c70N+u4xcr6dfvzc7Z9OA74Nnhp/YZ5ybeVc2B1BLR0Hz53lurLEHnWb002okJ51
	 wz0/27J0spyOL5VUf28/FXIr0vnz++Z3/CZ/ibeUpCR3RRwV4MONSuZtNsyJmiSQaj
	 h6NU4+d1kfZLaUNf8pNCRaI6/h8P8b44VWuDXtoE3h50ZFofw43n2UVvfoECNQfJfV
	 ds8z3rpEshwsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B20B2C4450A
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 19:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178440471370.3657.14713728543172066115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 855ed734ddc0fb0a5fcfc32618f0ce9ea282f58e76bf2cffc361de977fe1946c
Date: Sat, 18 Jul 2026 19:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784404713
