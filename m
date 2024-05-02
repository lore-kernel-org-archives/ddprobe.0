Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 425AC43158
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 13:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714655543; cv=none; b=Qu0K5NdS3OLjeL883hRnQ/VSDeTJy3M6QEL2rNLNZPAgoffnTV95GvU/bwqQj/3G84lbe+TOqQNc9wdwwZqsMBQnlezxm0m2XdlgLitPa5lDvUKYEmTrvNFZWNIbkIzsCiFPvoxxCUzT4GNFkqQy5wy+RGoVwapNPQW8NAxFsVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714655543; c=relaxed/simple;
	bh=M0Jd1YhBjopDlXBHDzV4F+sZZrFjeeWlTHsFiIs5P+s=;
	h=To:Subject:From:Message-Id:Date; b=VuOWhLxvSDOvhpP6Gy5DgQrsvD05eI0S9irYI96hDogwWiBhwjP1QId81On5412cgs48UwFTDBfnzB6n2XkrVXUAnASt8d9avBQgD8od5vB/pyPZu+xfO5pFLtPr2oe3llZiHwEqPT2qQr0WbnGqPL5InauMS4FIX5TTJJ4e3g8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C2OPTrEf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C2OPTrEf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D74EDC113CC
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 13:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714655542;
	bh=M0Jd1YhBjopDlXBHDzV4F+sZZrFjeeWlTHsFiIs5P+s=;
	h=To:Subject:From:Date:From;
	b=C2OPTrEfWOHKyU8mKDiySvNbGIV7q4J34IInfY8Mrp6s13qWXIEGTKP/DOwb0oq+a
	 P6Fg2c59O3NNIZEiiCHVEzTCB1FIdet4m69gfKtmvK6/VraWGh8BLbZcdyjvalBdJ0
	 +zLuNhiHyqxYY+o8BZmccUO3YyYzJKRm5YeCk3TIp8ara5jx68dFpz/7clMEgcoG+8
	 OOSJx2JNAWvDLmvzDygMrs4z+GcFKnBM5SgwznstXvJktjdIbRc1FbcackHJNNDhJU
	 b6emrYzKkVi2odgT3qICLU6PbaoHpsks2iWn18N4iatg77BRXrXP7f0LEjoQjZrugm
	 VDy9ncU50TaHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C511FC4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 13:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171465554279.14898.8951649179795867514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b4cdcd9db38f5ff3af405f283bc8736e9f37e974ee15875e2707ad36009a326
Date: Thu, 02 May 2024 13:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714655542
