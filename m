Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 307742F24
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737947755; cv=none; b=Ad/RSorvw5BzcilRKTiNIexEIM0pYfbkgC21FMU308O1cxYUP/qBfymsfSKAzol/J6OJaeps7jgVmN1yXGTGy8Sti14KoKiDxIYnd1k4jCGpxOYmaluB53BA59cMGAZZaRW88hup4M6xWSw1RW2QDcT+NiB+n7bGyan1D3yd1Ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737947755; c=relaxed/simple;
	bh=NDEPr5/kpgxvhGlQOvkqmyfg0sI1ny378DAylAqnmBU=;
	h=To:Subject:From:Message-Id:Date; b=RQX6UHPs4qfsALXw5RpVNac6SBfa366ZpjrS7cn3fqdYtVQpOYo2a4ccwfv80mKEEaeWmG2nU04bD/SKxl8YJt/sg+INSJburWxmjNT3n0P0f2RTQ+/2Sa4ztIVVXfejNOPWtoQ2bWGoG+FzN1WuLgkjjd9kt0TxRUxTulXXhgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SuDPGiu5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SuDPGiu5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A592AC4CED3
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737947753;
	bh=NDEPr5/kpgxvhGlQOvkqmyfg0sI1ny378DAylAqnmBU=;
	h=To:Subject:From:Date:From;
	b=SuDPGiu5FRywKgy2uCfZcmraB09BgqxL4i4yt33ndCghttHkGsCjTDBrcOT8ogZLQ
	 yw50qlY1E8wAn76zkshx77W04w1tgAc9s+VqyvrBFBJKOrsjqbeasfqkvvLgc+GnPr
	 vRemw6KvXsHQl145dwqmsBqFzKvoMEIrei9RxqHpzEAVvb+CmnF3wotxbhzAaynp+w
	 g2L5KVcFjE17xnSwfHlwXJl5gyOE+SucOGqpfNH8P5QPsimPUJO1RZLATmwVk07P+I
	 RPbf2I/rhIvUbExboSKgY61zugx1CHeWEywiXE9/k63g0B/hE6krzzg/K8MvoNrG/e
	 yqdVLUCQGMm7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93947C0218D
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173794775357.6310.11917720040377477896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 985322e0364335f588b97ce86bd67f4218a9f257d136be60e1393862a3eab8e6
Date: Mon, 27 Jan 2025 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737947753
