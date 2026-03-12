Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE812DF128
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 10:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773311094; cv=none; b=ZcntEIkFGx1nhMm1WKzSIeZPi5J9z/WvEdrMlrw0TfHEH6/onN7pJlVT8bQxeCPt8MPH/zsXLY1jhUtWzElKvAawe106/3YfxmQtVmUdw0qCZIy1RcPzXRBTPx8Rqm1RkVwa/XCJqStpZlDDbB+y9fjiyKPGfPntfzBJdvk2tCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773311094; c=relaxed/simple;
	bh=a7RWfhtPhNgUGl4JxgNL1nX1PJ79yWe50HItKdD979E=;
	h=To:Subject:From:Message-Id:Date; b=VmzFNtZDAt61AoVIbed3rsp9UkfwzivwMBPg33KjJBlcHFhjEkoLfrh4Ae00lDoyW+1s+/rBYstxbT3v5N2D9PIp72GllPyeECajVyIvmfqPoANbVoz5z+8LpNXFTKW5beeRxKOSWHPS8EipWCUY42WCKT/xKbSeWpOczkllgrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WId9RQJL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WId9RQJL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC6F7C116C6
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 10:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773311093;
	bh=a7RWfhtPhNgUGl4JxgNL1nX1PJ79yWe50HItKdD979E=;
	h=To:Subject:From:Date:From;
	b=WId9RQJLlcN2c6p82Iim7lUf4+puE2gnIUXAR68YcVUF5SbU2ld3UdOIjpM7550y8
	 RUWb1XFOTBb4JjVrPQJngEg2xpsfjU1B7ad4SaRsuuPOUz7rmD72kaRWSJFlLfLoyE
	 +hzuskFMtQQBWsL+v4AdtdEQzxnNMLdEhTfxFh/F6c+M42VA6AqlUE9BHhEjkf5wT/
	 zS53eoR6X6t8Gk0F2joRM9dZJKFiVwIzjviQDWxA2f2PC/Sd1J/+gf3b4vk7t9Kdj/
	 z4E+IjBlFQ2k1aMiFSLR0rGj6Yq6P36SwzEn22Z5yQafXDcU2hfhad/s33/onvRRzB
	 Qp853gfzHPy0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98440103E301
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 10:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177331109361.22918.2264345971134392702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c38aa24352475a8ef711b5c01311410d7704d4f92b502c1af8e6bd06823341c2
Date: Thu, 12 Mar 2026 10:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773311093
