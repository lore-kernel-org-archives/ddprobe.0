Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E942739AD3B
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790877635; cv=none; b=AmlWDVSb2K9HBn4G5zeDxaAmLqKB1wvE4RnXRx1YbjchK04gNfioNHdPGxUIqGMeZaPYZHPe7N0xQFi4Rpj+KTCEyruZK8jXETV74cSL/5qdi/0WsYX9B0TaxcKimkOvYW1Q6rt5QILrDy8cFaHl2w3ytChJS9YGfqXFTwtvoI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790877635; c=relaxed/simple;
	bh=XLJTeAwkMFqxpTrEY0iEp5uBrrfx06iHc6Ipvri+YLo=;
	h=To:Subject:From:Message-Id:Date; b=ARAPIi03GsVPyqlXo5e1aMWK/GJAlnAUgwR/jNJ5NxZ0q+NNBx8DkGGtNWSmeCMzYMIXdgjeX0NbP34CUTRUpObLGT0N8hilp7T57UhauVpF9p+8XOJewvJ3Bzya33GCeOtOWrQOQH2rizfk5ZRaAzKiliCPuxrPJ1YyDsmnSsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SVFV/e20; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SVFV/e20"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE333C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790877633;
	bh=XLJTeAwkMFqxpTrEY0iEp5uBrrfx06iHc6Ipvri+YLo=;
	h=To:Subject:From:Date:From;
	b=SVFV/e20zyE5m/d4OgOtfmw91oHhF6gcJt2w3y5cbNoR0amgpQ9njI3vRuCtb9UAq
	 eawKqryrQ2Ug7kCQSrlHFT5MuTEQ/Qvae9a4/FyrJOoXnGcZOaBy5kdbskPAs6yQqZ
	 mcHUtjo5a4TZXjknnx/HkmzSA1lcZchPv0+sDLgcADOyShu04tIwM+g1BEjvKSCGy6
	 hbt2wmpPmnwAWeTFM6DpjRZqRTidsMwT15IYgVoGBi1/AJViTOOwJGqie47GYrlyRw
	 WdDuX+XqArvPw+Agn3rWl095lEfKJKqUyPcw5/Wx1y1ry/NJY1munf6ALHIvHmFnIN
	 M/v3ZazJ/AuNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2286CA5FCE
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179087763372.21672.2527046207516885129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6c3e46a11e97672fbf0369b912a8765f81100ca326cf9914629eb4fece32a02
Date: Thu, 01 Oct 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790877633
