Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A435314D18
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791001834; cv=none; b=dxVgXf9Mrfh8oaD5FC2PRuwSxs/Xj0Od8mtygXtyoC1tsz6N9ep8VpFf23YBdcMAr0g4LrAPTa87tOgpUdznAYOxVVc7QNX/TkCkVqdt7u6IINsWEgmuCexUD3GbbefkNW+TIQ2Aubn3rvZpmC64GD7faIOcBMBUn5CdMu5c7g8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791001834; c=relaxed/simple;
	bh=PpkLUHU4oHKZ+LE19+nUw3qooypC+YwJJXwqbXgHhiE=;
	h=To:Subject:From:Message-Id:Date; b=VN/FBE5Xk1nTsibL3u4enxc2/qTe7H/ViezVxR2YR0D8y0av13kNcDHwsh4dx7QDAeknD2/IXdNS/DcG7rEMV4KnvxArqDDB6ESAHG17Ovu8JOVJTE0NkKBS9ekb6H06/D+xRDT2PyHLG4sA5K9M9QLjIVFwUlk7SLSz/fgp+I0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i2zpENGD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i2zpENGD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9D1FC2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791001833;
	bh=PpkLUHU4oHKZ+LE19+nUw3qooypC+YwJJXwqbXgHhiE=;
	h=To:Subject:From:Date:From;
	b=i2zpENGD6tuhrPFrBSDlFnTneVhyfp4VxtNy4o21SgMcUIeikSSRhgBxVBVKYzg/Q
	 2qWKruQNQzqg/PtNvNIKfbOZlDHdP6/S+/zyROh4BqLl7FynomoiYqEuKRMjVxp237
	 YjkbWr7WgUNWYVOeMeR1Q3jRIngLM9P0gUPCZSObu3vT3rONbpjdE0wVXFEEMJJPtf
	 /H4eJdYbP+j3kVVylUAnjYsgKROKXLtbO1KG2Fk7NXoyZqba5otJjT1dm/GO0XyT0N
	 tEt7ijxpuw3QCoE3tMn46QPRM5zM4xu1Zt0/ePeKeYylKXX+ezthczcO5SHoCShLRX
	 +LDxZoD4gbdRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B398FCA5FC1
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179100183369.17948.12456767665362164691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd01de5a9777c10943ad167c04ac63b189924bf1d14cf3aa0364592cd99c6c90
Date: Sat, 03 Oct 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791001833
