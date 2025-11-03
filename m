Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19FF22AE89
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762132194; cv=none; b=sG7X3MrUMx0ANvq0a0gY5WaEzZ182fVkfmgyFHX2CXlXUnLwDWiKWVyPuVSdPGy27BPOW+n7jUw86RC9Mpg08b/eRDWio4mB9pxvfXKPaPeq9XXLDYo2ZwpJtBvkFsNjZCfAsB3EvHTU5IA1ftz969Oee+WsIKh+XSMuRdB+AcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762132194; c=relaxed/simple;
	bh=yBw1Wfd6LnwdQtyzUCsdsyY/XJ9MuXpG20CiBSXxzXU=;
	h=To:Subject:From:Message-Id:Date; b=Ihyx/k+FghsgYlJJDZEj22RWUokKzMAjbET+y8R6VUcs3ALze+U/YQc7DhtzSzcoSjGxhUmuGdSPNlPkgZPxa7dtWaK0dF6jy7qU0Gv1Bw0Kt/XK/r0gn9eHVrW/N2RNLYojGOvcaqLcK2SGmuS71eUspguSfMblgYP11fD1MDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DojaHUH5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DojaHUH5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA267C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762132193;
	bh=yBw1Wfd6LnwdQtyzUCsdsyY/XJ9MuXpG20CiBSXxzXU=;
	h=To:Subject:From:Date:From;
	b=DojaHUH5qGaXPET9FpN2xx+52wh6UBbWPQ36TAK6WXoNOHtdRrUaNuR3Wnb5mVNEB
	 Ml86lAOcaojlXlX+uCFuClzkDjmvztL9eWGv484h0TC/1win5h8X4EHgos8+4xePIQ
	 5qQhyRDD7oO038v7QUhBx8a6wrvuRXEhJYe3+SHbyOmu32KixGrw0rnrJ7FAl7sFMi
	 BZimiXbcG/CibD1odclK0CT2XHvxZ7IzLpr58u1MJkUc2coc09S0jpdUkLP9t+UGF8
	 LbpCUvopdh/Ra3wgTj/MsmeJ6iVnyMrr42iyb3UDtUeImu1aaCj+Ld/1KHuCt5kCFM
	 JfQ+G1Wi5pcDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98CB8CCFA00
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176213219359.16466.4936131512688982661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 620d983660d13bc47619d81cef63ffe751b59051afe2e63876e8c4d0d2da226c
Date: Mon, 03 Nov 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762132193
