Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB5538A720
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 19:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781553394; cv=none; b=M0WU2OgrlwQ98dustj+4pjtWP60WT+z80FQ8qByDALnpj9koMou3w4ImYl38XdsmxYlyEwolpj1rP+MCbG1srhCw6iSVBcskWMMIbFI/HcjSQYcLmEgGhPrQCE618ATUOut89eDeCbpyj+eMkKkfhqCH065Zfrl8Bt8GlPSa8xg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781553394; c=relaxed/simple;
	bh=+0vFoZ0ja/aFPkZb7C9mp2uGmXCOmf9ISIk46apTOoM=;
	h=To:Subject:From:Message-Id:Date; b=rLW86hj2xnJqEuImg/JttTeWpjcXrZesbz/7oU5tFG+ZWxChIvDGC91nyyrLmfD9q54m1lO5ECOhZntOYj7sEiSkLrAo7UPyZFk792/bkglBAJyaY7RNUnCHPbO+t+GX2wuafi095F4CjNFDuhrDaozzoWR7CKxtRJx5SChSaW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xsu87YTS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xsu87YTS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0047C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 19:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781553393;
	bh=+0vFoZ0ja/aFPkZb7C9mp2uGmXCOmf9ISIk46apTOoM=;
	h=To:Subject:From:Date:From;
	b=Xsu87YTSmCaeUHUFqHmwMgECpFhTYENrOphmYWAkbTlH7R6FKR+TcRBRhUYPJiwJE
	 BXL7LTT/nHMPSYJon1nxQYmLmQjyxyEFXqFMVdMkYdv3+VmdpPf/j3YTsqzmgxcXI9
	 2ZOg3AX7bSNoWMSrbw25qlTWYTWERM0S0O+qI1wyP0urgt8+7KAN45qXN9S5hjgHWD
	 X2R3uhwY1Xwm6O+sO1vfwkAW/Hk3CZeMRINZlqo26mJFgkm0sSIFSRvqUA6/q1U/WZ
	 bcSKD9AsFbkOItQS21L3OryqvRgtFq1C6Rrh7L6txtoWiOuLScNPeD0S3Z9lIyRM/Z
	 G+6w/38gMnGSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C47CD98DA
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 19:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178155339371.27000.9212116964298511268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2050127b7358a9f2b3479d060c9e01dbe7d650e75c011e71250846192212f57
Date: Mon, 15 Jun 2026 19:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781553393
