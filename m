Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D1D9154457
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742431194; cv=none; b=soUzNai4tm5xBtOauv6rJtbBIcBA+T/mRcPdpDTvooQJIXxXDof6L0eFuEwVjZrHe1x2FNyGnJs3n6tHTMozBLuaXCRnuUaxLC4/NhZMpqZ4O2fRE6fgkLcAnRgPFdvaPglLwBBTCzYqcIqBwRrbnvXpjEhe7suHcBrKR447ogQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742431194; c=relaxed/simple;
	bh=wMoCc4Zoay7kjfgoZ8wGks4eC8+qf68HioLOX5oBK3I=;
	h=To:Subject:From:Message-Id:Date; b=VxIyEreF9mDyYsQfl3uk48GvS75bARVqZX3zvfKIpFSuQW8rMrjrNwou+Zk7xxhhEfxMk0Tx4ORECqqJJirJuI/BvsjhTzp1hJbQB5/IZR7S+pQ1buyAInUOdErn1cJ4puOMSiblKkSENFEIc4uWtUYvI6zukN5MaPhl2azJSzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZYQGOLEV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZYQGOLEV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE222C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742431193;
	bh=wMoCc4Zoay7kjfgoZ8wGks4eC8+qf68HioLOX5oBK3I=;
	h=To:Subject:From:Date:From;
	b=ZYQGOLEV6jSZrQHvFfsYeRtSupAAfNlugkoi9ZEDiIAq9TB186tzKl8VyWEPQ1Rre
	 3UjSSssLlK04KwqofaGxHe4W0DFKO128pctoX+bx8x4hVUBawuymt/nCZ5toF6IQ9L
	 7ONqF47I3kzCPhEDvNeiWoTyYetYcGLXssFYgIEEDzCvia/vgjWVg79NEEWzrAU27M
	 ZR87Z9sgmw4dHIlEVZNXsexmc9HDBFOMcEEz3GugdQNaEVNEQVEu0uXFyqxHCnLyH4
	 mPTaKemWUxvVminnWlEhn0Y4BCAM3u92z7UfOUtI96wKfFtM6adFg3NCzo9sPEb15l
	 RMC1eRfnVl4fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2AEFC35FFA
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174243119361.23209.7010320870074311467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2693272f65da7b8021de2fe31fe17b47ded61f8be8e556e3ddb41188ea55021
Date: Thu, 20 Mar 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742431193
