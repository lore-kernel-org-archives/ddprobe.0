Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B82B3CAE8D
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791882034; cv=none; b=nAAZEOgFR7d+UqWbSuxIZJl8mOo2E9ygwUQjRa+FXYry2xMSpbFCGglZKImlysRVly2dH0mCEUv9JuTGTyOS8FRp+Bhz/OGonzm6MURteYH8J3A7zmgNhLuh6E5MY7SkquklYdPFaKo9m84EraqzKoPimVA+ppu2AwVwjzJaQVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791882034; c=relaxed/simple;
	bh=Rtlv6HUj6X/+o8U0SWN/h7uvjRUos+rE0hB924nzOjI=;
	h=To:Subject:From:Message-Id:Date; b=QCusXVu2HTgp2eka7VkPogM9rqMlpTRzIsQjzcl+HNUrmBG2N7oO6cLrdI1J3HsyHquhSSjG76oBWDY9hsSSTT/+bAqL8Ovz4S2WDhsTgwcXXrrDQebB3ghP8fbIeuaGca8Y2t/yts2eid/1eMcKObVeZY38l3eOSNIfJ0q+1ro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jh3xjmDs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jh3xjmDs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D10C4C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791882033;
	bh=Rtlv6HUj6X/+o8U0SWN/h7uvjRUos+rE0hB924nzOjI=;
	h=To:Subject:From:Date:From;
	b=jh3xjmDsHiHhmbqGBrYazgMCQEWuCisHdPvcBHoaPSdZcz/8vA8awePoKkzJyk8rg
	 9eCBLKkcGri9RQNTLSdwe9OYYj+BTrLn7qqdfEnbUvrqQ+0xphQyuMZJqVlOWMr3CW
	 odeDzW9Orf8VuFQqsbdAIK/ttosTGdlKeenR4eFKcpIjoCcXvBFM4Sv0Mk2PR8cqTd
	 FPLsUh7MivcdqlLcxDMAEEPi+fxUF7PuC5Q5fBSE21d5T4azzDxXEj1PhZRP51erLs
	 SM8n52g5PWO8HN1xR0eOUrh5NDXKE8EmCFMTioFpvraD/ILqcYhANdmClcA9+dIy5y
	 LHyJRwoNjR/eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD603CC6B08
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179188203369.18300.8735301108056625082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62d5d0d450d6ef8f2e13d6f75cf6fbac23d05d0d11382cd9bada79d7f4174b2f
Date: Tue, 13 Oct 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791882033
