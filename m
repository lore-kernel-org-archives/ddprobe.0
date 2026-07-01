Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341A835E1DF
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 23:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782949114; cv=none; b=PQnr+D04qBqgbwcte/jZ/+pW4yxbXYaJ6a5yzJuA0RStjQnhwSB4p3/BaWnWgfWvTIPyWRzz1dx6RSF61QTgXbpwId/c8TIZA0NGK4QNa6OSILc2yqmD8X2bXDrp/o9NW5P7oMh6Jxd0N9ILDs/PvSHyaYuWee6+f/rEJnMBRe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782949114; c=relaxed/simple;
	bh=apFZukYWUJpeF29QlUA35GwWwoATr4UJQhDpQu/o4CY=;
	h=To:Subject:From:Message-Id:Date; b=fSpZ+1HWqQyoey9f5dgFzqXy7MSqLHXgXxYYSx5l+DlCYeQEk4w8ArZOEjS9deZ2B+N0Yq0Uq1FMMHNEDrWDCK6rLsxZDulIdu82/qDlEUzNTOqG18tb0mxgKUK6SRmm+wMT/49HQJnjjd8g5rl/rvD6tD6e2ue1LfbekbWQo4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RSnrf/Yk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RSnrf/Yk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C668BC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 23:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782949113;
	bh=apFZukYWUJpeF29QlUA35GwWwoATr4UJQhDpQu/o4CY=;
	h=To:Subject:From:Date:From;
	b=RSnrf/YkDZruvle3gczS6An1T0EoeoUvSKGcgRbFXLDgNkias7M62tKuVGPFsO9ir
	 raSUo8DD6YGfNtE3OtTL6kJ94ByUh+ZC3WDVreTdAVLjBJNCfos2r1cHfuZ3bBi0yB
	 BF0CRv2gz73eTdvfxgiepHCj/KsupIq0bT2HS1bTF9++rf1zZoCrt1VY0nEIJORdBH
	 qXXzIrprsKBIAJd3fiktannW2STTwlkIe98Ke33VqYIzdf0Q0qCs179RtQy0iHLcDY
	 tBspS8+tRWeez45mD77PXKjkTfm3JWzYtZeKtPg2uN6oUVFBxiDt9vRCYP1zglT/vo
	 afTahVig06aig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF90C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 23:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178294911369.19262.11483805901396673456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9200f0168da0225c89c899967f0b180b029c078f68b1cbd5e62fc5cee72fd23
Date: Wed, 01 Jul 2026 23:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782949113
