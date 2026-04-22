Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25DCA1A9FBC
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 02:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776823654; cv=none; b=lNwXlM+Zp/AfBrWpx06xQ5wpY2unSiyKs5FCq+khnSRFSDZLclm2nbHq+D1p0hr4gmNrlwj//Pbor3lEdgwq4wpqcTcN68YHEOboiqKVUdefwXxhPEhDGgYlFD10Q0mVbLqhqH/F6sscq3QXMs35aU5EjwySKS9ps747gKewnlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776823654; c=relaxed/simple;
	bh=5vc2Mc9SIMYgCGA7/yGIBs/aEeBn74JRUMkB8ITKLEI=;
	h=To:Subject:From:Message-Id:Date; b=gNvGRijr/8hhPOChnj729yW5pa4FBUgWHCZfo4iPoSMv1ZD/rAG2tPTYf3jfDKEW95y/2nbT+Gq3jNcxZ90U0dLGJX5o2WdrHSiRpK1noCRc8cmiyhVBSo9I3iXz1bmNxai+DbJXrtgYrH2U+xsO2RvBkUfjsztxLazKOSHRVfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BWrCFhTC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BWrCFhTC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBEA3C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 02:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776823653;
	bh=5vc2Mc9SIMYgCGA7/yGIBs/aEeBn74JRUMkB8ITKLEI=;
	h=To:Subject:From:Date:From;
	b=BWrCFhTCkLzkLlJ0Y95p+DPlUVzPwpsqaOg8TsLyk9Y4Ju2Ya1jOSXbmirKRiZ5SS
	 RYB+CsqF3LDuKpV8FCrYPsSDt1aJBBmVCvSZie/mhMH2DuAPODAoluKzQuZ/DwvMRS
	 msIQWP4gANeUhxYDLisp6IAGDXVmIFgodxCcAgXvALIvBJNl2bYH8jH9720TW7livL
	 dIeSOXU8Q5LC/TP/RbA/Rm2dXyr87RqL5Z9IwQQ4kxjSELSAawXaFmiN3ZT2y7TvbT
	 nsmsiqT3QO73vcqTWSA4sJWbionDWzTg05xGwSS/YJWLyiJunwhruZUnoLp4NUv0jA
	 tdrHA2G7Bv6OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA324F94CBC
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 02:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177682365368.9643.1323421202900083785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5452ccf7c5082154d53b23b4d1154c2517b8213c87a654237971bec9ecfb3afb
Date: Wed, 22 Apr 2026 02:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776823653
