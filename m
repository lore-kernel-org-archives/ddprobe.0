Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D6E1E0DFE
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760060394; cv=none; b=Ox1H0rBCvBLoTM5JCPW2xyiA6M5lHJ+c9/7nkvWCuZKN2POPngn5FSKfUoJZmIAbYWVWNgsz64LgrIe7qtFiK4zhzylBapq/9iXPfvAN2kPAxnNB24Jfj8XMZ1vYUL8hSldOKJppgSwP9QV7Sul8Dd7S4j0YvrlRyxd2hRGhPro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760060394; c=relaxed/simple;
	bh=G3W0BTUigCGJrh2aoWuntdOmutHmN5kyOa+rCRx5R0c=;
	h=To:Subject:From:Message-Id:Date; b=jHcKEIPLGb8ZtxpEUi78fZa4kDyo8k+GlV/sNJSOwfoPBTb6KO4hhU4+UogCfUD10U3ESWamR6ZC5RISF8mYx5LPRhLDsyK4pW816PJIWMjhDX7c57LM35PMssyxjjE0j8Ik3Cm6fLOjqEv2b1P/N5fza/NRb8z6XHGJ57WJJAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ux7kFSIo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ux7kFSIo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B9DC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760060393;
	bh=G3W0BTUigCGJrh2aoWuntdOmutHmN5kyOa+rCRx5R0c=;
	h=To:Subject:From:Date:From;
	b=ux7kFSIoxp6wzbWJJuLPND/GPYCCu4h0SNvttNN16XcCkbMbk5Acp6iAMAim7ATAT
	 LcQ2CZyE5ilXfLpwxMN6Z9bB5BA2upZrO2kvPI58jG1KXTlxlBj8lKdK3eZdv/isQD
	 6weceme5QV1hK1HUDdVn8ok/+YkdjOFyT692jnl2GWgE+CEAPMft+sQNIf7yaavJDg
	 HbSgHygsQiR0dwXAdY/MaHjYIuAbY8O0e4rVrOSbaVSkmm/LuMUtdo962rZvbS5CvD
	 89VumjYKXdI7eR6LU8EAZN/8CnYFERcCVzwAZm+Tb9ogn9UTMgXrttdXFGLIqhNj6e
	 3Y92pBNUXcNtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90908CCD184
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176006039358.12445.17716339522770998702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6eada74e9f8fce24a1ccad134a743c60915f32d5387dc1673dd0fb280277b441
Date: Fri, 10 Oct 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760060393
