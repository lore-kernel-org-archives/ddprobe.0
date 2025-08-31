Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250C748CFC
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756610394; cv=none; b=HNEjMrARlwfPJkLl+iRh0COD3Vn3oY5faKvN0b4wlLRVvL8zAQMYx0VJ3KF9M2wg2tCtUHt9Cvv+wG9ki2dk0ezrJjGl8mY/AfktDKRIWhQRilhiOmKKZYQilhMglWlosYRJYuBnpsCfNvUqmHeBJOq1pLboo09nJCjhy8+0L8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756610394; c=relaxed/simple;
	bh=cWfYV3hS8zLzGsW52p9H9L+1UeLx+BPb2EV916+iXNY=;
	h=To:Subject:From:Message-Id:Date; b=SmKAY81GR075eNJAuiTp00QukWOXLPOdgk+fWir9ABw79kGFbqsm9m6Mxb7OoYAokTXC3XozAKVmAW75nWfl+TebgUpmEvSp6IE/qMYAvlcRWL8npGZiMtl/ju+i0QlApf2CO3LqLJuQWluZXM+qH/Qc+4c2NdaY1LjCLDsOI2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fgbTCZkH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fgbTCZkH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7436C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756610393;
	bh=cWfYV3hS8zLzGsW52p9H9L+1UeLx+BPb2EV916+iXNY=;
	h=To:Subject:From:Date:From;
	b=fgbTCZkHJZ4J5ex7/JxYKQPBzdA/4h4HEgfAnatZVEvzo67DodRb6Wr60BFQ0k9pc
	 OdGFbO0XpjDX6qfjbB5pznaXgoyJGnwsVkkxLlr9kR7Vi7Y3HTZNB/6TFrpUNwkOUp
	 5mkKvv0pzalZSGYczTjMESqy4W6R19VQ8Z1k8LlZNYccc+2UGFPEwbha2eMffIv927
	 OXoL+GELc3/9JeZFruC1+CsX2kqi8HB9eLiz9mTrTwEjHyALsQyv1VVoUW3hY26fjW
	 QmYyaeGfkbvTbb7iBXjgSyeJvQAioMWi9avlm2ZOIKfy3CY4hkjUQnYxjkISOHTzlg
	 xiCzDMxB0Nalg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9489ACA0FFE
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175661039358.18819.12989422626504460092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ca0a282eec615359e19aa6cd93f14c1a3fa5dad47d493c4f4fc452f4d3f5b36
Date: Sun, 31 Aug 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756610393
