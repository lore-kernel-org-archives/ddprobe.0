Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B1BC20DD7F
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 13:04:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739365495; cv=none; b=SWcicTq1yJI+3KXTSTMFRGSoiwqLpXIEvxqCdeypksCPbN/h9hAUuxJmUehu6RJxiuP0p/OacMalPV2eorJpAPS6MSeKIlL2gah7bKjLRoD3SnS2sCUIDBAjqIPvKKaGE3U2XmIPx/dGEyFDbx9dK9EhqJbhJLfZJIQPjgONgnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739365495; c=relaxed/simple;
	bh=3rOIpZtpKycGM/lcWP+gCP1QglLCOBWqrfBLPyik6oE=;
	h=To:Subject:From:Message-Id:Date; b=Fd6UKHuDKpMPkkXFtv9t+KmdeasmpdzGYK53+st03x9Wwr7U+brMnxoQbCBOdlleXmMGIbEAZKQzyW8MWlh+zM11uzp18hgTAYcB4p7ivmVWbxWauMm/btm13muvxKrIED2GY2C979dr048PNwTezy3sXnu0Q9qfu/b35ynaDcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KakqsJrX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KakqsJrX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD67FC4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 13:04:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739365494;
	bh=3rOIpZtpKycGM/lcWP+gCP1QglLCOBWqrfBLPyik6oE=;
	h=To:Subject:From:Date:From;
	b=KakqsJrXp9JPcTzb5iszyH89da0pWmzoNZEWjwIB+XtVDyn64Qk07btJlKlqgBLk4
	 DylLuWD8IPDkBmcaN6ACMItbCUHsNHDmbN1FYq0DkGG1LRnZOPAEZSvj3XeCSPuFke
	 k4BKIQeJR7NgrHlZ+DZVgAtNEPuWQQCfeD6sCWSl6f9I3FN4De4pjDBmlEO7n3yxaO
	 QsgVqEFTx1VnI+curntvSy6W0w9xZ+VTnzvGia7ckCnWHIZK5l2tqDjFiZ4siCy1zX
	 U4viXoE+CwVeaJwvbLgRNhxijMaQUB+RSZT+Ng5tTDOlIoLggJBzYRRBSUIoCEEpk8
	 i+8CYJKsS89hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B5BDC02198
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 13:04:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173936549429.17769.14899911337093354677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 674e56a98a59a406749c574ba9215555c4c9797543880cc510f43707cc5b8311
Date: Wed, 12 Feb 2025 13:04:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739365494
