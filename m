Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5117937E5D9
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785434434; cv=none; b=OyDMQS48hByDlHHC/oVk+8xa1lu+JY1RemW55OZZ6VQp+7O8PD+yLMMphlPnXZuJxTtMg3P0acfLxUquWL9BEiXagEqvE40LFJenbwKmHRPtPstzHOUvjJGmUFMxD3fJ4N+k9fo+EMItgrzZNqCawLWhoZ7l/8WRGebZmuGpqXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785434434; c=relaxed/simple;
	bh=LNlln8D8eA/DS193D5OPYyAmnuJGfStqcd1n8ge+56o=;
	h=To:Subject:From:Message-Id:Date; b=IQc0c4SfNZAeUvWc0ooD9ooQVLJ5t5cjSpaK1mh4RBDuuX/X90c2CPIZNexzdw8v0a+/QNAaDcNmzeydASfqQtyEwXH0EHusdZnf7Ktv9a/Qf15Zxgl18vjS/AQH6IlOaTftCaV8H3UBncpcovX+iCbJ2iMD///5Ten3E8EPzDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=prZXgB+C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="prZXgB+C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A8AC19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785434433;
	bh=LNlln8D8eA/DS193D5OPYyAmnuJGfStqcd1n8ge+56o=;
	h=To:Subject:From:Date:From;
	b=prZXgB+Cbj6MZKp6YbcWDSgUY1rSCvt2Vb/FDogfljXxfRaHU/yjDdsPz70lh/TIU
	 Q6v0kzoKyQo1rmUBX42IRFhFXDicxs07jZzlc+JAjUIKKpUxR6x7TTLngkcXWbpdSo
	 Tp6vG0S+xOYCxqwhXYvQPNcj15HMc5fh0aY6eV20hVUE7VUpxsLvlNfPJuNiOWdTy7
	 lfBfM9neY4qAK9OIsWrNBzXhuI1pLN2yMQdw9xHTWI9pYBOKcSeIfnQ1of5J003zBU
	 5S9jhws+QISsaUgK7yPuiuUwTH2KHsvtb2TmLtFW9shb3QdS49xn6DGEzZ0eH19Ssd
	 X+kinNs8I4E3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE7AAC5516E
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178543443370.19655.6483880688364054621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 524a38a0fa615f31c34ade2db198f69545f221e37b0945d842f2a54dd0e9fc2e
Date: Thu, 30 Jul 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785434433
