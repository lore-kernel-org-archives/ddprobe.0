Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2FB324704
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 12:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765370574; cv=none; b=sK0GNlUgh1BAe0mxbbH5s4QsGO8JbSm1/o3Sfb3V1uwg4KFWqWxyiAe2/uWKr55efOhS8ZvcpIpJ7upAZZVxsh/VH/kjRppwRB9Hv251Z2d3DfEeBBOBaidPh4fsXncJv4NGHEuVeaG9UPdhVAfigKHewTD2xGMDvpkDG9nqmLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765370574; c=relaxed/simple;
	bh=9sA6aSUfNnnmbL+VQ4eUbdMgvSAnSwSL4PpVLZCJZ6o=;
	h=To:Subject:From:Message-Id:Date; b=QkayMZSOK34YgcjhcfziYvFLAqwcFa26C83X5yq5aBwAGtTATBrxaLwcoN8WLdccxXSPfBmUHU5vh9mQQEWFpG2mZ9JyA+bbE40s2FYy60ijB82ytE9aaTU1VnOdyFELhEGC4gJi1dk7dhlZCsYPxEZt8vfAGJUMTohNDaJwwKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MfPZm8fd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MfPZm8fd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAAC2C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 12:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765370573;
	bh=9sA6aSUfNnnmbL+VQ4eUbdMgvSAnSwSL4PpVLZCJZ6o=;
	h=To:Subject:From:Date:From;
	b=MfPZm8fd26ImM41yR3lmukSfLVvjf2OPxAtaHF+8FN8h+fy31uF4jeBtEtPAPlkRf
	 q6mD18AsopWXCFbxciSUKVlK832k+Vb7IyKTxYjrD4/5QDVSqvIOKMZBFby+iKXrXy
	 D/dWOPBm9zJLNYRV48f+YewOJZ/iTo5dCA3ASplFREyf2CtPwmZenS+V/mKfuM7/Pr
	 nBxZKVmeCoMMLp/UDKhIdixJtFJRLfknRTS65atPi+AkFrspYDBVAq9tp0eNqvgPCg
	 RGYYLge+L+IYcomQGJknCEEoDorOBlgZs8cV6xT7AmdQdEVPUSO/3rW7+WEq/DnYwa
	 PeST6V3soHwVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FD4D3C53C
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 12:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176537057358.842.17471876221375474212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 955fcac4514f19160b90ffa2a4f3cc87651c48541d8d09623eaa12ab3ee0dbc7
Date: Wed, 10 Dec 2025 12:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765370573
