Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57CC073455
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 07:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716882863; cv=none; b=pBT7FL6crEqO23+EwOgKc5EE6fyQ+FLY0Xht67yO1ULs49q9FWysabx8uIOGzkJaMWQhRZHaCRM9R1qbnvI8Goei8PKJ+XUG+3ipYdhixtEbYZpU8CFfwxoYIPudR3WreyLdAm+o5oXYIoUG1BPI4nWCSym9fayViTaafHDZ59U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716882863; c=relaxed/simple;
	bh=Xa/BcMfxCT0GaxhZMn7ZrPbr7nKz/nRxAbpUmrw5dfI=;
	h=To:Subject:From:Message-Id:Date; b=TMGPq/5uKzOeE6BdPTuvDU+W57GJBjcWf4BlbbZ/QElryNO/xcYzy/YQzVv+2JEhOYf8sHxE0xycJCgXhv9PRNhu4MTZ7W3ozzkmJah2fHkwnAI15ZoqDBeD+p0H1eWXVm9oup/Ssti2iVhM1Xoj9ByNp6afy93cDSD1m5hsqG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hCEv4PZv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hCEv4PZv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC931C3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 07:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716882862;
	bh=Xa/BcMfxCT0GaxhZMn7ZrPbr7nKz/nRxAbpUmrw5dfI=;
	h=To:Subject:From:Date:From;
	b=hCEv4PZvmnPmVZvInFRoX6cThhyS1CjztczY3JxoqdHEGPTpELJ/JOjkZ/uPBXAqT
	 wMVmKBJPbIw0KYZwzNyL86gXID7lZGZrAYI92uSTkfWZeynLTC8i68i0LZ3ayuGo0p
	 mDuu/YJb63bUYDjqz4SGNsUjRps4ybGCt8xomqgLKaIdjI1o+sZWdemJwzFZbeWwLZ
	 Lmv1ABc02tcTEzkFHB/e2csgg9LhhrCXxNQWZZoSLnlsx4attL6zBd8aY8kxasLl06
	 +5ciZirVbG2ySIlrb99IxMlyPRZKthqn6pB/VHQz67EMrYWgcWhHTuOygny5xfXcPr
	 KqZh63t+eqFaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7715C25B7E
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 07:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171688286280.9874.8669221042177082557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae3cd4952a451a260e8d9de410fe2a021cb7830ac44f38e2328f11c28cad2fcc
Date: Tue, 28 May 2024 07:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716882862
