Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62B6115C0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 10:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720953023; cv=none; b=dKFay4BmEsmtmg8we5uK1ue7iqohOiNnE8I+20ekDSWMo0WvX5lRjcgH3iYRm1p4tl195017DcPlUJtQBCnYwk32cBg1/P+1yKvR1UXoO8n1lIH1mtxHU1KKxtKMPBeIXX8pkyWHjT0j08+gdIqXyhW04t3ZipbncxOoMtc1l1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720953023; c=relaxed/simple;
	bh=ZOScbsnOFCHmxon3EZqvgGti7nRhlz4GoOx2Wjb6MrM=;
	h=To:Subject:From:Message-Id:Date; b=cTiXMeMHWTMb65WXJ94B+FRj/KJewEXE14m3AVzIHkeJLDVtZPXGRH8jPCKy0LAlACTSw9pBrboOZn0dyAnJ2KWGN247xH5v0FSSl/oLqWLNsKBA26XJD/FqdRiNxbg5fYxhxtUfedzPk0Bny7E4hhs2dHYgueaFVVk8bpmE8Lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mt5MPtM9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mt5MPtM9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E65E4C4AF09
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 10:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720953022;
	bh=ZOScbsnOFCHmxon3EZqvgGti7nRhlz4GoOx2Wjb6MrM=;
	h=To:Subject:From:Date:From;
	b=Mt5MPtM9XrmcoIRZAMzpqB8gr9PKC3tEPE5d6JFsfz6TXPRrroy+Go7cX7ee10GJt
	 9pRns/av0e7yBvM0YCpVJs25tRdejQsqgk4NLpPRMHtbMr0KcOr7h5QHX3E2uwTD0Y
	 x17EDGuLm2yD1UAkHNJpSXQwR8PRnvLbx5AeqyMa3QS4rt7L03L3YO7piNCWb8w3U3
	 ScIgT90z8hMYeSNZkSW53nll4GdAcu9nPT4ZEpDaGzaZc2o6hlyTsyz1Sm9VpH/6mS
	 R4rCjEqtv97DZPps2vGVTqQPAnU73bg05UO3yQpo5DveaecKsdjP0Za7qEpyGQ2pBd
	 ibFsmsQFiK2GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D119CC3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 10:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172095302280.15052.9811149754023912981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 127a01ee14bc1b528f79ff470c51be4a23eb1d6813286a28458552f0e0a1d205
Date: Sun, 14 Jul 2024 10:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720953022
