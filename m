Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1971330748D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 08:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751616595; cv=none; b=MGSNYZ3dVcdN/SYOuMtoyK0fiUuIttLlxYGhOMv6tEGLBjqt8eAqaZy6tcjVsZzpOSqj7dNEyRvWv16FjY7A9uDFhdkVz3hXWiGpO5/kmCzZt7HXYG9qrQAkV/53Hz9F1vdjGkSO3o3Xy0cZhRGaAm+NOBcj42lBPqbnallPSeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751616595; c=relaxed/simple;
	bh=rvx/3rXvVojrR2OtLU87RsiHMijcThN2+tqDnrJSpLc=;
	h=To:Subject:From:Message-Id:Date; b=GyQGNxpu1IHVr23i0j8vh8/39eUfsNJRvC6we4f2t6HAr4bIYcjqXBdJTALiHjRXLCfccuZKnWONGjnK0wYUXAuYb6G6Vq74zwPiCpB9Zlu9xTt0EcKVybcbduD3WIK/XJFwusbdMw+nqQVC5vsBOcKV6bF3WLBIlLUDwfhK9PQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kbChk3+2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kbChk3+2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B7B0C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751616594;
	bh=rvx/3rXvVojrR2OtLU87RsiHMijcThN2+tqDnrJSpLc=;
	h=To:Subject:From:Date:From;
	b=kbChk3+26sdeUVKyT/vQuayQrghRlJ+EWAJePdPQ2S8xJqojT7LdOuztwf8bcdvi2
	 OsG3kjBxm+AwZhsths34snQAkCM6NO9iVsFrMJk8MU0YKAHZ72f8rhXHJKntfAyfVT
	 gPSjWCI/J0l1JMF+acJ5Q2Ibu1Qg6TypPSk+GjNWcVP5HTjUxcL2+0fkkgvVDr7d4p
	 825Llhl5DLK9O1ktwUoKKXGIwr4aRVCQKyEu40aEKvVH/OWmR6RZ09q7uhwVEHNntV
	 ZG5rPwPpD5R6cALDiVFmlSMoH970atdWSgsHsI3Jilt+pCh55UpIEBjOi4Jeuo2ZwJ
	 NxWsnDY2MS5KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDCFC83F03
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175161659357.12063.2122817023165174351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30e2a64e592214c0391cef1d901adf6fbfd1e7cf884c81f103c654c2eb2b7ea9
Date: Fri, 04 Jul 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751616593
