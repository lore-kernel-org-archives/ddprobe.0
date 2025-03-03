Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A97202F9F
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 14:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741013934; cv=none; b=FGWotUiREs7OGZsyqxIP0VuUwFxIjid9/NPPACZPDsbfm/Oez0ZyGBxORh/M2M3+v3ijArHZl27EQYZK8PaL+T8nDeIyC/rqfjVgur9ZbvB2RZNXsLpk+iV7x0xBgFip1Lo4cgGd+9wN2i7ssYuJrmVLtgkGbb6lI22FEHe7M6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741013934; c=relaxed/simple;
	bh=O3z0KsUXlktlvSlSIjWZFcWSRMuQIoIADYSR1EPsVdQ=;
	h=To:Subject:From:Message-Id:Date; b=GRCqbiSO8oMSExXAfPPJOBji0B43Erk9d7619/xUtrCl0xzrdk3Ugij2aNpNjQZK3sSjdixcSh/yIw9eoDBQ8cGmZr6ftdx2o2X5Ce9+W/VBDhT34dx7HMIGP1rLt2DyF1XtVGUK+gZPxoP7nzBRyhIdi90DQmqhAB6GIjAqP5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JpuL8ERX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JpuL8ERX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26E5C4CED6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 14:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741013933;
	bh=O3z0KsUXlktlvSlSIjWZFcWSRMuQIoIADYSR1EPsVdQ=;
	h=To:Subject:From:Date:From;
	b=JpuL8ERXJNlmT//Evs5fQIIeep06jOs9IM3i3Qm2hgFkr66JWbnK3Ciz+ubxinagF
	 9qp8cxbeqYDOV0WvutkJX+IVRscGJXD64U6nudHLJ604sP5e1+jlDG6VG695E7xQl0
	 Iya6YjC2jSMbd1+MjqCAdDoWYR+h4fpkEVt8irEc+/fG/lOQyJBmZsBjVV+DHDDwK3
	 pREVIyE/in8VlkQ48ivVfgJ5rrpmcucMXJzbr5pM3eOjSHDt+MIezTMtjyuTEAa+QT
	 D2hZKqIBkyudmLQ0kZ9gIs/OQAA0VIW34l+4E9E6O92KKyU+ECLTbbEF/6na1OnXve
	 nWgkig9QvdbbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94559C282CD
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 14:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174101393359.1215.11147418893269773046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48ec928473c845cfb3cfa77d577758aa6231e1fb13560ce735e61c9f7be977c0
Date: Mon, 03 Mar 2025 14:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741013933
