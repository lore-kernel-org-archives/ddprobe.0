Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C8CD1DF26E
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 13:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773322494; cv=none; b=tYWH+ze4GcoaVxlbqu7DPQKNbdvYrR0bkx6cKOYsFEmF+peOWix2KQjJ9PjkkmYfNQWy+1Wy4qnNYY4rwf79TpTokyX5q1+baPwmeylIH1ZXMpCaQBf19Vdhw2joQ4kjNfqHFQuwJRuyxSzX9FGJDWCTVBV2zC7fvB5HLoqTvzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773322494; c=relaxed/simple;
	bh=gdr/9NpDrxbZjU47rLdFjPJ06R3W2Hh/Ohg6k36MxYQ=;
	h=To:Subject:From:Message-Id:Date; b=e2wv+2YynRScxs/t6h/KKF+SUp5QJCNzwJalkmWwAo22HUSaMqNtssHawuinj2GYlHhyLaA4Ym0UdqQexC0jaDqUDKEiSTwvIiIZLA301vrK4CYbJh+mqEyaxdW1mhH3A+Kyg2kDcFlyMTutvsOO1L0XqB2BUfeaOIOGVRGin0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n6lrT1cp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n6lrT1cp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3038C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 13:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773322493;
	bh=gdr/9NpDrxbZjU47rLdFjPJ06R3W2Hh/Ohg6k36MxYQ=;
	h=To:Subject:From:Date:From;
	b=n6lrT1cpKI39f/YW8DUVnTn2XRR5xyb6V1DwVVLkFvGNT2Hf5T9kQ8RbmK9adryMA
	 PX9PGEI0m6NvWHtVb0ssx2DqqPf782ZkjFTyyMhdHf+JuAE12fzAVTz46B6mh6xwSg
	 6xEgDgtDDb2FoqzDDPtLEt2rKCFXDle4/KYPsiXnIv063UbgiKZj3Dsy6lJezitj6/
	 itLTZQLLFh2idWGdEPIryYXLVUZEK9+SKhnrfo0xnz2JFbm5IClaWVQ836N1onRCBG
	 rS79eNiMqj1HXW4W91ys96tWOoTC0tlesgk0Hnq1Bk+UmBpclgWdUxykA+4HkW73Cq
	 spZQyVa5YVSTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907611049509
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 13:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177332249358.17273.5159738166656080234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2add0be41fb730cf4e2e38de80713c2316b17d194edc827be1a4a21990c86d09
Date: Thu, 12 Mar 2026 13:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773322493
