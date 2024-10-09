Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4DB43AAE
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728452154; cv=none; b=PRYcUoE6Syh+KqU5lyZHp6cB7+th1+weAZMCEcSRHDDkW3Vvz5+G0VEdP5LOL98+6xFLyQp31doh1T5i4bkQwPwHtTCPgTrFOAdJzU7vOGJDm2+p1W/NgSeMY3R5L0H1KG4lCq0bcAxHDrqus9tkB6gCLL+n7tx6BBwRtedsP8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728452154; c=relaxed/simple;
	bh=4wzv1ZV1py1R4lAFrM0Gmr0iZ9kTpSfVzj5CME2sAYc=;
	h=To:Subject:From:Message-Id:Date; b=TdDrjxNX8wbNJ1iGe6LiIJ3kV8IRCU2xfDvO2ZBJJx3QH1nLDQarjJxdX+F9IaVBadTxOqTY02vNCr0s7JJgJskves6LVY1KhBiaBTtWtNUWprm6p8+j0kjNDuXNAcTai/1tUG+4ccd/RUUQ3xpxAa+zceQQAPE7/zEAYhPBXUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oMLiQLl2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oMLiQLl2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC13EC4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728452153;
	bh=4wzv1ZV1py1R4lAFrM0Gmr0iZ9kTpSfVzj5CME2sAYc=;
	h=To:Subject:From:Date:From;
	b=oMLiQLl295fQIMBpUzxAJzTU28a4I32pg3lBwhmGbLnpsOrwVE6xovo8yDhkwE5n+
	 MGSycUB3VobIrIL1bpXJoicYVgGDbswibaoKICGb3SChbj/BaxG3d7LkSDFFctAz9C
	 R1sW2csqRd882Q3hs4J6Wf+cEqogqh8F3qYEc5k7t4d4HLUn0C/0TgzVQaGCmlXgGr
	 qCzQpl/MJmuoxPhfVEh2pJxQpM4Se4KZKF2g3l+LrPbHxq7ArAUdGEMIpC1vKhECW1
	 g3ySyX7Mk3hywHouPEwNQHxXkDViojgeVbuVo6K4VKtqeM7hSliIQVpgzssG7UPF2L
	 qHX+/KF6aF8Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98498CF0443
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172845215361.25545.16130641671993519519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 943cb9a54c8f686b56b001227babe7cc7374d8926c7b0dfa484e152cb6492fe6
Date: Wed, 09 Oct 2024 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728452153
