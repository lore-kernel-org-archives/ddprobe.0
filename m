Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32FDC3CBE8F
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 10:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778235454; cv=none; b=GmeWA5QfXijwoYK5Kbma37PwfFlAzcSjaurnSS7JziKVtv/UaxlxFgAS16QhpydDnVAOD/kiWxuWmBRyn1O0+WMhTTbx8DWGw6yptDA0dEa9bNc23tOyoM6y6vdeCwr+d3A7yH7aROLMCCR9dAgwyBD5l9ZeJBFJC/9+rCO29bk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778235454; c=relaxed/simple;
	bh=0heAgYtqQOpLmFh/WSO3qM/HMtbKGLSC+w6rzJBNdto=;
	h=To:Subject:From:Message-Id:Date; b=CvzWJA3BdYxB2SgbK+hlxKNQ2YWd2hcNO9+ThoMKO+dn08Y3/CACKifk3zMFgPDrZ6mDjkCay0HL61PZsIyVQ5UfJG90EKARgxLJWddFslE+EWe7LZ3R3uNiGt1USMqEPphfhKi8iO1MBi5WixnPUEQ1Ux+hCkMmfrtQH0xv5M8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fsVSmpI7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fsVSmpI7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCD0EC2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 10:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778235453;
	bh=0heAgYtqQOpLmFh/WSO3qM/HMtbKGLSC+w6rzJBNdto=;
	h=To:Subject:From:Date:From;
	b=fsVSmpI7YSnFMfX+X3FXVL2oom2PNo3UEPKRFJ5a+dYXCvzFNwkikImxud4UpYIUC
	 aXxL8AKw0oM83CdXjPTn+LY2nEb5e1pPpEr2cQimbkqFBEmNVvNiisUqpR6R+9HMDe
	 +3cDp5n+Ls3crmmxF0JMnL6VPTNODfXijNiK00DMeAQYVEDYERkJ/a3/CCGevwkqO1
	 OuDIKeCBqyQ63+rdcohrze2IbL+gngGSVuVxdmQUpYMuHgZebkE5xKbod7HlLT727Z
	 ZC2cOS19VaD/sGz5l200SMeoTrehxQfpjnD+wzdFRXC0p234DNcovqYniEso3qfDlQ
	 YlBxXGNR5xo/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2F2CD3447
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 10:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177823545369.11156.5098167802645960154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e10c14dece5695cff8fa3438365a761c9b2392857001c02348e769061f83fa3
Date: Fri, 08 May 2026 10:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778235453
