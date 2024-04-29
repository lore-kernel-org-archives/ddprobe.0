Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63C5B1E886
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 23:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714431743; cv=none; b=A3L3qzarLjheSmeE+8qpeNPX91YEjz8C2chd/Sh0gV+bj1kyMff8dFx0vS3X/Qy+h3MpX12i55k8JBTzH4uqjJNrKtEBeA42Vr8rNddFEEpcu75gOc6CADsxzTX72LCRO7XqVyIWtJgMVaPo0Ub5CRZrUXk1FTK5ll0XVFdJxTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714431743; c=relaxed/simple;
	bh=BrZZ9OhMtb1RrMIw3n0+U3koI0zxs46IPNUbOQTTgc4=;
	h=To:Subject:From:Message-Id:Date; b=GIcx0MoLrPyJKg/khNS8ppWX62HP6Bm/ArIK2kYKZTZJBjnTfehorjmVBBvPbdWS8DvC0UyQR4iThAN3Tay+iJRLzbOFV3Qqcofmt6XthGwDrDMMAw+j/+EdvLewAWj1nAL5+AKrUaFCbYuqzJpnxKpnP4g9zqn91O+Xw4y5LwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OYnxDrdJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OYnxDrdJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3912C113CD
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 23:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714431742;
	bh=BrZZ9OhMtb1RrMIw3n0+U3koI0zxs46IPNUbOQTTgc4=;
	h=To:Subject:From:Date:From;
	b=OYnxDrdJJyglBGkFA/rG3P3PKyBYJXsZJ8aHEuVumf073Ptbu9QyJaqzHVfssta9d
	 JpMNe1keQC+NCN+QME0YsN3f8unjOJCuDV6C2JSXJQU1xl9QdVoGj0oHyQ1wjopjwk
	 bLhwDQK1qRIzKrwKJ0a7rkm2dFY/WrgfDCehBl7JGUEVn0beVa2F/LdAjQukax+5IH
	 V3qV095/GbzAsJd9fbLH+vrCxIwZM3izta7XtVAiPNXOVqtx27LJ7C3DBQH4LUcJH/
	 hzyvs0WdpufpI0lqvO/QXdGTwLRr4dUPQm8COSiZJUK0y1gLml5hHRgrW8rA5ZiHJS
	 NJYSQf8PPJhmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF632C04FFE
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 23:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171443174276.30177.10256020638993062606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b90fbea687e1c7658b9f7d245d19335d67b37b70769a5a0174325e09990bb031
Date: Mon, 29 Apr 2024 23:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714431742
