Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14026219319
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753246194; cv=none; b=dcE+pBnf80NBk+lKbQZuXRmTMFyQLtUe1fjAKDHrxNty+Hm2q4Ppwcvf8iMqnhCMq36BmjbyT2suNfL8Ye9EAgJxACzDaiUBJLH/hePLdt37gRlTxt4pk8Lsxu87uN5u83jFR6XJYQ3/mBNO0R26qopTbR6HUu9Yock8hO5JC+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753246194; c=relaxed/simple;
	bh=Gs5oeXvAq6n0SXMh2Viq14zEMT5jn1qiEq6Mua9/1PA=;
	h=To:Subject:From:Message-Id:Date; b=WG6UBIBdIlXPiYLKBDfauDfVBBcnQXHxTbcQW587UXBYTfE2Jcj2cgJZJps7grmCgeLZWS7viFUwl8Dc34sR6AU/cppEiUIsycqxUkBe+pAbXTtvKKWebzxKJ4zTecHnPxkeCMuJTscFCxvJmi285ojnlM/uaOz07Zj9hcKvjdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qzgAS7Nw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qzgAS7Nw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1284C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753246193;
	bh=Gs5oeXvAq6n0SXMh2Viq14zEMT5jn1qiEq6Mua9/1PA=;
	h=To:Subject:From:Date:From;
	b=qzgAS7Nwnrgan3SpZszR5tY8qZkYRCIUlO89RGTGLKMeu164h4SVAHLL1ha+2XtRA
	 UAqWm9QBCNTd+bOrW9sZpbls7RhV5wlyhWg+rhz6KoPinBG2b0BOKOc9EEqPcHtDH6
	 gHLLMB3d8l+yZAirKaRKYCyfaPobRBEpjONmYhXj50fBRWaD0PB93/1uoomdAlyKft
	 R0JE9Hsc53kxLIf3pqP8kqGS9FxYY4qX0vz4StmlWNDnh+POmIEsb0CSXZjZgSPgx0
	 dFufRyvcansHun1WDEIEGlRFdQnbmOmMrhqwk5zsos590OLhPg+uO667Gk/AIDrDDX
	 Et640ylzxaMYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F57AC83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175324619357.11844.722263778582904162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8b7e0885c154cb983fd4d9faadc73e15cf830bb3564313a0aadd762f6923ee1
Date: Wed, 23 Jul 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753246193
