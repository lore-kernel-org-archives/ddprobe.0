Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4871128F3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748733594; cv=none; b=PsCc4fKOop6zmCw/KN9TIr9a5DLcpUFhpfo1/0sxhMOMQVcWbqd4zTideDO6mNiyJvJr0ts011NEeddzOFpWsZcuulF1rOjJpzIz1uB3ZeTDtAk9ECGVH5VxfrtyjW+LDhjelfFhDi5E4ofJ9g/J5LO9aolrioo/LFUGWbWAExU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748733594; c=relaxed/simple;
	bh=j3PIU/uYBtSmMByfrx7w8AbZ95XMUYEwaABPZLyH5zU=;
	h=To:Subject:From:Message-Id:Date; b=p6jEjZ4HWn7na4JpFCR96N3DD/2TAViu4fHGEfTD490pzpCWOuO2Nb/cTUoHL/Vh2Fa47VbF+QiNL/ihd118Y0pv7Hcf/xdz6S7jErP9cG/EaO810QGhIHyls2hQaL1cFlDsH9hfIqIMQhtioLdjtqNRPhMfZ9E11OG7C7p4hEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yjzx9vWi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yjzx9vWi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF00AC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748733593;
	bh=j3PIU/uYBtSmMByfrx7w8AbZ95XMUYEwaABPZLyH5zU=;
	h=To:Subject:From:Date:From;
	b=Yjzx9vWib0w/DjIaYeYWgyKaqmJy1HaXHTMXUgcccdTw2KWCYPeGZfcQlKeYImUlK
	 atzLigwMnCF27ufRglpSYLOwALUqzQYMtLQermxiQbr9DYTWaoxpuizZ4C7z8KDW5o
	 suIubdmfjf+ChMXsbcbVga7Ul7Q717filN5zo0q2qlnvIC2Bnr1Vtnd1lIGc5cee/T
	 E4lOADHFLT2cZ/XmhvcuaoWCYELoE1hnV7FeALB53WEqOMH7yZUf+XTeoeb6oOAAMO
	 2uIn6Hs2PQLv0AzUJai6uIL3SUDsyu5iB0hnkIbsuyx5obJ79DXVDtumnjXt8qyUcI
	 2cJhI6GymgDrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99505C5B552
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174873359359.28974.1158025374088820690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd060b72a1ccd4f65abce4db852d720e45df985d28e7f3034bc900d42db60dee
Date: Sat, 31 May 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748733593
