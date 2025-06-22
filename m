Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B9B130E58
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750634994; cv=none; b=M+F/sTnwb8rgDdN9FyI8gpkQUG7GelfzmJXfC5l/wxUjcRgSaqJs2a0AFudiDXf0FUf21Kk/d3tAN1EMcI48UGvEsE/ojdqpmf6c6kncIfPl4K5gQw1QHgzqgwkax8a0O8XGOdePQrCw2gOT9Zm4w6BW8coYEUsPZHAwBuV1gSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750634994; c=relaxed/simple;
	bh=D2BWBSaBWLNwsnEmQHDP2g7AAGbYjmmc3feJJ/ZNvyI=;
	h=To:Subject:From:Message-Id:Date; b=fL99eEYPL1saXx45p9doImG0iJOK0XmzfjzLrxFc4MOyFMaXlAL6VUR8ZD7v3+9NipkMBpKqkGHgsIvqrg1YWS88msBiANdVsbFkHQv0WvAlGBeM8vRIxNCwJ8cn/s220/1delb9mR+7Z3C3aEG/YZ5WTuStkuc1+Yfy2aqipsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KadkfcVu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KadkfcVu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E23C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750634993;
	bh=D2BWBSaBWLNwsnEmQHDP2g7AAGbYjmmc3feJJ/ZNvyI=;
	h=To:Subject:From:Date:From;
	b=KadkfcVuSUHOdu6DeFBdRbNQAp7TrPX63XnLIMvV2+PHNid5NiAb+JtCRDsxYQv8z
	 Ta/hwUUPcSbKHQl9Fp0ASWoqR4JQX5WuECFMr0ugcv+3dbtJ8TFsAacR8yB/KTKtCi
	 KxPy0JJrTD2vgdGZo+pWqd60xUpZrkDZ4EWFeB+IBm8wDqMrB6yf6osPN4LhB6rbYu
	 nRQnQ44Mguz7RfXDHe66xFOdpg2BMBXUDxHiSZip6UNOIXKoYPWcGfqQ1LbkfuNxMb
	 nkEchZySyMoVhhyMEQGzN38OpPnnSG1n1tPWSPosZ2f8ujRQk/cAN6J/97Pznpx9SY
	 Rs7B2uGeUD0pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F875C77B7C
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175063499357.5016.7331856146710779982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e66dcf2a0a1e843a2069b10d43aaf1034e7d9a6d8e31bc9f531f0805c2d1fbc
Date: Sun, 22 Jun 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750634993
