Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FB9A37C926
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790529034; cv=none; b=BKwMSig65UO+btNH7R1viiUp/NHTzwiX9/C1D7nG5m+tpA89ernj751wqZyFVemayi00PnB5PRET8baf3VElqtrGnK7ILDUNkz92Br6RTVviRBnS3VZet7ufMd8a09fAAvS4CAxDKtD0BO/PNgEvCrLe0GNUfPRtKr0XbJSql6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790529034; c=relaxed/simple;
	bh=iJrv1vgw3pglqV2os/ei1u9OWPc/nnUa2mkotECOsbM=;
	h=To:Subject:From:Message-Id:Date; b=bGVsY7xV0kvb/JLoRJE2JRY2RA3ijT1oRDQaCFxBmO2V50G6S3IMxc2XwUWrHMslKfb5b9N8Vdmsi6aF5CU1OGx/AWMe6LvyvVC8x22OKJ1KTmUzFqXcbkWCqmvoJSMFmJi7vhMgftnQ6rfZK+FoBzMQ9UKWgJ6/sxbPLRTztyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YJ2okoAO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YJ2okoAO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB8B2C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790529033;
	bh=iJrv1vgw3pglqV2os/ei1u9OWPc/nnUa2mkotECOsbM=;
	h=To:Subject:From:Date:From;
	b=YJ2okoAOYliKofg4p+ygn82b24kPP5pz2Fy6Q8tx2m2btuCvLfThHKOdIHNe5ASdx
	 0llF+WSKxpUp9zedcdT7r4LPaFsXfA4ErQSqNHth9Me7HJA6J4HwQtGDc9SMfdvEiP
	 6tl5E+Ul4MO9FKQAfFrxXRTkraBuBPQdg2fFofxb3v+Kml6KSfseKqO0nHi0iMHYlb
	 MV3HLqRjgQqL5tCsuN1f+xyLuslnUI8E2A5umagsvs04PIBxNKydhBt4EyZsKjNYUV
	 ftr0iT5mjXcC/BNg8NUkVzyjTJx7fMRsXnF8whPA2Y1oHcIbY4L1DavZ+ZOEa6BG5U
	 TIKPXQ4lOWCdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3524C98338
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179052903369.28171.17415938269466923254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f7c555a9f51a36080b3e601892b20ed3b951539cbb4824e0173cf5885b66bd5
Date: Sun, 27 Sep 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790529033
