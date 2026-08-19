Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 984AF3B9D8C
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787149834; cv=none; b=HWRDV2d1zoh7WAkWVZFT9NVO+jHf7/UdjZpvCCH3rKTFip+S/0EwZJfsZ8wnsPRhqVcLIioBD8EeAbUz3eXaMZw1k8pf5kU+J6fUmeo+VMRL71Vg60s0+WAImv1u/CUdPJVuO+ol8Od+vqV2aCbzONhvwAxAjBBFwjo5v7AxWwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787149834; c=relaxed/simple;
	bh=OkgUY1ldAdw9GfYUOo0ko6SX8vlbBuAx9c9HEK9xOLk=;
	h=To:Subject:From:Message-Id:Date; b=cqBR9lspbRwYM5ajyMaUjnubglofP2tPRvLdOWDb/TwRhAis2IDZNHIvCJOMCm/NGApRzoicyz+sf+NZlP5cwxp09DpQyjdWW+OTUX9a/3++xcRIi44PtnOJXD/ZEgg+V6qHEQkQ9GgbBO54apjGnzBehAMBlkAY5387Y1kxz2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mv9Rp2Oy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mv9Rp2Oy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D07E9C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787149833;
	bh=OkgUY1ldAdw9GfYUOo0ko6SX8vlbBuAx9c9HEK9xOLk=;
	h=To:Subject:From:Date:From;
	b=Mv9Rp2Oyw6zDnXgLJLKb0DRBldEeloNq7I/ZRINKxQsifhwp2pbc+KfWvFAbqnCjq
	 wuSnj2DDkLsYuuTmLtGZmBoYm63XorCIIK4WYoBfcoZaSPV5TP+/PN/p8yo10YahLX
	 ZhG6BbPBv1aly3e8BaTYLev3JIpZR5Q24xdj5GERAY11y0hQo5FY6qwGmx1MCZavaU
	 u/pkYxL5/rz0Lw7vVYHtsZdqjPQ2weikxSjECjrr0wXkGzJobTzg+nik2rMtKQ56it
	 zOqjQefUszacrOqAvKUSgpc/IAVBcE7CAkd5mzCdSvC+D+L8L/nuIS5wkhdpv5CuLF
	 LbqLvQ7+XEvbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BC0C5B572
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178714983368.20354.11728440180573467540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29217e56f4feef0e730497f1e6da34a7714cdb55e3279df2da171aea1d5ee6b4
Date: Wed, 19 Aug 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787149833
