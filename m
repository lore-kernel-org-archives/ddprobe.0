Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5813E345CDC
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785120034; cv=none; b=G4rL91AVIKQU+nXTUnRs55g+7kkRfmm0kKvwdHnnhUym9u7V20ah0DioqPt1JAvDnoVc8x1tN+MluFGPAhrXl9oqfhZfw1iK24XAK7X6aLysNR50o5wJS5WwEjOPU+bb/upCc7TP+DNMD/h69KG726aFFTmcS2CWpOVLdm2Pzj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785120034; c=relaxed/simple;
	bh=C4Dv7pm0ONhn7ZTloY03yfvn2Gj/JafamTEo/O3SxbQ=;
	h=To:Subject:From:Message-Id:Date; b=jowAfsDtvCj5Mi8FbrCFoqegXYfDsLek/49Y1nfwvVdLSpyV/xl5dY/Goe+NbzA2hJ4k+75QSKHA01Qa2NfBfqcAUV6nOl7C53jPrr8fcobqjyR0T2Xk+ypsCi8oE63nS31uD4cWdDBkXMm3AoaPX11y34lEt+N17LIwEA5F0zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wvj+wyxs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wvj+wyxs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD333C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785120033;
	bh=C4Dv7pm0ONhn7ZTloY03yfvn2Gj/JafamTEo/O3SxbQ=;
	h=To:Subject:From:Date:From;
	b=Wvj+wyxsJ/kKljtUv3O55KzsCizKLDePjjLEVCjLkuyU9BzF4Ef9z1YfhWjPSWO0b
	 Jh5jLnfGR3MMtT+4BPqKOE3WZIjVc0t8e+g+IkWIfUnZJO7p2WYuS7486lXEHaRojr
	 Zjk+gihtGNnapc1v6ID3qttGvSuPSy0AlrMn4u/abv/E6McTTfjvm8fekfuzgMlDBL
	 m4jC9aCDwGIVch72rj7P7FLcX6BNyXUo7e+JRQ8ZSabbKd6t4wrwuX0fNqiqyK0+6H
	 4JGRWwApMxDwFEugUPvt//vyyvH16g4RMTLpWWqY+6SN5H/1D1e3q7Iv/Hq9q8dUOh
	 +IfY8iEk4E6eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BB6C531F9
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178512003368.7970.4070957501103791870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c450e3f96d2cd2bb7ca55c4272afd1a8f8a15ff09c3a836e94da3a12767432a
Date: Mon, 27 Jul 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785120033
