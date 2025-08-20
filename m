Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DDFB19597F
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755663594; cv=none; b=TzzT+wtPg/ttJ1wKQv1AXQg4EqW3axxrHCBi1sP59eQMiHhlYrgQR793Tio4oTPF2tDqR/luh6p6fu/1+9wygBN0OvsPse3m7MHOXi/SnrI/1c7h5IZSM4OIyTAjNYj9PT3AQ9VcppkG7UkmAYA6biS+/7YnrxJy3JuhP8izVTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755663594; c=relaxed/simple;
	bh=Q80it5gdkc8xoWR2+NnuWDdDpcedlG1YiwtvTI9zy7Q=;
	h=To:Subject:From:Message-Id:Date; b=GGr3fleVUYye+X8OraJxAUXCUfmyGo2n67HvX2sQXlVMV2LGHK9rdUSACt4NSH2Azin7JelT516TD3LNG28gWOJ01lTOPumdlWN7Uw7dC8PthQTJrqR6lNBdLCizV/B0aO/G7cu0t0hf48osdAQeb96k2cHkKi4yeuMAxZD9JHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M8nNGeDD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M8nNGeDD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1F6C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755663593;
	bh=Q80it5gdkc8xoWR2+NnuWDdDpcedlG1YiwtvTI9zy7Q=;
	h=To:Subject:From:Date:From;
	b=M8nNGeDDc3g/I1hepfnaI9JScfEpgNBI4nh4uF/L8Ci8i72OlcHuP2GubPag9ws2N
	 ilVhjUJg1iqo2Meo1zmGfCjJsPBDKOIzk/UFFTlCYZs0GRp2tynAlZan/tufdoXW0q
	 MB26eaa0wAjv+stOWTZcOol/zqrYYnbNpISvqh9hX9tsgstikhM89tY99N/kpbKn6e
	 rXiwJHQJEaqVPdeJLX8RanUmSFxQNd5p2bIV5+fBmEBp/eMgJrRGosHGoktmvFSLOs
	 LkQyIAy37TjQcbgKl33yw7Q/6zYxR6953gY3toxBpZ4jV1eWT5y3BqqhjxXtUer/0A
	 8fK70/ezZABAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98989CA0EE4
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175566359360.20957.5069381262074628668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c7b519847ec83293d98deff53b63377d4508a9c35c12691ff9f193c20bf73bc
Date: Wed, 20 Aug 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755663593
