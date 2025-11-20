Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9B611E5B63
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 21:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763674913; cv=none; b=GAv3fb51QQzEzHxo9stF2Wo2aeT2mbNXwWrtR8d2PTHOSQ1j96iJ2tOMuIB2gcvPmeoQWekDCzVFNo2vGpAPe80I37S1MKBp1lmhvoY2YGWK+VgfvlK6x4wGIdD7He5TIXnkeNuBM3mA6BGiO0yH2lAFtnIj/IMKiQ4N3o7ulbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763674913; c=relaxed/simple;
	bh=dyxING4s0DHqMQUBtHVMvZ7KqiowT3lKjyRFwote/cY=;
	h=To:Subject:From:Message-Id:Date; b=hqHQMnXD7mf5GFVuRRqv1xKmUzAm/bbAZSRhce/IVxVwLNRZREEDvGii7+zY9frfFYd1eT/Zewa8Bfri28RFRc8OlSQWw3SgSZLOO3DHxb3Zhn+i6Kc6S++new0aiMynIM+xY3Y4yB6X7bQK2ep9UbX7KTzQU/FDnnrY6gKyLVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iUxvtq9C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iUxvtq9C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CECC116B1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 21:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763674913;
	bh=dyxING4s0DHqMQUBtHVMvZ7KqiowT3lKjyRFwote/cY=;
	h=To:Subject:From:Date:From;
	b=iUxvtq9C4vA/mMSo06FmNeA4YH7iXIIShq6/KAPFuubBqUkyvSPEfn5H4USqCGFTl
	 OHISnHg9q16qN8jYiKhQed0swLBw4jvVMyUmV81lfzs6Fpv0hstziLlxmC5CuPLscl
	 tHL0GTdcyZFypLFUjVg/OWn+SaNsM7cUxKgKdZyhpZ0GMVNZnSHXn5O3MLJ/I/n11s
	 ropMZysSBXNb3oZlINurpooEYDKiTkpS7G0DU1ODt7DA3XgPNEt/k/jQYIlXavcQV0
	 KBjmRfizEVMCUBDwN5RIzzV7fCHdQG/Glv6CC6JUCMofNiExrkkOHaurZZ4SyEFLrC
	 gopNj+PT0idYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9610FCFA446
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 21:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176367491359.8652.7175247778848528757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34dc27f677ced7129d9ae437c27f4e4c09c40379417cf8b5ad4b3ddccd14dc31
Date: Thu, 20 Nov 2025 21:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763674913
