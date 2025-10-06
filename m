Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E00D27A92B
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759753794; cv=none; b=Zbjkg1PZ3qPjv+vbAd/JTN7jBX3FemsaKiZ2F5yWDceNGBm5NpZjeBjX6FA47lbflD4F8c87greqKU8RigL3/pQpsD0oWDIpQebxZxg1evLeoU6e7zMvWL65e1XE86LE5HY2gugqVxgxAIcKxeUaZJ1C/0rK9Y7w/l9RYLeY7Jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759753794; c=relaxed/simple;
	bh=wMR8Cvb9QFKizX/mbQtuJ51FBSWLI+KmePW+Q/lBfB8=;
	h=To:Subject:From:Message-Id:Date; b=bsK7tCYcATBNIdHyfnv6W/wcZoDufn4QRuvFgCllntj6RUujm2gKcmt8xRVLSNPCzon+mMrRFjfagYnh8BrC63k4aotwyp1KgIvUkYPxtCNacFJ0SUEZeh8tKr5964Mmaw90+l6jgC5mJbKFFYlPPo2iAdrxQdH7Z2oKZJ9azRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m2sy/MY7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m2sy/MY7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E21C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759753793;
	bh=wMR8Cvb9QFKizX/mbQtuJ51FBSWLI+KmePW+Q/lBfB8=;
	h=To:Subject:From:Date:From;
	b=m2sy/MY7J5Rxtu/hC+E2HRJE56YrvIWXIiKsW+GNK6UgK0f1tbIBaKtnoE/+cHrhh
	 XUgsVQ6Tpy5c03ZpEZ0+UA63zHrCOsGjBCQ68Z8L0PEYeWRwEC0h/PX9ni/5l5bk0w
	 /GGk3dPUSU30mqOzeH0LlG17jd8/jOrYH8+wgBmBo5wy8mqgxs64SnaaxHL1PnNoFT
	 yrBlFuW1rZb5nVR9QFGpWIBW+/WswY3oX7RMo1P92CP0qmud81WVXEL/PyEGxqh5jo
	 0QOcp7rpaF5vWSTHV91xY422YD7cGE6KI0EsLzkxvtKS/3Nj6YEG3O5QRALD1/010s
	 UudvyYmobslgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92397CAC5B8
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175975379357.3963.10492830282231400553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53b93e1cf8dce26af5adeab920b739bcb08fc03f347114704c754f276e5e5577
Date: Mon, 06 Oct 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759753793
