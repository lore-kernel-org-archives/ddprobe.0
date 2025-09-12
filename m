Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C32C2147F9
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757668794; cv=none; b=hb3YShJ75Gx0U5UlfOD/Wgn6g45R0bKqcMKQAZUYBK7LX2IT+cIWH+EIA2cimc4D3X3ih79ItnBhKULrn3sETKAvYihMYXLk6Q422pzlsG25ZbUYGlg/onsE+T2cZ7u/+X95FpUtG1+D19ahW/Pd5NZROsSIAeo3kjFfznxFXr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757668794; c=relaxed/simple;
	bh=V5Qck6pe24uW+fW44i5BkpPod2C2yawiLEQIypojL4M=;
	h=To:Subject:From:Message-Id:Date; b=lPOgOdz5tk5skUVZdMte7BEVFQh0SL08H7QYllTL1hePYCXXtn83zUbCQaU/IG8j5aFt3fF+wySR26PUeR8NbgqDg5ngW450LWhRElypbLcYqCNgwVADbSsgupl20yKJykgRt1QKrZ0LZ1gPSOGCJsYtFolYBV8ODak+XsHzx8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hLj/g7f8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hLj/g7f8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CDAC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757668793;
	bh=V5Qck6pe24uW+fW44i5BkpPod2C2yawiLEQIypojL4M=;
	h=To:Subject:From:Date:From;
	b=hLj/g7f8PgQVNsJ/Xvk/WKO/Y/qMHOJXMTOwDMRcpgyCLHT3rfHdL/N69uQvbegry
	 ZcNaICuWzCeowsI4oZ7fAHjjTf/G9jRDkUBA/W1BzNpqr30XbKMq1lfvbZQ8D1asCM
	 yZlvTQPuvfG8aA7p3tGGtuEG20Ygvs03Fe2CeaPDEAK8MPVItyAxoL1Sov/22HzRsT
	 aXAFScB90ApciTXNOmAq1F7GyWoVhVL/D/CEjitlCwrGmBOa3gbUUDWf1BpxvhDJbj
	 kJhypi9J0/S+WGYrWENXzCMrmbs65/O5UuROAY2odZu+chqEfB/mv3DLmkQIKmGJco
	 xRlLxjpr2HAuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED15CAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175766879357.20150.13127164140216947276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 590b420abd4d10936e3f1f33a7e460f5035bf5c442a3c4ae91bc1441cc84281c
Date: Fri, 12 Sep 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757668793
