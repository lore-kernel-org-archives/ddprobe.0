Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 035AD1A3172
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 19:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769283834; cv=none; b=L3mHimcK20nZ3qoO9hzoaOP/GRx+nbUmHdy0J0l0gytpTG+0qalArUFd6csEfknC/Mxv8xokj2bKVXXe/FLpsdlPn8dxOEVrqy6W6tUI9AblI+puS8UsV0aLN8Gl4ig14QpxmIYQscGdLlKMcEtHBJ34YghCCJ3fKGEEJUMHgJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769283834; c=relaxed/simple;
	bh=YMa1OnezmxWi+NpxhV7yA2QPXfGTRqLDYERFlJZkcBM=;
	h=To:Subject:From:Message-Id:Date; b=BUe0IIXMP7ZL90JVy9lQpmiBVUDtcTvw+Raprt2godbIF8QQy2ER0m4KDLAMDh1fDnRqlB8CNxRyGp3Be8REdnxwEkZfh9KpIogAQMqJ46SsHZvQMUeGfG/CHRNFlNAYP+GjvzKbMcq/gHAA1HmwMLuc6PX/YGOcLuhnq7VYFLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B0aTgsHI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B0aTgsHI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6838C116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 19:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769283833;
	bh=YMa1OnezmxWi+NpxhV7yA2QPXfGTRqLDYERFlJZkcBM=;
	h=To:Subject:From:Date:From;
	b=B0aTgsHI80a7dG4U97RjKO2jSyz0SI6MzUlNvxa9txVhZwx+H9sR+fJKHMdPUKZEB
	 ziGHVZIylBHd6bdTXEGiMFC7/0uhG7ae/qg+EChzScL5cj77g0mvTBnG3I842jyrja
	 7uGvcygWbcX1gpIH2XhB86zdOmWhKsKVYQvmXBkiUPSOuo7JUXv5Pvy5jLjO/RZc/Z
	 mK84gxPaYXTtUeiRSPlqfsnJxgKwdK40+3UBHBoMxpF8bgFG7WqJ9z56wTjWAuLmDf
	 AWga5/JWbSnxi2+3UiyGU0oqdrEb3SY54cvXtvcRu0s0p2Q7LI/fBdCBxJQsXayX9L
	 mUHNsaJC6UpZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949C8D715E4
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 19:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176928383358.23973.8732762436407874264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9817a0b0c7cf8d1243f5a30c6b7a5a9fb9d1d3f42b84dc9b26dc09e76018d396
Date: Sat, 24 Jan 2026 19:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769283833
