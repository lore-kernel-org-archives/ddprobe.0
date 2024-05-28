Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 902D89450
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 02:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716863663; cv=none; b=FNixJCoPL61GCWZ2vOOOwlu1Oyyk+xHH5QziyjLXkq1RGQAoLohwpR44t2Vl1FSlks+tUvVPWlOQFxD6ewEfQhwN76+vQiNQ3cwEHvE+JhJCqdKeGeFVQTkR4aQNzpRVD+D2DoNfy11No/ka0AR4wm3b/PGEXL8dw6mFRTLcQg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716863663; c=relaxed/simple;
	bh=IayDEJmYTG/NM5ce1CGmUSwoJfDI6V6x7PavINXPvnM=;
	h=To:Subject:From:Message-Id:Date; b=rku7URlLYkCuJBRlNiRVDPL8Xcpyn37qyq3VpdkhLGDjhrr9Dp380n9JIgIqwlO+OmUfdHdInIvb0i0uyhqB8UVuP/lt286DOZnPAYVQKkUPwiRv9xUz/8mIALJ4QerlcHOpmiBMPemKWMtew1EhqvSygHmDD0b0Sd10R4DuiQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iERUovTP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iERUovTP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E67EAC2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 02:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716863662;
	bh=IayDEJmYTG/NM5ce1CGmUSwoJfDI6V6x7PavINXPvnM=;
	h=To:Subject:From:Date:From;
	b=iERUovTPcQ4UQf3oRHZywdSlEst/XbEVh28Iaplh7gI0AqVQ1dlWzBu0CQhS5c72A
	 a7EETEXgyBe2DhAjktGWa3ZE3L7d6QqftFiuNQzljvPsVBOf1KIzkhK/3niXNHtH3P
	 bmnixO+Cv6UlWX8G6v5CQtexEBZ0Cx4ITJeHYUS2SDQeukisFZQgzsGQubfhm5b/aX
	 7c4ipEzZzQBPzkqZe/9XuMZj55qSSwwt9NC1eMe11s4C/YS4yzeFNvAtRnQkN1lG+P
	 tmMWnFavbgjBdMHULH6Eew4VAoBCE0UJi9nwUqxGYLRjug7tVV4vy84ZeQPnX62WkG
	 jUcnjL64y/GcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D51E8C25B74
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 02:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171686366284.25909.6508961751467172262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cec439da53a887cd543fdbf3ea3908fbfeb6f9a66c3fa39fdfd671e0be22b9e2
Date: Tue, 28 May 2024 02:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716863662
