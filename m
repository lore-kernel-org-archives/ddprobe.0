Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C0F2E7BCE
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757746796; cv=none; b=LzXI1NhxlG0WPbHeYk8HtIKtuiaZtkva7Ya84ru+mHd06HnqUFcRhq3TegNk9LEw4PC2Ona6NstRh+brvNNIUHpE5wIoGK8OESkYoVN7DzvspwjCe5X+kVs5OgOsK8hEzpSPnbdXIyOuZuUVDfZO9RDmY0W3xyUk8VWhGXwWIGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757746796; c=relaxed/simple;
	bh=Kz0FmOpkIkcSCFYiG66g4ed8ebuSiPTqPMXVVDqFsnc=;
	h=To:Subject:From:Message-Id:Date; b=ltn2ken0wuiy5+LGty/PDU7axR3ZocrhRscHr5WgL9en4HyuxeDAX9/RAiVr3V+upAzlo58EOG7EhxSjWpz/2o3afG/835qWu79dTGVvSDBKVhytjmUdiRHX2DAN+iuNoVCPOET+3ci4DUEOc8MGZkApE4CdmcFGRXDsmMtOjnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T7wlq8ig; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T7wlq8ig"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA62C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757746793;
	bh=Kz0FmOpkIkcSCFYiG66g4ed8ebuSiPTqPMXVVDqFsnc=;
	h=To:Subject:From:Date:From;
	b=T7wlq8igaP+n5/91LBFcWeBdEj5V3fxnD/Xo9ACfj1/vyQ+mYQvgDRU/W+6idDt2C
	 4Q81oEtELBruUg8TqbSYnfX477Dil2GHQWfT3V8RmDYnJKkguXae+zk6mTTMXCg3ds
	 K4Iyaocc40R6xz9kYtn5jiEMaB7eaEpy0yNJNZWy8jItLh5CZgFNRVQ60Nuu4chO+i
	 kyT1qQPjHQVgURnnsXZEhPSkSPsKnbvE6AQRCjv0EJU+HMH0gc+p0BxzA2wSNB8NHg
	 BlP1Z0Jj4SLq0h2vd5GIa+jl2sbhVZuCE6FnD45Rcx1VH/5WHalLggFtyWa0IPYi6n
	 1L2MSFTDYOy/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE35CAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175774679357.16373.17500211126701662612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3024d4ad89e9892d5ab0d7a4eda4228a9806f6274163d3bff71c7da8a28932a0
Date: Sat, 13 Sep 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757746793
