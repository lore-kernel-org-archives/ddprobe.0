Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E653C8F0
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762042794; cv=none; b=AHac6C1YW/BcqfgDOcI92wjK+EWJYEvOn7s5IFwOF6W2Sz/g3ahenSRuWI3BvIXeJeHlzCcseyBdN8KMjH/UB78f32jr7W4pK8onqOD6iuOfWxiRlSqP7+Gt+EYqaq8U7inO7yntqdhjmpiVHu7t8J09YQbZqb5LpTpRs5kdtos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762042794; c=relaxed/simple;
	bh=89ZPcFKBViNjBRlj5XZOtEwPKhpl69YkbOgDOjrBm4w=;
	h=To:Subject:From:Message-Id:Date; b=f/uiRj2fd3kt0dqfLlt8DJ+8o2XuobUU0QPzgDM+Wk4TZ5x8PDcyyhhcJVPWwp/zQQHHVybROtqYAuIbo7ZTN5ZnlMrSLPEMt75GEqmG8G/GzcJjzJTFzm50J3aStrA2ExDbO8z60y6JKirrsluq3yiZOltIdaqYGwjPKnr0a58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LloJLpP6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LloJLpP6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACFCEC4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762042793;
	bh=89ZPcFKBViNjBRlj5XZOtEwPKhpl69YkbOgDOjrBm4w=;
	h=To:Subject:From:Date:From;
	b=LloJLpP66NI9ufq43JaaW0/pXnQuS+h2E6IW/JdNIKLSRXdAlZ0XcpyC+pLCKCj+G
	 CACEkP9dllXunwMnWqAne/GYBq+xsMK3mhugD887VLK1/yU9g0GVATBja/stCsnYuq
	 GLYe8ApWYlPhlPgTFwbUf6EmP7smyyqGi2/YSe8RpAjuKE5Vo0swaqWLZSVlWqOQPk
	 l2k96HNVq/Rxaez/ibbojaj04RveUW0uHDP5kgQ71gMYGCs99xbmcFjyKbhGbrB66V
	 gasYx39OXDryoYs4Znki9QgBRHev4XkqMK7HLtu33lXAK9+IZhvh+LyD9rpdvDnynk
	 3m+7rW0ILFwlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A166CCF9F8
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176204279358.22076.11122085830000195331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfad433fd3ff8ad5d716d48c22aed312a733383b838e1fb5a5b47219d4603769
Date: Sun, 02 Nov 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762042793
