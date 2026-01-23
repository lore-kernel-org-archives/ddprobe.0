Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF7E33B6D5
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 06:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769150634; cv=none; b=sA4ngzv3bPjB8w4TIFmRItRAaCG5tBlnIJpNTomw58hsy8BcMppoxyrvCGTy7vpo2O0w8DxJPAAVxQ7eLU5F1rmMo+H7kLNDp3OsBrMTUtqvIcjoD8EQzMNwrB9A0PI+ii7MZcbryc7/eYGb+LSARfS/hfSp57FExlZazgN6mvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769150634; c=relaxed/simple;
	bh=8jNynDi1ySGzx4P8/NNoCAua/VCPoaRpV+DxCgqlS4s=;
	h=To:Subject:From:Message-Id:Date; b=UAkBygZT4AaK+/StDJVw3TOAPaOe5cRx8iZU82CF9e8hThzYax4lWPvMhMG2YRQkgwUgQqspt8nEo+5OVwSC/Zfk/qw7+hgCn9LYIAX9PixL2CNeMycnD8yyoac/ceBus6O6l9vEQCq+6Kr2miYBgZYREgXEY1zAJRHUfSnQI/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XHiFQ0h5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XHiFQ0h5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24E2C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 06:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769150633;
	bh=8jNynDi1ySGzx4P8/NNoCAua/VCPoaRpV+DxCgqlS4s=;
	h=To:Subject:From:Date:From;
	b=XHiFQ0h5UkdiGWNfUJX+LV+fDA1WZD2j+ek9YUXFMtc8H4fbAn9G5flvktDYk7ABJ
	 FNSxJ4K3rar5exzWwBlFAl31ogQFaWEAES4tJy5MXVz6N1p8Pgr7ReWvHBpxnUc2D6
	 N3hypGXhrksk726NCb7m6grSJPx3NDsUQJX2X7B4z+vHEfxdD7nOPgAAG+/RdrOL35
	 piVKkapIivs1fQo2/an6TetcLGQ4oappBdswlhvE9KSFN8qJkc2GpZyY5PVyKyNEgL
	 miN0n8VLS5KxtFWdf72tEtq+NRCCQRQvvELo1Pzx2AJopnfhICN41fPtj6lOjdmnyw
	 Nh/98etBAx3PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B35D3EE9A
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 06:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176915063358.28634.10189223135401539711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a56b979950456dcc6d76882c1506429e429fb7517175ce71000fafe42f9fe3f
Date: Fri, 23 Jan 2026 06:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769150633
