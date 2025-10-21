Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20591303CBD
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761035394; cv=none; b=QL7O6DF0SE/ZWQrr5WIbnfKLGWa6GQ+j0fDAbNBiTAGcI/ylL+0zRArlvvDD+NUfIBD6Rj4si8RykTd+1f31JP9rRNWNQXGcAJW3qf8YWNx80vxEewRxFSTH6OyZoPS5AWhmwdYHuWwa09O0qwy+XuPPL9GlF0h3o/MdrQb+qe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761035394; c=relaxed/simple;
	bh=Z/I5Uveif3eTh1c7zeLCb/igITv0scLYLVFR2BGbAn0=;
	h=To:Subject:From:Message-Id:Date; b=e2Q2s4RICuOexIvOO0UE7kFY4VIHHSjQM1Sr8mzIFq4s7fdYfUSn26JL0ezQDA7SLxUUZrPBnxvPjC+mfVB0y4B/2LeUTLsTNEiXO1Pi5b0seY4AjjQQuKmb76u9nYH9zk45Fuw8EftSOKZizlRpKBdRFpbogkHKBFI+DF9fac0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pblfQzC4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pblfQzC4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC5F2C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761035393;
	bh=Z/I5Uveif3eTh1c7zeLCb/igITv0scLYLVFR2BGbAn0=;
	h=To:Subject:From:Date:From;
	b=pblfQzC4BW5nKcp9k32EwbrjGPuZ1VA2NVkgwOO0vCa3KDMexBv9vF86u9QPMYsQ6
	 QXaMuVXSrkqv4G8eZdyeFf38k5NrRcKqwNUyqsoBmCS2CUKn4S4xPHdmzjjskBu+hP
	 /bG4SBt5D0GJcEv/qjVhkPCC+3ZrVO3S+0AiSwCJucDPD257udmGDfyBb4klWCEBrp
	 WEXv6FmY4ClVylkm8IJIneBJmjoJtkae0FzOMUtk26WQkHMr4pw5Q9vR2kJkRlpe2t
	 VtO5MO2HEItjGZBcIVdkjLREbyD/SQAOQ/zHgEVl2ry2vhAGRGi5VoB1df7yL4rekk
	 XAP+sO9etZD5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E8DCCD184
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176103539358.3578.3940106818336203805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04554d7ab2962b2af61c544a1d75c9bccb0dd90d45b5ef1deb04f74a79f90950
Date: Tue, 21 Oct 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761035393
