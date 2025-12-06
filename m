Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 446142F9DAB
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 13:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765026174; cv=none; b=uLT1pzhG3HuNMjddwVmwpyPPeZUKMABoNPkOGClZbYnD6Qk3ljkJUK4d/opz6sEa1+G0oAbT4L5hR0Ugihf6xOmo2K5b5XsEeS5nuiH3tVIOYp3kvbtp5o6Wb9HZXJd5JZfuCSEXqaaZyHHUkkFt/xG+QoqtNL3Zti0htXfHtMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765026174; c=relaxed/simple;
	bh=o/TInyGlUxaMEZ8PUo1aWNLL199nP7CCDMLUqKouKqM=;
	h=To:Subject:From:Message-Id:Date; b=gf0/hm69nPnNHCD/4bKgS60OdsEv2X4EjGMKgPAcDPxpH2+QUDeaYWXiAn8DbtDeWxy1mfWlNMPysiwuhzEX+5cN9/MA+zODkUKgVb/oS8FypgPTm1UIz9AKmrZsQ0HgXnxC9ONm32YtyIGrakjanvDum+EuleDdrWi3fsIvR8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XlMwVULQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XlMwVULQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58D7C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 13:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765026173;
	bh=o/TInyGlUxaMEZ8PUo1aWNLL199nP7CCDMLUqKouKqM=;
	h=To:Subject:From:Date:From;
	b=XlMwVULQ2kIwT2WERI/w2DZZZMLEmqEBr9dA6EB536ZC21/yJr/DS3ztF9Fqdv07Z
	 hk5wbN/dmFFtgKnZ3ph6jcHZkWJdgjecRQBoLng7LpKiVHYSPVwROFKXFnPiVf3kOA
	 hKPvfd7RmoSsJc8SV5yDD3/XnNDDoMr6HzdRZrpolcFMBY4TUZh3DksYRKVTC9Haeq
	 MXqMJy0SI8hx8+R/+W+mpdFAcFnkRwM1B/bOgQE1E8IyvHBuxAcO4pyE30E+jDHigY
	 OSGASK1QyLc8G2NHOM341qS+v6PrAOYfQfe66q3Y2OXLGl1ynVaW6BxPy69EBvZa5n
	 26IzJJ9xtTfwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BA5D3B7D3
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 13:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176502617358.26136.10807191744219659036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df581bf3d4285c957110755efc266936eafdcb86a33dd97e740408a0de47a008
Date: Sat, 06 Dec 2025 13:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765026173
