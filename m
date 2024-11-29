Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281AD1386DA
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732845354; cv=none; b=FjT6LhpEBfxDwzRRBnrjX4MxfNBR9jTY5VI9dMzA6nPJ8HU3E5gTDJXbHqAiO3jAxUDWibMrNTzjq0ox1Rhxwh/SmMuZNEakSuhX48hk4TBSrbyAGURLkRl2lkmJb8CE0+sz2JFvOb8E1I7WcR/fn9JY9OlANeiVoNV9+UOtFB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732845354; c=relaxed/simple;
	bh=cddI71Vb3V2j0F1pBM/qNd+lDFP7VV338TQNfE0RUVc=;
	h=To:Subject:From:Message-Id:Date; b=R8gf6PIVkZ/aKcOuU0V7XD7ZF9aq1cwnp/169XfqYC2PbHTwA8V2edr+pH0cigBMgOQLAfEbontGyUq0yENvf14aU4bhHoao8HRRUx4ql16DHsCQ7+tclS829YkMqTWoPUtDe1B3eOB6PKSJvhnjmGgD+yGJUqZxoKPF9ErIoIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PmaNLOWy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PmaNLOWy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B114AC4CECE
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732845353;
	bh=cddI71Vb3V2j0F1pBM/qNd+lDFP7VV338TQNfE0RUVc=;
	h=To:Subject:From:Date:From;
	b=PmaNLOWy+hOjou0nrPL+4nzEZVbzovy3uyMEIH4EKNOJ9w6gqXobvsD1qkkGRh51s
	 RPD+2M6l7QDUv0EP04R74CRY6hyU16lQ8OX2b/MhI5BwrN8Ho+OTUGm/1+7t2k9dHP
	 reBwoMDyRdexpsYkOahrCC+U7cZji5usi7uFZdIGPh5YxTQBwPnQs39653d1KI9aGY
	 9B18gOIjTzGalOdqSw5pmNAY8ATK1+cBvLTvYUL73Ul+aeaC7gxaWK2QxJrOCBngGA
	 o64x15ZNJMnNbo2qE5k3Kj88z4iK/kAvZjcFKLgJ2u+osgcuepL+h1fmIXj+cIG6Ld
	 CuUwgpNs33eiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F3D3D70E02
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173284535360.10285.9187106427970383944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8522e1604ac0e7e2ba490c9b54a200015609dd6d6686dc35770585998b5d367
Date: Fri, 29 Nov 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732845353
