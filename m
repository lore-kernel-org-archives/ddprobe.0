Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA482AF10
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748126394; cv=none; b=opuAUjv2871Smu9Ny3k5PM0DXL5LlbYt9YddLjpmbdIiRkb3EzQVgnNjcqtv/uaZTrDlmvOnH/0JFQfvlV7vWc3DKPDlSq+f4dA5G+ODXZ8laHXAqZkRHiG5+VoUhDkV9PAfzoKVZrNUgst1/h0Urr0WuTOO0J4fXUOgwr+4MIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748126394; c=relaxed/simple;
	bh=PajU+/m/pVWK9Gj9UEqoU4WJJHQZ1A7MwFbv6n7lxEI=;
	h=To:Subject:From:Message-Id:Date; b=RHSWMnkbjTKmwJI785UzDuyaerzMP7W8hwdvj4/uBPpXZ1aneukk+aX2vJ4lzP6vGw6FO9fSy1NmVzEi6L6KOJyEGh7gmgiA2sB+JHG6W3g0h/g5r3iqBl5KbAoXrjvMHaPrjy1EGncsXodmJOn634ySy2kGIphbGsx5FpFeuvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X0JfPFog; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X0JfPFog"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F029C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748126393;
	bh=PajU+/m/pVWK9Gj9UEqoU4WJJHQZ1A7MwFbv6n7lxEI=;
	h=To:Subject:From:Date:From;
	b=X0JfPFogPKPicx1y8FalPzFfqSDD8r7Tm18Z7s0/FCiDlA+ajbi55PV1Yv0oVmwBM
	 lPmC8fVocaxf2erSx+dyxp/DGlGEJkNQudHIpN8cY8CxdCt+N915LzAfZqA/ftIOWv
	 ASrgSLWXJbVPs/nD6e8w+c+21cxkUApfFnjyZDW9OXhGgKCtx6ckHrm2IYZNonF9lq
	 1GVAAaXUED/rUxbnd0TWeUPM+3jVjcU4q9KeqKcEPjiNb/0SMNs3EdyQXFELo27ntu
	 p4H+1nrgVBdvK8OYc0qCaE2qCYBUiK6l/PvNYjCmE3wyqrgw18L5+sDrsc2bfAVPcb
	 +mJYl1QfX8XPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E90AC54F30
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174812639357.28641.13935496044757362532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27f335d8b5e7f08f6bac0592d6fb5fde80d91877eafa8a6814e3830895e23043
Date: Sat, 24 May 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748126393
