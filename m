Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 276CB1A5B8B
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753712394; cv=none; b=Q2WpwGZtlHvp6yatxqqQXuhaJWE6fYEkTycdKgeQtEQjMBsl3et8ghEJPfYSjjqiZVwIjQhpAFgSaBEmPscj7dRaKL0bL68PASioGOoLbuDwh9deDyDpuWncEDwiPcA6xdgPHkwOtAuDJn22UPao/FnBrh2jXJcAbPThv/NylMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753712394; c=relaxed/simple;
	bh=PO+uKciI9wHKPReNcQHKALbtXrPe2zYpVeyzsnN+I2Q=;
	h=To:Subject:From:Message-Id:Date; b=qvm5MXFO8zpun9Di/hV45bPrGJ7kKI0XWiGSVBpnV8mvbvCAlmOCPs+QgF3vFlnLlJZYDbynhpborOgCr88bQSb8uiHRsO2YxiQiVIJ/yjbv5m2nAsmpRvwSBCaUdeL4vE6W82pMtGnDJa9IfdYPuRkkkzw2XyvJSlV5h8n9raM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jaX5Fuy3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jaX5Fuy3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC70C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753712393;
	bh=PO+uKciI9wHKPReNcQHKALbtXrPe2zYpVeyzsnN+I2Q=;
	h=To:Subject:From:Date:From;
	b=jaX5Fuy3u5nHuPdGZkrVkeRO2GMWFBvSSOJE1ZIeppNKmU54YxN0Bj295XCzCBK2i
	 tprOeCcdBe4x/CvyY4ktid/Z09B5xjZps6h6Eh4lKjepDlZVSMUF5nu9N/rIVYjz/k
	 3yoMWk4D5CjQmgZiNJIUafsyLMRxVBxsS6JpWS+5zKjI7V1Hdi8gcEGpWjgRNQ78eQ
	 r1DOdpI/1erYXy59dmo2QkH3DGYPw8YWe2OfVDn7Pv0RkilaRKOSUL3I8JE77clBpZ
	 gXrshUYBF40CQla2iT4RnBPpx2e+FTMTAwW2UaA02sPnakJMxiZr/Hr3rj4ufHX2kf
	 B1E3WyFYw+3gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B82C87FC9
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175371239357.27802.9041407537532306756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 182801b58febf4306f55ddd5922c8b368789b6a3885d9e27d6d96a2b8e7ed6e3
Date: Mon, 28 Jul 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753712393
