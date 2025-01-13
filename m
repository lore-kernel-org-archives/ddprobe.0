Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 446171C07EA
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736790354; cv=none; b=fuLwk8LCd1Ka94rGyIGoOeHJsiICQGdhJdceplWgPf0ihyicQONchCxnWFQlSwA0Yjuo8r2IxigKynUtt7vY+8GEA3R1a3m8impbb7/U/IksadFg7POOn9uyOhgeJiueaVmItpCzu31TG1vzAHE6zpcSpNCyLEQqhQ+Kc/SkL50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736790354; c=relaxed/simple;
	bh=ILyOIxu/3x+R1NKlckyu/myjSmq8M+GGIGWQfKxc+x4=;
	h=To:Subject:From:Message-Id:Date; b=eqgL6WO1J3X1rDBwNIAYf/c7KA4xWCsB9bVt0wnbG35MiHEP8XnUrvsPBOZy+ergdETrVbRLIfgvRUmMOz7Ka9wgMgirX3UKDCg21QWSRR8fKttrjRJRhFIbQ0bEaqd0fI8p2dAhZ/hS2T32fZo0K7pqtNgmIgH1VqaCIleXrrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lOncQnso; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lOncQnso"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF2A8C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736790353;
	bh=ILyOIxu/3x+R1NKlckyu/myjSmq8M+GGIGWQfKxc+x4=;
	h=To:Subject:From:Date:From;
	b=lOncQnsonQhkjBTdjOBqBFmO/wkCkr5fQ+Fu88iXnJ2nM//0YidvXSxFiPzGnRbVN
	 HY5+0t5aV6xL32I8JycMPaXD5R70xiwXWUmnmvYDAutlZhnHE2TYB5nVoxrcgVMOBJ
	 sxi+8pGtq/l0H6H4cx9SsWA+xMsNQBbUJWdQe1fsmPHq9Bm12sNIooKHAc5QcDa8Bl
	 RBV0JTwCQSapFsz1bSHbhXqKonf+glgdblqUGrp/L04LcvBvTumIqq7+S5CUkiMgku
	 Ui/rTfnckCSuUGVerfdZrFP7FHnh5t8louyQ2mDcWaGzadS6Fx2IgJfDXdYDfa/wau
	 h4Mfc1HN6j2Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1EEDC02180
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173679035367.6535.8998311876718030350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23a54200fbf96ffe1bd0ddfdb50a1f92cfad373a9835e973c961a02e136dabc0
Date: Mon, 13 Jan 2025 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736790353
