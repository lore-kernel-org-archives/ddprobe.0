Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7457A3ABD8E
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785355834; cv=none; b=j/h7NCfXBWQgPBOai7zXxXeowycdEFlMgOE3XbMI0SLq/QW9VqF/fRlFO9yiCMXO5jL0LHxpv3kq+7uHaAZnv2jcoM7Yftcs6pah07SV5UdIm3NMK77qjm31o4wURQpdlkjTlMhcE7rQ0uLBSumlNsA93+SJCwQgANDaFfj+h84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785355834; c=relaxed/simple;
	bh=KTQ/TBCHTv9TnSlw9OEJAJ+IB2Hhmp2eh1ZqFsSNiNE=;
	h=To:Subject:From:Message-Id:Date; b=nXR3yPqJDfx5Hze687J8frQRg8xggIe764b3DpasorZJT5koiC8aYKq3/9ZR+69IIJ75HVC2BoJwPEucQnF6sFrBcFCbXEhQBbJJsy+dy31toMSewokd7IhQ5sB9BKA+75QhJ9QCXnjI+AAqR8BmR1P7kyrQFVJRJW5TWCKH3XI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NCTpvlpe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NCTpvlpe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC64DC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785355833;
	bh=KTQ/TBCHTv9TnSlw9OEJAJ+IB2Hhmp2eh1ZqFsSNiNE=;
	h=To:Subject:From:Date:From;
	b=NCTpvlpeb4QRttanmeafomJ8QfZxOSNNA60rtRlx2THP+hyEWb7Zq09DBklN/gs5y
	 TyEpPxWr5WlbJcHIvZr1wZqYlrkYbIYNe9nIjD5QcMOXUeTq82qBSAk08mbNEDIjOx
	 lrFPHmBfsfNIh1SVuhB7/Ed8Ra2OjO0Y1q693BrkX0jAyVVkcNxkXgTd4NG3zsWFGT
	 MvK2Ub2rQi15eyDCfJZYnWtJS6unofmbgXBYklyCVKKPNHBFSpmoa4euSfukrdA02T
	 ihWGydfIPzbrbfKBOY/lyrtCsvcAB+TZ7Cz8EH2HnymibAuWZmbhn9FNgUjQWTB+ui
	 hyqWHmGUjTyWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E56C53200
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178535583368.11460.12541665668354430206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 069ee27b7320e413e0be9a77cf19ec60c69570ba05a79633260a9f8dc1cfb87f
Date: Wed, 29 Jul 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785355833
