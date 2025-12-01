Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF441DFF7
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 00:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764550374; cv=none; b=Aez3nYE2nsrAaa9iOIpB4uskgSuxeW4NQJcvey2SZKoRn/YawCtnvD06SUg3xdiYMFxXIcYAxPIPc+R9uCS0Evz5dY6XnufOvHGZ5An8Uk4QPglWBN24wRpd/QNre8HGoMsxwt8h2BEOhLVK1YMtMoBX20vBDWTjuRcUuEOInJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764550374; c=relaxed/simple;
	bh=E/yWVwObZnz6sCp/s8WfTLGe+isRgmMbp4VtuGx4Lxk=;
	h=To:Subject:From:Message-Id:Date; b=PUqJGgSmzLF1j56uMbM2icbO09qRXGfZkvmt4epQUHFlagwRsVcuuJk6sZ6fF9c3Qlw+lqxMH1U85j4ZLi3aKChRKUxpog8LpvjzdQkMiczPhrbKEzZ33VogRpyOLw+Y9O+ppnfms7gP2XXrokLBjVcf18wKGppKl6dohVDlxUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oyZpwFF0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oyZpwFF0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD70BC4CEFB
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 00:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764550373;
	bh=E/yWVwObZnz6sCp/s8WfTLGe+isRgmMbp4VtuGx4Lxk=;
	h=To:Subject:From:Date:From;
	b=oyZpwFF0CazmvWPUQuSb8uSf71oGwIzYfHmCYkd2zNdfUg0uQR5f7HNM6gvh9iJy2
	 Vua2E1rxmgXHgyqPmgdzbpa4QThak9GemKQU7UO+DsatUJ3UyjVt7mKlGexMH4FEo2
	 sc98J+KgQ7GJ5aycgJy2yjkwL0IC6XIhZbTj2Ldtq5odWAoI83wv65C/M/ilf1VuWc
	 xWi55++8o/lEeu7J26IwnmuX5TAMYydoQHigxS2D5p1dnitiNVkruNDuGXsXTt7EuW
	 RlzlZ18vtnuZ99OlTiQIkrQMFcF8t2AJI3JD6oPsS2hEHPxC1Wea8ShqRfhb6FNNGc
	 T/B4JdYQ8GqOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98758CFD376
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 00:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176455037358.15949.14405827669208888369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4328ba78f410a47f49cc843c5b3ebd65686ed30948ea066002e12de3ec5e3d12
Date: Mon, 01 Dec 2025 00:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764550373
