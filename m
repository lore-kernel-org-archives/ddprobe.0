Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43D22214813
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 15:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777909654; cv=none; b=c7L/BttzjsbDawDbZomsQymoFoAVQD5wdSdu2/ZNIZPUzpX+9uPXkHtfIpMXab37xkaSUtErGsT069ABT1XOGzeAsAHJx9hTl3OnT7NCVe5H3ktOFFSxFYnIfN66OsajYaGvUne88vK9dn0Kp31RFLiL/De9xqpfQa+EyyZf/Xo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777909654; c=relaxed/simple;
	bh=YwcneUNTGnXHVCyc2sV9YG6AQbJmlRuHG99YJWOxdX0=;
	h=To:Subject:From:Message-Id:Date; b=roMOo1iSE0Dybo624ZYYHClrYQhG66uzKZ+PzyU7z+VIXUd1RGUOTAmT7iULA84cISp0EuPLafJCr+U6b8bRnjqh5ErYXOCqN2NFdQa45iwDjTfuKPMEE4VMY6asUzEirQC6Hm9y3pfjhPHgOrGy4mmyzJs1LzcjwKLl8/sc7gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dyihw1iQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dyihw1iQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C02E6C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 15:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777909653;
	bh=YwcneUNTGnXHVCyc2sV9YG6AQbJmlRuHG99YJWOxdX0=;
	h=To:Subject:From:Date:From;
	b=dyihw1iQSdC7qryL2PV2u4+XNnEn+9CgcZDMdEGJn/k7iy3CAaxMvlx226Hh63LNf
	 RPcwq1sZ+dltToBJMZvu3sVzMtO8EiW+YY5SFIw2rCLgvUBXBcxSzRqfleOBLb10wu
	 zXHtj7JYGxtCYuWddTTYt14CXpI0kqRoPASdjQWUlFGjTh8OemxNF1JZdpK+Tz3RQC
	 TWOO8nRb3yD7M8pgQvNLt/ILNjF460maDiQFLdC58WHH0h95We51OxkbgTmsA9bWkc
	 o13A+VxhIh3ke3HfyHxrDqkbyCN7Yctxjw3PUzoIgunFJrEmAf5i29hzDKH5vHaqIf
	 BpbQDyv7ODfTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4C9CD3427
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 15:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177790965369.12839.9998545740732327077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af16442cb9b0e66048803a7a17b1e9980c89ced145e0c0ab134a98818d5daba4
Date: Mon, 04 May 2026 15:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777909653
