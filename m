Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A03C1C5F1A
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 09:58:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739267935; cv=none; b=AcPTC+s2QoHXf9pbZdDqXvtVQYFH9ea5yVTXRkis47hTOyO7U6fj47nk9RwvwITSlHt8OVQ7ErACe3rrPFXFIcoqzHgX8C+0R3UL+JkT/w6s8SaRUoueULAJh4ACxke1cBZ8p29Q15jj1vS5VCn3p8zM4jYc/BZQhwkzIvaeiJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739267935; c=relaxed/simple;
	bh=ZvyfFGt5GDr1xmEbpvDX7JA0019GYtC/KtZJt/Q45lI=;
	h=To:Subject:From:Message-Id:Date; b=soq7yIUDTwc76tXCO7WqKaB4sgj+sXEmP1DyYMK+WnTAH5Yna8twkztEDZf/hKDH8TmnhucLtZuA1mlvYZ858H/oEru8K+Z2/E+cKxuTmn00WftarkDlqqzLlc01efwsNSSzlZKBIwwu4NFAJMdkfuVE3atrvqqze5vF4k0SXrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rvbfnbnv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rvbfnbnv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D54A4C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 09:58:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739267934;
	bh=ZvyfFGt5GDr1xmEbpvDX7JA0019GYtC/KtZJt/Q45lI=;
	h=To:Subject:From:Date:From;
	b=RvbfnbnvT7dju8crgQ4dALSlTfndEMPYRgmg8r8AHidxCXBK+oRZ2cAN1rW09RyFL
	 8ojYXn/NZyv4DqyUr2fgb3fgjcG42kpzxAhp0dCZSZ/dxuh+I2otROWcR9XRhUb2oV
	 QpDABP+qxkRycX2uE4XBjxIKVo79hWZYg+kffiyEpTq78trClqfebcUtxbJTu0rXEV
	 XMA4agiEi04duUAcPUhUWSjfzy0minJBaU03ZzhlebW7W9F7cumli5tTSFdHoVs+9j
	 XjUZdyvFzrQ05PxzM2DFdnXs0bTmeR3qudhFScLfB6bbMMQLH8VE/tL4mBBy/fbwyp
	 pg0vrotGfA41A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3D1FAC0219B
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 09:58:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173926793422.25145.1337237033867436517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46f75dbb12f7c77bc17ee07aa22c3d42cc29262d2408ae8bc54d253e079e21f9
Date: Tue, 11 Feb 2025 09:58:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739267934
