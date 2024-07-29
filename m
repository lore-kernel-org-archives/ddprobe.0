Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A84133209
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722224754; cv=none; b=qva1rIaQsOz8HAQw07+SyeK7PPw8AcceYUurHj3JMgdx9uOC6H8/7P0GF458erODhQ4FXLbCfsnXR6ZSOs1BLyTDuiDaux0bmFU70iva47WiX5Dv6kpTA/i4Hr5xjvcyuKby45xn2Wtbnqn1nHCbrJKqIZq8rDdSzGcyNyKMNpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722224754; c=relaxed/simple;
	bh=mW3U4m4lDPnigiBPBXjjbWkeYKMqtksQHTat0pfVOYs=;
	h=To:Subject:From:Message-Id:Date; b=somkbL5t8uDko8f+NETzC+23fC2VZcOSwGXEWHLuvSalSh1wanVdEhSdYNl9KISI4Mz33tiwHhXZlfsltCLLmA8YbfsV66rDvunbWk1izRGG0uIB2PvBnR4FwHNGaHOdNX5eHtlp+0QO9JGH78UAB82oU4lf3dCcMtafOA9dp6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NX5vIpN2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NX5vIpN2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B48BAC32786
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722224753;
	bh=mW3U4m4lDPnigiBPBXjjbWkeYKMqtksQHTat0pfVOYs=;
	h=To:Subject:From:Date:From;
	b=NX5vIpN25ggrGr/ZsFUeBEah/wVg8BTjehkBhNXX+ZdFkBiR9tdvVjB1u0P2Sbad/
	 mmFjt22Ym/qstZ7XQ1Venlqv+y7GHukmcCsrriqZoZDqveG8iJ/PVR3BwtcWd+fqm4
	 fpzTqY3D2aXAXXVi/gbbEJHglyE6OXAT54tCn9h3LaVfRoq/eRYxmJU2I9Jh98lYI+
	 A3frTPLYSn89Y5QRaY9OUx3yCjexMPyyvfG7+vLwvNcRpclYZLVJx0EKyr+B4Nj07Q
	 2Kf1BSi6sJ5qifW605W/UDFif7ZGqZoAe+7BdHOmVR3iplQ9ofBEkrN4paJQLgYdHK
	 oEcDxpgVkUnow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0465C3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172222475361.17196.3278460125163715276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 542be164ce42107e257c0e9732b1fe1aeb785ea76ece594b767b456973be651c
Date: Mon, 29 Jul 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722224753
