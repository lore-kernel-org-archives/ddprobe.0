Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360BF43AB4
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724533554; cv=none; b=NDSfn1WGqMIQbbTVgZGicWPcIHZnLKWTZcLKR30BosAPOzgUBo8jbzNxYyownEvRiGiNHyiYuvGBK928AlhGR+c/972UcAM8/vbEtJCLWP1i83wq6eTkdXco5C9en42rfqmIHnFvrTCDKhXQD8JOCShwLzyKsi5F4PJlwmPjEnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724533554; c=relaxed/simple;
	bh=tSvaGoMmofi2ph+Ab+0d9Aa2Z9hm3aUmzB2KILJa5q0=;
	h=To:Subject:From:Message-Id:Date; b=BHxvMiSeDzrcctmw090Q895d/9kL3RUCtbPDfncwa5zOdj1UoCx2kwNPjWBlv5qAGpnDkNnWAaAMeyj083yRBWRZ/iC4YLOOW0gxY1PGsAvxb+hZW09UIo2r8Nybx9P3086tya8Rf3qi+Yf56RGsWK7pYtGTic2Mpx3RQfLIYGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ldh+BGk6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ldh+BGk6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE20C32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724533553;
	bh=tSvaGoMmofi2ph+Ab+0d9Aa2Z9hm3aUmzB2KILJa5q0=;
	h=To:Subject:From:Date:From;
	b=ldh+BGk6BvuvchmF8nguEZaACTvlI+BNtBi5bNj+dfj9B4gByOKI/vUVUXO0fCv+S
	 DlsgrXdA5JGxGxrjbOidwseL3eYxPOiCOIKFMKx8XFrpvef+s4NTgJT/NfeoTv8unD
	 kjrB3JTjzWBVig/gfKLB2DMO+/6RLR7PHYYDM636oF09yUDa1eCncKohoh4JV6JdMp
	 iNBMoppllPJXUHm8klkiIWm9FaOVD4kTiY0VG7qCKrhmCOWj0P7puvrr1JSAJ6bAIi
	 ylAMi5Dd60EYSpMiaSpXqQxsfZtOnN3fuhWl6A22Ir2R2ZdzSNyg7gEFYrarRj96J2
	 DcKFaaGWd7Vig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A1F0C52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172453355358.17625.12434662408781985883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89034cbe1c6836e86167a1459c1fe3826645f3019893bfbca88868c34fabdbdc
Date: Sat, 24 Aug 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724533553
