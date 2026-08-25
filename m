Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D60F2E7393
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787641834; cv=none; b=t4a1LAvJ4j2PEk+gxmsHK82Ojo8gf7Y5odwZtmtGlezOjBV8wzOK7DSKzkCDpRwBcsEUDw9SVxZQhUVlDrMmyynA19pdriQp2EElkz3t3RNrh0mqo7+XgTHjgQiSGQekSrIo97B78yJMlHXjdDY9+k8GHhp062wy895cj0KCUBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787641834; c=relaxed/simple;
	bh=nCxgqzJl0P135Wp+nX9IkXwbm2+nLW9cO9wLIVJq+bE=;
	h=To:Subject:From:Message-Id:Date; b=YJvWjM39Q+rnFfKW6JjdUjI+Cy9zpedjt07AKrYLNd3Tyswclpf/mOPkIuUeoN1XzPKc4WzdfjlpGNM8FMyCWBMBTiLN4BM4jjZvF16IS6/OlfMvK+XwxRooCj5wIQQYm6OEhpxqk61g8zjzUq+0LNgkCszsOzGsTpi7H2R0e44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c5Bgtnvv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c5Bgtnvv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE2DC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787641833;
	bh=nCxgqzJl0P135Wp+nX9IkXwbm2+nLW9cO9wLIVJq+bE=;
	h=To:Subject:From:Date:From;
	b=c5BgtnvvMJ0ULjRk5aIeD7h4xVwD3kz9ePpAEsFz/o+vqtxQISQipRfvPSFpHoIkc
	 0WL5LB/ow/TvEzRzm+ZFrLLW6M8jXBwwyM+YebvFISYrpNinmSPwLzVs5//ahLDUwa
	 J7md7vmEBjUyDqk5e7MGtRkOXMQUpFx48ogY0Y04dNt46YpVWbXyNXgFxG9YFbtadq
	 7rHMmGCb3ihqwp+0tuA1yNU0ilOj2ItnirlsQ4qisdFBIjyMXM/ZF9Zgfoqhjr+LNL
	 1fyE0Gdrc18LY2nItBI8WugGzf19TSBS9E4lY++Y71soZ8G9LPAsBsXII7zTAusoPv
	 UfjKb67sBhiEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB742C61DB6
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178764183369.28276.7800255387460990455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6f09a8ab6ce48d1152842e39c43c6658333c590db415dcbddffde724f99456e
Date: Tue, 25 Aug 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787641833
