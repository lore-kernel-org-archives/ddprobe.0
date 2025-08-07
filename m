Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8652A26A0A8
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 14:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754578794; cv=none; b=CJdRlCGQaK5QxpaWX05sIkjZ22kt9B3kjU/9A9gr6RKoGDIMAi/4H2tSSrI1YVqzTAwGE7aPkNomUUbZ9tLFNi+z/4EkRgG9gVseJIVVvkvjDvFFaR4/NwV0px/WJwkqDnz1cYRXJ+tHT6deyPfCkEDRQg3MPiQWBWW9Hq7FC3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754578794; c=relaxed/simple;
	bh=9y2JcK8TMd95BKOrWb7Q0X/qywK6g297Fxprz7jo5R8=;
	h=To:Subject:From:Message-Id:Date; b=gE/xZ2L5TF9DeI8RSnjX28cmF9UoW+mq9Qd+p1lWa2ux3FFIREt/v3p3VmQgJSUhfyCmeBDWrIO3YCX/8FacclfJCx5FnpxPIhwp3U9LeLUjBl8d745HAOwaiSaGJfFFZmVGt1Rgm+H2vApK6lwOHouUH572HyUeBHoiamozaPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nJoDBDgn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nJoDBDgn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E072DC4CEF1
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754578793;
	bh=9y2JcK8TMd95BKOrWb7Q0X/qywK6g297Fxprz7jo5R8=;
	h=To:Subject:From:Date:From;
	b=nJoDBDgngXBTY4jCMl+Jiq6lqdvlLCgQ+Shm+ur+28Sgf7Aj+Ha459nL6el9a40/o
	 3smFOYjFXNElXsn3JKgY6ywHKjy1JjMlqC+bUUQ5p56Xh1dOQM917MGk9s6hvdXXjh
	 ktGuayYYwqX3OQfRyjPNZ6Nf8oTZdHpl2dGmrFyrrKGGtPFifHSUqXoExFD8ovEzRS
	 Imi+t2UU4ZyQp3PV2lo7Fsd/ITXiwFbgdEIyT2HSe9QHHK9bIFCRIpGIZOc7so7HcE
	 7nqvkstiC2hz1ncmUNc/DeKnxylLMc4Fkvbg1AM6YWUWk6CQBEIgodI3H9xhVpUZtt
	 4TDTbH0zKNqww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD614C87FDA
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175457879367.21270.13144654939984457175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee147aa0f09468f1934901179e77f450570d0429f28e0becc19a4f2c9378e7b7
Date: Thu, 07 Aug 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754578793
