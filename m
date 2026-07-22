Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4856A4457A8
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 18:39:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784745574; cv=none; b=f7H5H337/bws+Lh+8XV/8KOT35fGXOELPxMEwTSMvfwmKZO0XBIHSEqc/NzKMwgwI6a2HRgcT4U2PjS38aE3W1jY566w1KcOvLog6Z/K23kMGZD4/XKA1B7/lY3Lj8gF9HtJXsJLl74smUM4vHX+EpcqF5lai7Y4qviv6moQZBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784745574; c=relaxed/simple;
	bh=YhbRE4PXxKhaIGdrrZlQKYV8nOlLLWIyUAv2Qj0Gz5I=;
	h=To:Subject:From:Message-Id:Date; b=gsnv5IXdaBIjblRlq618did5+g5aPmMbJJETR2zvGIiVHGSTCfTXN0ptnZF+QQM75zINoHr0aGIHiOgVAKtr5RKVGONagabkmkL+mflt1oa2SKq0aUskYZ54+zdzP0ryAF+z44ls2FdC2H0yU4EUp9gxX9bNKlMiz8EGyzhiftc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mt8oJWJj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mt8oJWJj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF6FC19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 18:39:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784745573;
	bh=YhbRE4PXxKhaIGdrrZlQKYV8nOlLLWIyUAv2Qj0Gz5I=;
	h=To:Subject:From:Date:From;
	b=mt8oJWJj/ICv5wqiQ9QC3tdIR889kjYgkkgF5LIJc2mHyoFiaaTc08EMu3Z6LU6Lp
	 pMvTgVDRE3mUcbVMVkyRZPkXoiJsvIJLxtBXyelSz44E76yuXgxLTXqnBYSbWimYKe
	 abmX1VaqxgUdIz1xWIkXSL3WrDjVAMy7k4RTC9e7noNQtsyM/wV4HanG3MGMK5zOCu
	 gMZRT+yThOdcMWXSkGWQOz/qNhdw4laI57oEgvdW5Vf8+neZHfIUN++2X+Q009APtM
	 iMbUXDzvhE2bpwO57tPXZFNjyECaChqCmdqRGpECAAHGWwtUlCl9WKTd/FHKheiyOD
	 oDMizCoj5AQWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A951FC44536
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 18:39:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178474557368.3045.12438185900564314890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0844638f8cd377399d6a7658a79ae12f355de0c6e8e104a56a58e03ae7c18087
Date: Wed, 22 Jul 2026 18:39:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784745573
