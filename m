Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F24221504D
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746518994; cv=none; b=hnaGZtrRoSDUa72oloGh7q9nhIdm2IeUhwUhuufasbarrJqnCZwmawkuK6YqtHQkXXZxFsqw3PTB1KOG5B8PXDUj1JkV2HO9FqB8YkvlGaEaYD2HRIUdx8xneWP9EF8kqqsMowecYI/KSBBj55uPX8dKG/hRhzR6R441sEypHes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746518994; c=relaxed/simple;
	bh=YB/t7zZRIxM4ucK1uybXSy5qd4Krc3YDF/Lb0WDQqno=;
	h=To:Subject:From:Message-Id:Date; b=c7qExRCdHhrKxnuHyy3XtdeziORW/5KlHlmZ7VFGVbcAznN+ftBxEiZwc0ObnTdYORlm51X8zCzTFWuaqtPccY4V97By4kmCF7WOOna3l7TMB8sOQDRBV6Zg5u94QKYWBuj/7xtybUuGy1ZhTgvC84N4dmekKBohuVeG9QuOthA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C6hyrAI7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C6hyrAI7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEA6C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746518993;
	bh=YB/t7zZRIxM4ucK1uybXSy5qd4Krc3YDF/Lb0WDQqno=;
	h=To:Subject:From:Date:From;
	b=C6hyrAI7582TXLy9KN+8OMmDbmuZWVyfKws6xcc2ZR6+XCoCVdg8VUbXAeYn+16bm
	 VJjqKU4Z7iQEOL4PHR7kcTIFzIyfSWqzp+4bgoTnN3z1EsRPBN/rf7W37R8MgCE1Jr
	 pVOh3tI47r1bHKAkBRSRDeNosKlhgoOn+FaLXV3gCGKvYr93qJCY8Srx8mrRmPDV8p
	 LQez5KJyOySXxPIO2NPAToVWxgtFyk7flyttlCgbzNKT9F0aLiqCxnChQpRXDr2tAV
	 vTOnGmoYb8BTWdDwV3DV4NI0k1U/R/WcI6ANuIF3AJfIfuWcy9ShuDbWlSWcItmrPT
	 yxJxNpS2DlyTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEDCC3ABAC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174651899358.9518.7345764767718886607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8491f046250538520f2b7fd76745fa5c73295a02b84579fa1e00a5cf73cfc1b5
Date: Tue, 06 May 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746518993
