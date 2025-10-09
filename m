Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7BC2E62C6
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760014194; cv=none; b=tG6vBIs/wMHVHSpyOfswwx2arBx8z/XFn3u1vnAIJ7m1A+Jx5hdndeoTWMVGuNqRzrYOg16YB1jI1HJ6I5MSAMAeAmd/6cHLWAy408wN+y1ecpexrgjzRI3ATR8pCQPOvEeL98v75aqRzKB7h9H2TY3WZSB4ceifJKyEcsn6GMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760014194; c=relaxed/simple;
	bh=aahTTJD+VLG2gEEjwK8pMgYluqtsW7LHrzN/8IEqN/I=;
	h=To:Subject:From:Message-Id:Date; b=uDIMui6EpDf1F8jwXzgshYk7jrcTozxeCMn0MNOPrl6GyD6o8W1yOrwHppfK2BkVpnVlY7LOXI2DFQ5W5iVFW3Zb67obnJlusbPbPb7Y+OfyvDfMxkg5/HdNtL0cqujayL4wxvG+yKyoHdtuPk1UBmVHgM2RoGHkNApJ/+psZAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XJgxo8WH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XJgxo8WH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E58C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760014193;
	bh=aahTTJD+VLG2gEEjwK8pMgYluqtsW7LHrzN/8IEqN/I=;
	h=To:Subject:From:Date:From;
	b=XJgxo8WHIyd/ZkT22yS70PoTJp/uy50AmuSJS8csf2oECq2ZkDtqUVhSZgRmya+MG
	 UMIxfCHUWMby/FHLIwcDT2KSKPAIFGL/keSPQ75nDSonU6e95+A9+Opaq5ur8U01R2
	 UPgUKuDO+CNPltXTcdM3abOhCr1mvANvHtDOhZoM6T4BzzGENJ1LjsxkmVRklQkCFi
	 h3hwkdxNsYFAb9oZaHxJJau9gWWGP7POzRah6dpd/7i+wOJAezka81pY1cM3CNFstS
	 jd8E1y4CFGo7iNTyc/I7CoiutrV19ExtVQT5KppdsIxrEmxeni0BneMYhKfWt/RUxB
	 iNxJfrOG8kuIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90944CCD185
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176001419358.21375.15456480712564839891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57af81a13768ae9cb0fb287508fb7c454a40462c0ca44fe2a75e978ace3877ec
Date: Thu, 09 Oct 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760014193
