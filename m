Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59EDB17993
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790913634; cv=none; b=fDzDTrFkBztpVVVl07aTwp9p436w8wrO0wlnejpZHFHk5nXBmOsl5bz8I8nx+nHSvzuO3kBTJuBVHD5gBwH8+wy1z5j6uiG9BPEI8JJs+9+lyY4HiFBCd4MeCeZWMUdHp5JANyhV3WaqvVTfH+MFeSOEl1SxZVSPAiXbhmM6JIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790913634; c=relaxed/simple;
	bh=iqoYVmDFw1kGcop4bMKeqz0m3DadGT7DqjTrMO2AbC0=;
	h=To:Subject:From:Message-Id:Date; b=nFSNVsGwFJXti8alreH/P8iIjwimu9YM51UdMCZVF9nPsH6ujnDMMbMKtmZdboj4ieJeL/DBLe8U4cRxj+/YtzxguvNNqEppYex51B5vHn1V0TAfQ8Q/A6A1tV5WrTEqC+P2xQ1DhffKs5wCuJ4QsHLBJ9Nx4Nu/kOGbkfYhrGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J2dLPwi0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J2dLPwi0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D561CC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790913633;
	bh=iqoYVmDFw1kGcop4bMKeqz0m3DadGT7DqjTrMO2AbC0=;
	h=To:Subject:From:Date:From;
	b=J2dLPwi0akHOtC+4RPKTpKR45OU9mpoOOCMSyM+HKP7NRI9RQ7suh2IyjSQwXFUYV
	 u9pUA0pANhcah5dQJHNB0p722y9vB5NPtHRNvg7ZPiP0wCBckxSea6WkA1GHXU1Nq3
	 XA+Mv9OmwBg7pcViEVD6iFHAjwSnwJrlzyuH2mROQ+dp7KQaIdX+5Pf8YS1lO1M6ET
	 jJZLl9tWg424BP1Ebyzb1gPVms2tIFEKyd+OyvAP+Y/HtjIekGtgLUgDj2ZFHD9D8I
	 OUm7ruwtzAGIfsms4W0GmOsURvGFYm1VA7ydudWfYSybjowtEp2qKvIAp9VVZAUNvc
	 o9CPnbIS0n1LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E12CA5FC4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179091363369.25450.8905146931023121490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96320451e7414f193501728e09b49a1f8f0012597506691effd156eb170ad74d
Date: Fri, 02 Oct 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790913633
