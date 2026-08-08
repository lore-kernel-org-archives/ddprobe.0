Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FB5F34CDD
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786180234; cv=none; b=BE8sx0RG1ZKadjxnlxjjGoHuhR3zSaALU7Tq+9yEQpxh1LCRhJiTzanp0b3pSVtB/rMwxKtIfoC16D3bCJgBhkdENmB3/KUtnD3uuccR2AtUNjJUYuHhrkIlsEVce2TF4xZIoTmXIK0wcWkWjZs7neMAmlRmvNBI8ZGLnks1V5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786180234; c=relaxed/simple;
	bh=xBYrCipEjO++mHXZuOwvW1MIcWCSgvg0WfY6myqIOKs=;
	h=To:Subject:From:Message-Id:Date; b=HcN/SmONBbdZr0964FtqU7g8CFrvOwCcB6UyZbcUB70xUR2mdq1wRdrrG/6HjD+5EqQQUMGakM/QAGHKvmep3qgpclVZ6bvIIFL+h20nFqFMSyi6Aj1jMK4gsAa6GCt5S7xt93vZQ9hD/9OlNXfWyy3P+Q2eaonAzqnXSLcmzQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eigO9UTn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eigO9UTn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7309C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786180233;
	bh=xBYrCipEjO++mHXZuOwvW1MIcWCSgvg0WfY6myqIOKs=;
	h=To:Subject:From:Date:From;
	b=eigO9UTnkDSzDSMrcwV5is0ALwn5we/8J9np0OIxqiFlcgDK19i4XlHJqjTU5SmvK
	 rwzHGPr/JMlyYyxdpqy069bcgUd2a4UwTMRvhFezg8EaHgC6C+YdGo+R7573ctZ5C1
	 qRC7spIOteCaly6PtW1gy2R5omE0lnAfa28pB8uwDgZXQQOff6ETqPz8s6FXBIlMTR
	 GM4K2DUYi8Zvi2Nkr48fPnVDms/1zOqoO9D8iX8jc0hIJQZJH5YcEIEPf4FSdlDaXj
	 7eG6Pr5EHhDttPj6a4OV2TXARIRMg3k3LZ6x/rkKdJsCcok0wxLr9yhrGf+xvvZop/
	 fq6cXLj5cJW8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3EBFC5AD2C
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178618023369.9582.4218524546949964292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f168c25bf9ee39bad617887c1e85983bcbac43c3612b85d17700bf7fd3fffc35
Date: Sat, 08 Aug 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786180233
