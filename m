Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DF6E219E98
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 18:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741372734; cv=none; b=M+hZXv4+fbySl2B5LOBkxmLczKHvtyfBatSINJr6LZEhVCk4vSwtC72ahKnNs90R09VNo3+gbGHenWqpv55C4X3NcOnrTIazGHl+Ur9wH9G1u+0aUVTzULLcSBSLEnkujdxtBDbGPw9rPYotTn+Z81vhX8pi/yxF2q1+kjo0/W8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741372734; c=relaxed/simple;
	bh=29lgofV+U9FIwPTUfv8zSpZl+Kbb2a07vhUXOVXmeRI=;
	h=To:Subject:From:Message-Id:Date; b=QhrmPefIEuJU+omCtufJZ8rxsouifs/i+gvQrLkne6A8iDn+Aen5YGLjA2SxtMCX6kZk4kl8svf9hcBjC98SMuQxOiNhQKQNOi+qpSgYFRxOwmTpWxb1YBsaMPrLj1F2JnqzPYJB9M658A1nH8odQQxrJKqnTrG9Ser1h4INRtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T1UaJ+zt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T1UaJ+zt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0E4BC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 18:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741372733;
	bh=29lgofV+U9FIwPTUfv8zSpZl+Kbb2a07vhUXOVXmeRI=;
	h=To:Subject:From:Date:From;
	b=T1UaJ+ztI+z6XoEQ4daI60OeYpKB3sl7qYgdoQLiizo/EQUgxjN+HN9fYH8X8BzOM
	 uqTc5+/FzbU3xa3x7+XRq2bshCYJLTx4ooVUJCAPkg9HqryTr9E99KyK9ED8paV2AI
	 H++oUwAqeK7C6SexvHqd6kePdkuVKc6fZtZvFXTt6lF1JfCeGrjhEXNiha+/ahje1P
	 6mLQLLx0WUvpVv8c87quxi6XJ7PeCwKNs67hDwlFgRr9PnhyEeNvv1r19kw/rVj5p3
	 nVz9as2TywuSjth5/qk3cbbT9NUY7YFwl2uoUVuuiEQhkKBRpQSbvBIBHDaErOaY98
	 Ky4W2gNSwSQTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99228C19F32
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 18:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174137273361.9498.5730699102973270590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de4de9fd543cdae83e78fa5f93bf4b4e03fe40b17d2f51928c2c0251e6ae95de
Date: Fri, 07 Mar 2025 18:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741372733
