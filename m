Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EFA5432BF5
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786388434; cv=none; b=DyoUO1+SDdfK5sNYEI3PJZUlqDW7oLCwPODdz+uFnapkHOM7dhGiuY+WrNgeM0RE0BA8R3UD5rH3+m3FJP1/TV/8C9DgeOk2Xf/t0fvrA1uPzMaX1WnPW6d8RGSSJEqUDRDMJVbhCbcsivVOvBCI7afPGOu+GWC+c6gahMVqYMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786388434; c=relaxed/simple;
	bh=r5NeoqjuEbhxrhpj2M+1LogAGCh2hQUoy+9kqfbPkKQ=;
	h=To:Subject:From:Message-Id:Date; b=V4WGmsrYMYrgqC5MJqeEMU7wlPYhfo5jCo0TsrQyHAtMTq+HY+haK5DhcAfzYLYEwovTJwlgZGULHlYU7ARfxOcobK6vZkRIPtgEWBVtZ0joHNMnkaAd1HwcEZWUcl7J3AObkl/PzUTOA4EbEsLiy8bw1FTQLmkXKEHq2S7grpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FTuC+BI+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FTuC+BI+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDDC2C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786388433;
	bh=r5NeoqjuEbhxrhpj2M+1LogAGCh2hQUoy+9kqfbPkKQ=;
	h=To:Subject:From:Date:From;
	b=FTuC+BI+s5DKi2bda/CzxNknXgPFyR0REb0WOGFpOziyBeZU7tGPRj7siJrLKmsX2
	 WkZa80xSJgbeCUyX36yiSSaTyOvQa/lCCTl3KRXFBa/v/5GEibNFEc/PbWWJ4Kf8m+
	 0tNi/T7EzZD5UpT2Yohn/N1g3eomM9rWGH9CCDxjRtcMgqisSZffxy7v2Z4WKxeSCU
	 d5mQPtLDtzcN16dwR+OxSpm7tLTtgZ4E4xBhR7++6EAnpQhSL5IQ8wY+dpec80Cn4t
	 NJMryBOyeovyVLv8OBt9ymBxopWM9wZBbfJggOU3iI5W71XY0TkUrMKzDqHe16tIzJ
	 JZzqysWpOdzOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4216C5B567
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178638843372.31144.14104181934221574779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16485fbf38305eb32da96642e31a6671907d3f197653a8c15b0c0c5e38c2c99c
Date: Mon, 10 Aug 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786388433
