Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8BF403EA5
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 15:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779464554; cv=none; b=rh2tpNpeic1BteQNr5NkpG4nlsSb9ikB41sXz5fy6KRX4F3f6c8CdxraUIXzzQitmWrrH+xOVp67jSmM0jPmd1W6WzgDiQ4kYmZpW2jBpeJSuJ2Hccpn6+NjZ1eKAAePEpMPSsehQm5eB6E1Xhr6kg5kbOoLSP3gisLyjgcvlJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779464554; c=relaxed/simple;
	bh=2yVp77rQbxT3VzcXE0QUtfebfbYtFJh0NQKce3Rs2Tg=;
	h=To:Subject:From:Message-Id:Date; b=bVC79EWqhDHKNYwyZrUVAGIRjtcciWf2dFSLg6FCN3c4NE8dG/3QtPAryh1UbRMhLYHBx4XPW5iINPkozFlMefOHK/sb11rEKp86pPEqGscvp8q1GnbTnj6yQaVBWQxVsRyY2KlmpRd+ZIFvO82QzzZzw/3tqqdHSE3YK/Rsujs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cq6lVXeu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cq6lVXeu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8453C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 15:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779464553;
	bh=2yVp77rQbxT3VzcXE0QUtfebfbYtFJh0NQKce3Rs2Tg=;
	h=To:Subject:From:Date:From;
	b=Cq6lVXeuR6wDmm3wFRQ3fUbtmPiguHzCRDX/a9COkacdjb3ZaSDDRkFIK9lz+rtrk
	 koH5O0lBpIG5XrLhZeVyzotOtFx5kAvUrl+yjo61/j7t/MJXWCVgD+Xzy2HaV64F4i
	 KYuqmMLmhJUG62HLY58cxOYumrRCkpFPmk+eC518hY+u93UHUqa3jHmvefXDM9eAjy
	 TmmWk/XzrrgEdpzRB++v+8LQ0huDY5l0CbLUMu743f8eQHLVbNWnmCTrwNWZsdh3xs
	 sDanfSO8I6rmL6zwI+C1pNuvZVKCma5PLaEZda7zBN/5VEJS9uY635w0bV4Sp7kdhQ
	 7MK/x22HMe7fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9990CD5BB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 15:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177946455368.23157.4298140264481468744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afc15996a7aa31c9df5e917f9eca4920e76174892c6927f543fbb07ea7384bd9
Date: Fri, 22 May 2026 15:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779464553
