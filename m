Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD343C09E6
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 14:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782310654; cv=none; b=GKw4N2+e3P5BXKCzhywcnmeO3OuasPRDlFwFktR+k3C3mCZlYgPVxo3bcg2ulCZnT+K2wrTeXhhU9lAFs5gUtx4Ikv/5/qCgAVIKvP8r7mSlrbVMO4A7TJ6B95Hw5FJVMriqeGw0tvly/UFvMhGzjXPUjL5uQKD2Fy6kAfen6W0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782310654; c=relaxed/simple;
	bh=h7+h1mb+J4dxaWERHonBsfBJlw4Jmi6CKyxHX6xCpGc=;
	h=To:Subject:From:Message-Id:Date; b=ioM5ZqdvK30yEY/tYxcxJAgLAxduddozNpTfi7nKUfwpPJar/hQyJXl+0DNODV2Dk+q1godS7TqR1QZG3s0GhKf57UkRdMfYKcahnWxv3S9t5D731w6xg04/4SpXvkIG4Xgdr0jPyrx5Fy6Y4v17Cku8n12iTCblAZJipPv+b2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WcBCu36n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WcBCu36n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBF0EC19425
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 14:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782310653;
	bh=h7+h1mb+J4dxaWERHonBsfBJlw4Jmi6CKyxHX6xCpGc=;
	h=To:Subject:From:Date:From;
	b=WcBCu36nOIaq9sbh5bAkk6ktRTAzf/nofhlMf8nzN/Rk3Sd5PG8VihfFMR15wRJHR
	 3LO34I0F0mYcVzbcV+BAJHpXa6YGWlng23v8jiBGMqC0QQaq8O8Z/zuN7Ok0RaSESD
	 IVGLqtateKKkryyk/grdaqy+OK1NY9y+lnx1eRgl/2Hc/r4iDiPAJF12MmlmTeiXMp
	 LvsKrE4iEmNPwCY77w9NR2fQCRgjDAlemESuR0DhRZbgYORprb+Rlz2rbpNethsBPP
	 7LTCBy27J6NsdN7JNeVberFED8yIh9Ye+5CDKb6PgL38VFj1O6ta7JaRqk33F8mbz4
	 eHY/ta/IWGEKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A99CDB481
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 14:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178231065371.8873.15885177132754022946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1b0861834a08af8422b9d7bc42a429fbdc660dd13b6b6f997b2ce0a38fe26cc
Date: Wed, 24 Jun 2026 14:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782310653
