Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47E132989B0
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 21:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783373914; cv=none; b=SEXpQQ929mzFCIz7gGsFYdFF9bH7HSRDUgazvrs2NaQJVchTlU+1VqeTXPJTiRtz64LC7pRHRX84Hvf0157VTDyJqU87KLN01lHYrSP5uj3co7PISI3lKp3R1kWWcmuyvZXAzAvt9H8WHLoz2c8lX+EH1K+SXekB0ekShtiXlKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783373914; c=relaxed/simple;
	bh=1OEdHqQGIjG5euIFiZ2/HD6snwc0MVmwFTKGc64K1WY=;
	h=To:Subject:From:Message-Id:Date; b=l/8mByyA6NOdIYiPBpj6JSvomuMve21wncwKPFKdD8ZwJvBleOjEI91lvqtYIaOT7Hzkw22Enhx2Zusyw4BockA2QzAxh+0QJrbj8WbwroU3ovKS7phWW4em+WN4K8j91rgDEASFmfXnii88CHL5Mez6HOyfhbvkPol3usGU3Iw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h0WERtfT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h0WERtfT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF2F0C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 21:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783373913;
	bh=1OEdHqQGIjG5euIFiZ2/HD6snwc0MVmwFTKGc64K1WY=;
	h=To:Subject:From:Date:From;
	b=h0WERtfTdfjoZRl04mouwaX/SSxLaFEi+veEDalabFNUn0vP6ERMsSPnIrpqM7F5s
	 wHanJ13FbGuspEu0sr5ByUxlZTEdo3Q1rxw3X35TN1bvGJUpPeyPWgGyrqtqzQ29Nr
	 o+8v3biX075saTBAViiM/Xx2Nec3LgQ1Uu9fb9ErjeJ/thdfiBvpLNqqgRGiXLVwy3
	 JRdrGzd2vpC38T9x5VzMaKhm7ucdTXuLcnOwcf/Jx+Ww+S0oN0JoA7xXb3eLW9IhN9
	 k5wmj5NjD8qu4e3Bm/4jiM3oUGAriMWQ6BpFdPU9PY3Zn2hm5g2UdhFHQ+M3tvP/Li
	 kni7Edz+Ex8GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE71C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 21:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178337391369.24437.5045288642792168845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 594ac848e31d00a04312d7d8ef6057f07cc4d92fa8aeebcebd17586ccfb32aaf
Date: Mon, 06 Jul 2026 21:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783373913
