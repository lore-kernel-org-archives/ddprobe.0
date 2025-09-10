Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E53730E857
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757491194; cv=none; b=E3JzyA4jm/g7PjbNsu/9b3f9GfonW8Bp5EI1RrdOfNtZD38Sj3213Vl2LhD9n86yu6mutaALsoZo2d+1817ev5z5kbIl4GawhKeOPYTlMUd4tDgUnpkyenAvRbrCW6fw/UNR7eesahZXU794pclI930N4emKPvjnGu1X3FmrBPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757491194; c=relaxed/simple;
	bh=cO49n7+rFD3dzolZe4KKYl/WmVg5l10QeWrUXuVGz8E=;
	h=To:Subject:From:Message-Id:Date; b=HIXhHYelWHzctoijaAwcIHR4DAnF7BogJh+x2eBlJTDizl9wCaID2fTy6/0Y/YpFvEEG3ES6t3jTwqgFtyOrhVoVZDqCRPWE3ZblOxUTAWUI8+LfKZMe42PmMG55gon7okEUuzv60SZwH/1Z+RWzob75IlaEVTz1lS9H2Mc7lGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HCGsnk/L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HCGsnk/L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1883C4CEFC
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757491193;
	bh=cO49n7+rFD3dzolZe4KKYl/WmVg5l10QeWrUXuVGz8E=;
	h=To:Subject:From:Date:From;
	b=HCGsnk/LDNlb4IBpt78MaCs+pII3e262bxBURoe+4o0YjlbP0Z/5IF+5hVouzdK23
	 OkYMS9jZGRBzSDLg26j3JC0KACfmKsDdp9YbpnUAJS4moIEkzcU6rrvk2F69h3irWh
	 m5PgVAz4lq4LnM3VMqs6yxlF1wJnfZRFmjTXAdnEoDYAElATC48A0iDcpxJPWxUI/I
	 OiUFoh+8owfJ5DztMUoknWirzrrDvs6IGErr1/EBb6e1FtcSPiMgk2OVni0lFe/Ltp
	 RsRubC48KEo+JZ3fU3DVYFvMBvugL02QYd3PBKXABuC04LloKRER4bf5pQi+uVKFvB
	 kmz0qRa8+9k3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915D6CA101F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175749119358.9928.16857567320023730337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cde7f3db9c553bce7c764999ba94e6db0092da0b8a9bbb55aecb6b00ce9ade2
Date: Wed, 10 Sep 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757491193
