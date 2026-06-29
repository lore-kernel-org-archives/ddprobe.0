Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 541B01E47CC
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 02:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782699514; cv=none; b=a390ynvtusnBG2TIggjaVCHjkOZwZFl5pdbsKy9GOwtjUqBZ9M8B6g/PL9gkUPOXX54f68l/Js0BqUGWJPxVbd8JQP6nTujPtBSMMnlYtAIsW/tPfbC/bE/uO2MZJUgB9eUckZCAb/We3qGn+KiBA+UKFbIQjwiDb3qIswgnQgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782699514; c=relaxed/simple;
	bh=XV+lefYgiJ+segzBbHLpftNXKJdcE86rihNvbzESrNE=;
	h=To:Subject:From:Message-Id:Date; b=pv7C+Ml7AGrgfqDSG/6nfVH4s4vUxU1P90D6LMADK8YtfxYTASNBNxriN73fxYyoOKC8IlLb0F/kzwFHeGiwQKTdtc9zxvvJM/Lrh5rDv1x91qK1GtGoK9A4z0HOPETTXhgicosuTehnGjcsV0YjdEERVpJCvSucu80dnSY/HQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dW/3+Mxp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dW/3+Mxp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D72A0C2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 02:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782699513;
	bh=XV+lefYgiJ+segzBbHLpftNXKJdcE86rihNvbzESrNE=;
	h=To:Subject:From:Date:From;
	b=dW/3+MxpN9ioiJWvd6TykoRuSY2CJS7npaJctaP59xgsa1Vvywh7z9NCaex9NegHd
	 +4xkdfUdxdif7aRgIGFkVk2es++051KTYl0CrLTkCw0Ya0urqm78FRD3O4Rr2F9om9
	 uaZahAepUlRNE41hLpLxFlSfzRwc6h5X+nuLFBHzz7+W2tceJWfK3C6brP9Lf3Ixhu
	 fHsv+Ywfo10LAFKZnaHjcRHDF2JwAOjBJuKf8XR1wcRg9FW+KQLkW33ujRjk9+4NnW
	 p74eH07dh2MNDDFmrM1p7KVEHxAlmR/veUEsrqRT7FXrHxwzNsnduIzkwXslJZVMaI
	 QHlfRgtIFl4mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B82F9C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 02:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178269951373.26701.16466891767697284545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ea8497b8e9bae6295e66acb9cbd566ab30e8e97c62fe3e9a6e0c475302c2c94
Date: Mon, 29 Jun 2026 02:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782699513
