Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D76E53A5E9D
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 09:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776764853; cv=none; b=C/Ljj/IjY+Et1QNqzchrE0CNmAwCTMcxJSaSAa1yQNNw9NDvu+HOBDYN08/H7fog86eUtFU6vyHZj9vwRbP0J9vAkefXKp3t++nCJ6CgULTI/vo+bhwv4gRoq81OvcDGP+N9pmJSbHitKBOm2/H3rIcxnP4iO+y9tpTQH4pDNqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776764853; c=relaxed/simple;
	bh=sQyiCqEWtqDn2DTT6k57g6m1qeO8SlEpKPFVjlLnRi0=;
	h=To:Subject:From:Message-Id:Date; b=nsRkxX5ZGI20e02dOGrt6jKkXgr40cUNzSLgtpCa5w4g+1C3AoyBOuJ5uDzBg6feyu/z7LUGNICVdT+MT2WO7nl5yyUZ/ereuq49efD1ece5Xu2xBV1nJAcv4fir14w+kBzpECjlJ8gAtDgNIWruIg/6wqngd1KzRxM0ZG8F3jY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MJGgMfnh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MJGgMfnh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC5E6C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 09:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776764853;
	bh=sQyiCqEWtqDn2DTT6k57g6m1qeO8SlEpKPFVjlLnRi0=;
	h=To:Subject:From:Date:From;
	b=MJGgMfnhDhtBmlyWBHQFHaj4L9XUy6HrCh+uBp1aHD6Z2VPrOB5Qq/w2VzIsX86Af
	 3FjEBuOVUyQ4cl1LGWzkWbdrhCv85DRuzQRCXj/V2mej9qikZULJ0mFqBh67DJDMMC
	 XZKyaGiR7hahqiN1hIsBFvSPmr0W8b/AcOovFIgWt3VcyfiLNSb/2q/vyTYoTdIUy1
	 5TZSNOksLyxrC4WPHUatRQWXHQdPKiDatX7DKZ7Ajf3A4cwFMoY/9Je/9ufBp8E4XA
	 +zUgiNvCt+8ImBwtsRPqo/AP6JJ3xUrQiU/gQK24+ifqmxyNZdoH500+PxOW2pLLgw
	 PsBsnW2dOuPEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB172F327D0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 09:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177676485369.8918.17209283688709658879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c78824b33f51e5ad8c3986969ca7084ec4b19a3bd1f283f59b09b7ebb0cfe70e
Date: Tue, 21 Apr 2026 09:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776764853
