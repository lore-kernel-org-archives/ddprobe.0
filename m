Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4362836D
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742794195; cv=none; b=SFo/S2acr4w83sJDScw7S/u2CYtdiKn2aosh6piBwSgH4S6iZgTZFllUYRZVPGejq+vXlKJkKP+Io08wNcELduYroNMFKrQWGBWpTnbo1Eo5YPNGgKQWsoKMc+DPR+NVaIos4UglHrHWScuutM5M+PHgztjKg0dZC9SJuxwk5yc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742794195; c=relaxed/simple;
	bh=1oY3nbri4ylhj0IEmm9ybLALuopx/iuuFmdQ8uXaDi0=;
	h=To:Subject:From:Message-Id:Date; b=fSQ2ZSBBz08IJiD6HSxZgR/dEieisVfAynWw5VgiI3PObEYYH/q8MZcuvzbLMloYNtM9PaSRuMcphUk35SGJjwPT3jqckiMul/PNyAcUyj9lDlzlE9Ds8KJR1Ww0QRjTZ+jEyj/xgxPpRjVmEarW0yF6wtc3gyO/bi9fXc3dsW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XcDWntT6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XcDWntT6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB431C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742794193;
	bh=1oY3nbri4ylhj0IEmm9ybLALuopx/iuuFmdQ8uXaDi0=;
	h=To:Subject:From:Date:From;
	b=XcDWntT6GcjFIGa9sQHxxIsqCvLq7v/jouHHEgx0t9pls0fT5M63Qybx4D5W7F9hh
	 H7eqD0pg9t9CxJiG4sJlcTUE+wniiuEE3zFfnMqhYSHkXncD7s09DWDMKiwBy2myjE
	 hHvCXwX56+Sg4+7dTwoC6dGQ3YvRKqR6Oc3rDvXZvstbXCrgfFKd3ozD/OGZn0hUgr
	 qFMUkm/MGPXn+7Mbya5QF0438Q75I2PSYHX2xeZOYQHosrhifMWHNSv1Xl7pRUvwrk
	 x/Cno4svbDWh2ENFOXzNVeT3Zo8ZLCJsL9BrCwEYNIQHLZJot8mG28/0R8ebeIQ/Zq
	 b8S1Y2Vm3a1dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A022FC36001
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174279419360.8888.15991784156888856046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 063defc47bc28bb8da7d2660b01b3314ef355ed7cc1a96e4ab3abdfcb6ab2739
Date: Mon, 24 Mar 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742794193
