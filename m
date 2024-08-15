Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 328245A7AA
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723753554; cv=none; b=SDv54Znllr/cKQ+qWMPISBwdScfo48yPubVBmWTwrX38pL2XLoldVFDxLTWYIQzCscp0AQNYS5bzCRgpkUsmr7mRftXY25C0KNoQycOvBxTAaU1v+rwzLgRD60vBy4NQXvSPU+HofX6G/p2IWIBIqRQ4BnJLEVK+uaLqLE6/vBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723753554; c=relaxed/simple;
	bh=8qhKWERSPlMCw4ItA2w2h7hGzxEC+yEVaG3eLM/YPsc=;
	h=To:Subject:From:Message-Id:Date; b=au7yMmJrqr6T8PPC4x2ALtBnYQ77/79jvlQCQV5exuyHRbnzx3CYltX96f1ewoYpYST7OT08ppUdMX5SW+KBUZCOAK37rHoGO7uc1RSGoBBejkNrK9trkT/KOCBxw05EHtDOfqeSdU3LRFnWn1xN2VuFsx8GRdypyvAgDXEa0Dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KIPezCtH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KIPezCtH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B01F7C32786
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723753553;
	bh=8qhKWERSPlMCw4ItA2w2h7hGzxEC+yEVaG3eLM/YPsc=;
	h=To:Subject:From:Date:From;
	b=KIPezCtHvNgFb2EmJk0nqiIKInHcmcLSfVZXZvvleAI6YEcQGbJhQkEaIpfLpjcr+
	 Dm4/b/2b/DsIAgzHe4HLRrp2SgwD5krerI1rAWw2i3z9tX7rj7zUKoG9cOc7ndomHa
	 IfIm0WgIWjVW7wfRK0R/QD6WHRxRh/moLzQkDWUhe+hHvP2brbJq9whHpxALR7Qbp0
	 hmCTmdjYqQIcsYXv2JfX6zlsH+NasvoJppy2BBS8W4A691D8oi27z4CW6lT8y/hFr4
	 HhuqDnBrLpwbQefmoMGsLyvl4WHbf/VxxQj54F7hT0ehR4+cotLx+y0doIBQNC1PBL
	 KooATMPoWICYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98543C52D7F
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172375355361.808.10204214190102128730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8aa45bffc775a4087fbfbce676ebeecf0c70205127ede4eadcf9cd90dd8806d1
Date: Thu, 15 Aug 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723753553
