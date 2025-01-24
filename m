Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71B4814B956
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737722154; cv=none; b=cEUOAImzHz2t+Uhps7Vc6sVFobL872wqJzs2i/lbIBkCWPL9LT46ekb9Pc/Z2r3thVn4OPsMbaXopt0infMPb2y//GkiMeVyQa6E55EkK9bCMH4sYDNce9FokV0DhAEOyliKhTC1BwZ9zpPVUdGF6Ylb0Ir/0UEoCUAjNq7XzSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737722154; c=relaxed/simple;
	bh=H4oWGP/lIFtZBVA0KYlCokfXNIayxOdX34V2W3vE2Zc=;
	h=To:Subject:From:Message-Id:Date; b=GAXStShuMOngK5fIit56YFPdHrefm0VdVDDvICmVMCK79/Bb5Wv2LRK34tg7ocvFL26X6N7JMqGvuE9tm18ISEitemgr//EXXyu/ebfihnUXXwjW/NI2XloI19OeqwA5GexsCF5JyqB/ANFu5QtFCa1fOCNa/vihc9vR/BJr61w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P8kw0tU+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P8kw0tU+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C76DFC4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737722153;
	bh=H4oWGP/lIFtZBVA0KYlCokfXNIayxOdX34V2W3vE2Zc=;
	h=To:Subject:From:Date:From;
	b=P8kw0tU+JAXlK0qfg8fM/2oYXBB1tUOyK4iz/WnQYJg4RSOkrlnr5bNbLRJwI17zz
	 Ov1u4U5NaWEWXXcZOwmqBbB5VB5M/scWQDSnba1hXMyGONZ4kQc2K7e3iXxfkrUjT+
	 hU22qLZj4yxgLLFFsifUCl6KMOhrcuEZNHZmSPVJSR0diUyj91zLZfcIGbdIvwLVxr
	 VhYkXIO1437Tsy5XUKW2NxVvKrhCwRLJmmPvpYZ/mtJNfR37OJje2O70XGr06c3Btx
	 mEQfFxtyA/TSEZhxrXwdmhX5gwZCpxaQIgvQ8SYFdKr57V+xB65cpAsq2ZTizU5PqD
	 R689Cj7hMeq7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E7D6C02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173772215363.2591.7894823827033104736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63ff4b5d8fe4ae0a1460aba48c050f36286effe0c7add3721c87503f5b840674
Date: Fri, 24 Jan 2025 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737722153
