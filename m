Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B0C018BBAE
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 07:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783235314; cv=none; b=ILfkUzyOdNkogGH9lpKnQcpwFsVSEvnFLXNZFWO2b73S7wkMvbyeuAo++Xkjo19zuco5B8EBMTjAIaTvr0Zrjk9e83FRHBxwIgELB+iATETaZlq6sQDKMvQepK/0GxMelTaMDF+a1hynhk9vwKlv8Ji2AYkPoiL2XctaB4jUeDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783235314; c=relaxed/simple;
	bh=b58EBdX+IeU7qOCRrKKmbNtyWn5cIKU1zEmSpD6z2KE=;
	h=To:Subject:From:Message-Id:Date; b=IZOI+xTx4xq+9dW61HLHZoq3jLE1ZDPex9umkSkXv3jjCy//RHZATrPLn55tWIOconJ2bf/3+RK90PhzXUS+/Y3JDV4RWjt9W9gTOnByGhy/X0f2Rh76rlEifSMXLakeGkTXRVcL33BvFSVPIfZe3X26GrexoQvKsuMwbk5VXg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z3M9r+LT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z3M9r+LT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D45D9C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 07:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783235313;
	bh=b58EBdX+IeU7qOCRrKKmbNtyWn5cIKU1zEmSpD6z2KE=;
	h=To:Subject:From:Date:From;
	b=Z3M9r+LT9b+IzpcqHXdcdjQEzC9x1ZhhfkLbywSVCcwfQ0cMj6rgmomo1NrKOo0I2
	 Uvq/I/tyr1A/Kmu9RInze6mwvPoBk+7PG8SlBtMGFATS716nJl16la9dE4EA22bt1o
	 m7WyQlRfCi0fw/rrnc11uZThTrOySl4Rn8MhWmjI7Rb2U4BSf2X8htIXm+dkG0Y4K1
	 I5npzVvcmdH7qS61couTP0XlCQU1JhKAuRKHysn6QOcq0IQDQXDyaDU7vRQzUdSPpK
	 eC2isotaQXB+RUGcWRnFEsNpANTCZc1G4bBwkK4rWDI/XdrKPngtYaPNa2cLQIWZm9
	 8ChbC/Hiwfdjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC44C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 07:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178323531368.14026.18437674459426781747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0547e1285f56e823d40e42c1d7344c6f61f795e181261214cf3416fe2cf4a0f
Date: Sun, 05 Jul 2026 07:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783235313
