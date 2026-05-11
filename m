Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13E242DC357
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778488835; cv=none; b=dQDDsbW1GwIspD9Ru3y1i2uT0UwCPNi8D2AYunG50P/lQw78v9KSYjBbkgTFZzQGiF/rIOUl3FatxYrqY97+1eF5ADyCjZq0/mk1ZPzHUMeFlxbTlhd4WaSRW1gG25R4+mjBEuk+mvCylsMT97ziOWZfp+x4KtR4b9wsnjEu3ig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778488835; c=relaxed/simple;
	bh=Xd9ZX3Blr4H1lQUDvaFTOAbRHTJqUSl3axJkh7t9/j0=;
	h=To:Subject:From:Message-Id:Date; b=j4T/IVni/JY6sZlnROE1QZ7S38SufQ+6EFWe36Wk6TRl/Kx4ZPX8IcAUhrjAOcY/5E83GY0IMao1FboxiXvTnPG4eqJEpjt8UQOqeM0gbIL8aYxzQ1tbFb63SzZRknNXaIG/D3st2K1JycDjHNnwezOl67rtrSdu6VomQbRN3Mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=reRFHs/L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="reRFHs/L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4582C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778488833;
	bh=Xd9ZX3Blr4H1lQUDvaFTOAbRHTJqUSl3axJkh7t9/j0=;
	h=To:Subject:From:Date:From;
	b=reRFHs/LQBleY6AsKgKFEJ+E5e+Q9PQLhcg2BNPQADKepLnwTUklHUZkV86b7NZ7h
	 sKHnUE/8UT9DajiNy/WIOGfk1Y3vTx1ePAJMKIX4vuw0l7GyIznifK38r3o54r3elO
	 t0ISnhoDzfeKwe7VVhr8G+OZ7gCw/p5/5qkmPPkiUcDvQF64SgxC9LOvRPp1NzirnJ
	 +rCF6gdrhKJDqCOLyboW03MSEaXyV8gETNtfoWntNdyWfoVPFg+lhf2HBd/1Qk3d8e
	 u9S3VT4SohW4ISb0AhPYbGynnXQnLcq8simkK+xMUtj1+vp08GZneHJdYIxKxSabB7
	 4d27f3VSqmTSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1917CD37AC
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177848883369.8239.3071344145737704068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60564bf990592b30b0d4ddf841cb77bd95afe7176e7b9dbfe9cf311d388c91b3
Date: Mon, 11 May 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778488833
