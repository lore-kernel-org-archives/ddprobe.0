Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321914207A
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732169754; cv=none; b=pgmLR5cYYs4AUKRMUoSbHbxkhQKnb03nx4JvHqolyMMUST6xC4ZWlCCv9v2grtCdHzqd7tIdmKwle26sMDvZbM4niG6jmB6u2HtqF77mQInEK20lA5WUJYmQavMu0I50Lv9GXVPadOntP1HlFzrUQXg1u8TFBvAnB/5/T6FOMBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732169754; c=relaxed/simple;
	bh=qP/03+8Ri1L5JiIfjSyeuL+Ougq4U/cr33MJiZhGTcA=;
	h=To:Subject:From:Message-Id:Date; b=uxMuUFwh/MeaCrXKww4Q5LJtavWl90oLaKn8yBbis24VNA8GjL8egt+VFkNueyJROAjr/m8dQe9RkX0jBEFphIqi5lRnKiSdFt+VP57lWM+Xgjf5AkfmlzWrCYSMZ6vde2XbWr2YJtebEYPj65XXRoaPVNCmmUnplJ4CAgq4v/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iBVZXGLE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iBVZXGLE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB457C4CECC
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732169753;
	bh=qP/03+8Ri1L5JiIfjSyeuL+Ougq4U/cr33MJiZhGTcA=;
	h=To:Subject:From:Date:From;
	b=iBVZXGLEuJEfbKiJi5xdh9Z8ffmvtSegwGts602JXL9fM28sOwNEd0fSb2hp2vw2k
	 Vv/+RdcWweMr/FuNmQ3gcJIEOmVXBQaPCRSUexHfJLaMeZbE78BN/+DAXKfdSYw/FG
	 QoPjopSPr8N8s1vn2ObYdi9MeVY2UiL9MqypCWQuDgJKS0rApQlAOpjVhT3z+zHLMH
	 kYRdHhinJJ3ae70MKrDDlNb9en7KzS8wmw2+J/hHNTrCKNSNGPDkTxBt277sO+089W
	 iMUECFfMXk0JJrbpPNXVkSILEWngG6YhvpQ2xqmvEcp0h39GxDOp9K3uud8NgOmp35
	 rQqtyGs1Vvfig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BBDD75BBE
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173216975360.25974.10605617823127274452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b56dc68ae813ef40f906f89acdece8612b7456334164995e8ed6cf124a53d3b0
Date: Thu, 21 Nov 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732169753
