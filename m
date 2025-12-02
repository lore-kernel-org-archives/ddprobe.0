Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2126E3019B4
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 08:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764663774; cv=none; b=Z+44I2CeQRIlGzE04ksc1yyEU5K1xKBhW7fD4VzKcsBJMSRiRzHBBHQd5zSTjkomc8HYkoCdn0s4xyVZWf4xF7UcNkYoo6e0O1/CrayOCg1y3ASXJeGgCCbAZzT0QNl73UQ/DEWIkKbxcRxlXQ+xadr3wHu/sJdGihMY/dlAIRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764663774; c=relaxed/simple;
	bh=7YeiVLTcDxCoJLqtUwmuRT/O8m0Czm4lSzoL26/ulRc=;
	h=To:Subject:From:Message-Id:Date; b=Sb10G+PjVqu8ub+1YSpWy2KVzm7buL4aXCalXebEtBN0uKXoaGW5rioatslFWxwJX5pn8dg/qlkaSkPUKPPBoEB+wnvvjeO9iRD0KYWoXpouvTpxlHnnqkN8/QEbhzXUJJNnPiF4h6pCy4HS5ukUKROO6vl9eY+g8cARl84h1hs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=syWRLoKc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="syWRLoKc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39ECC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 08:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764663773;
	bh=7YeiVLTcDxCoJLqtUwmuRT/O8m0Czm4lSzoL26/ulRc=;
	h=To:Subject:From:Date:From;
	b=syWRLoKcBAoFvugupzvaba59O74MOazj77XTzp4R0YjAHqNvXEh+HsYVdtjTojs2j
	 TFeEX8X30MGVkPF0ySN0KItsAH0k0fGTiJhRchO3W/VlcY5Cw2BVi2wO5azhY09ArT
	 lRMOxwgrr9t860GlNDUsC0SP9czEU2izTQQMAFMM3ntuii6R2XZezUKcNQi5mt7/xx
	 PGcuXT9S9YWu3AMd+AfXdX2hFZuK5yoS5QIUTN/3w18cKK+Fihnib0deXH40YwYDKd
	 wjmiKhgZ+GIPgUJFDmTZoqYhVxgZPJfh76cVxW+dm1UI+r9pTmTxz3gicE3jieQI2e
	 1c2nPYUcOHIQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9390FCFD376
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 08:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176466377359.7565.4336511723851982513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f27c25881f299aedaa2a3a2917cf068297b59194474387713556a15091dca89a
Date: Tue, 02 Dec 2025 08:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764663773
