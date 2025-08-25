Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69EA521C167
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756159194; cv=none; b=LIrO7utA08c4QZT9FuVCONg7jPJsaqlqaU0kK2IcaMAFaZgz6we4OzvoeyewaRo7obdFQGcuwCl20aZ4t8d7yPg/VcQnq9tXD57SJ6+CfHB51Rl587KV1esDVFrS0culiIwnlI6pnR6SPHUuM88yvKey/Hg0CD8FtyuiQOo0JUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756159194; c=relaxed/simple;
	bh=ty2AtM+cVd5gfaWPyBMvwNsxbUylbsAISPxAgqpgS28=;
	h=To:Subject:From:Message-Id:Date; b=cTbT03uuyMMqEBm9XZ4Q+jQYEwrISBVw/NddIvVE/1Am1aEe01zaWZvhZ7im7imN7L0ytcd6NJ9Atk81Cq9WyW/bYMgs571pSWxjuUF6TROETTaFTipGAkj41FCgu9lXMSBc8GYzjpnf22uHWOWwGS1eIQm7aKbmbyW7wRk2wRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D7kkVC5U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D7kkVC5U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC21C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756159193;
	bh=ty2AtM+cVd5gfaWPyBMvwNsxbUylbsAISPxAgqpgS28=;
	h=To:Subject:From:Date:From;
	b=D7kkVC5UeKiIocvCp1arZ4ejvqRCgt/jQsX+k8GJjh2y+5+gvx2iMFrDTHVg7yaA2
	 MpQxtkb87LtpYVvjDaUtJHLcAkeGnfDf28oc3RQ5tCoiMdP22JQuB8s+S2z6nNVqn4
	 kBg1aZou2DnNfyyNqtqWapsGr4sdPasiBHniZlWgPrgS/MENBQiSAyZb/7ZZCRRyY1
	 WFEiefJhD2VYierB9tyvMkELRqx2zOJhdAotuTOtuPNWtbr8dNNZZ6lRo4pqFG1yt8
	 /wZijBYftgNhCSRTXgJTsh29ZUdyOf8ltHyGAqsr5bJC10Ct/etxMBe5cjZu6t9xox
	 w/cQSpAGXmz/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E825C8303F
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175615919357.22606.13905151143670774469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 697d3d0882a2080de5b08a78ff5bb6dea1fcc93e84451b18516c19d17150befe
Date: Mon, 25 Aug 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756159193
