Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A4EC41760
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 15:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770996894; cv=none; b=lVMXx0F8QRnPZaMI2+Ez9ve4j8kVbmnUZUnhKkl0/02mE7cm/DW2kjopZTsOGlvV90t41JIE5+wSzoE6eN1x7apKrWTLWOLMQe8cuirsDV2ffe0lhhzldJKu1g//LWzVRJML37hZ2uYzbSdfkubW/d/jCnUeNE2Bjmg7qwviO/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770996894; c=relaxed/simple;
	bh=pZIcpsCb/tp1mmkgBeuYXzcTBRFNVJWmDA4MWSpmCcs=;
	h=To:Subject:From:Message-Id:Date; b=sZ8mWw5KNBQRJRuhRB236/x42y1pbzWYJl+//H1TenhUe4xcoP9ojX6IhkueEt41TBBSTgSRlxb5d87Zhzzo2Nuh6CCth7LKdcysrZu92DFzdehtjiWRXZ1LMpKGd1ufqoqQd7Ta6LvbBfwRQt6YV4mAVQKDgRbyo3Wp8mXHE98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KjszJ8IC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KjszJ8IC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22D4C116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 15:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770996893;
	bh=pZIcpsCb/tp1mmkgBeuYXzcTBRFNVJWmDA4MWSpmCcs=;
	h=To:Subject:From:Date:From;
	b=KjszJ8ICe71pOUm+3O1Byt1dUiXya+LQaPdekYI8Vn05znnqRh87gvql33h7reGO1
	 0wM06NeF1kvITvJxFJPzrRCyPa9sjamUt0VLuzRiU04btT0cowu50c+DBF4oiNLc2C
	 O4SwyxnWtEX+ECITV3047C55CudCzTD9KtPZzKY1sBrHYdqis64XNidMugSwjs5Z95
	 st6KAS1034QQ0ahfOSmCE1eDFw0lg1KHZihB+2UULPQ1BRzJYUOgKYqkcVCb+Ye1rs
	 HZ5tyDb3+CDvoKsegMLwYx2bEguUE+Nkfu3wNfpEU9PkDfbzObavSWEsK+uL8neQrD
	 vc004JklzZElA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B84EDF174
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 15:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177099689359.806.8956719355667638094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f09e9fff2ef96c9b135e896b0b8b531581e57d6903c934aab927e7eb8475231
Date: Fri, 13 Feb 2026 15:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770996893
