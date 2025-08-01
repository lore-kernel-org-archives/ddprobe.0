Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F6751DED57
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754081994; cv=none; b=K/bulG+3ql//2f+Xw/Sqbm2IryO97CsEwXqn+AljAqMh6b8S+lXGbLnz4pjBw01KxeJwVlJK2IxwUEJRi5r7+BmzJ3gY6yfxJH7aanUxeefswrkD7cnFwxmZ/Gb+ncyZZbtFWUjc3mLLf76XVijoF9C3WchqYE/EGZeTyguMS6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754081994; c=relaxed/simple;
	bh=xrUSGzlC8mnMG5L2j2aMu9WH99MAmKwYluSOXOUIlhA=;
	h=To:Subject:From:Message-Id:Date; b=RsKsHwO80hvvzPBw9hom1GurEX28TJosL9O31kphfZVFG2pVTh1aefLSQDO6mlh0NM9OUtrwCx9clAdRVQwJQrBOZGuLB9QCN4exfzmcgQIDgumz55aDFN5kfCuEfg2l2mkdffrtzQhJPkHFT4HsGB0+ETxJPiQEKv2KPd4FbV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CSs6kzBO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CSs6kzBO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47C8C4CEF4
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754081993;
	bh=xrUSGzlC8mnMG5L2j2aMu9WH99MAmKwYluSOXOUIlhA=;
	h=To:Subject:From:Date:From;
	b=CSs6kzBOY0OIvq6SSqrDibtSr07kuTMdNLeoSSR1D6Uszr4MBdFUrjjc2iwfMQ5Jm
	 cnTNwRfZxI2LNcmKI36qqm4W8RVLVvi9ru5yvbTjk8ZN3/RU2waM+nxuIDVl6BhJeZ
	 c26PJlxOnHLPnUl0t/l+/pLVO7+/hRg7ez5gRVX5ae0SphkTZffa7auq/HwLKRChj3
	 8VEn9U+dAUUipsnIGiYqUTIDinBGKO0jZ4x77BEdgQvxuKTVAzBoAYrFj95aAkgG/s
	 ceHI9/+rAzUfgP+9mpxWC+/yPBFHagIOHUrIisrpfEhJmjYJikSs9FeejIPBmK49MA
	 1pDpgUaEuSUAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B1AC87FCA
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175408199358.21378.6531107964892787998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61b51a2975d6504f66b18abd62192dcd8b999b5915b1c642b067038ba981a7e9
Date: Fri, 01 Aug 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754081993
