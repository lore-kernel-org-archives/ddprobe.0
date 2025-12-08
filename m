Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1810448CFC
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 23:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765237974; cv=none; b=cUAlpRmrC8VDKQuS6wX0kDFk/IeBJjJNwmyXVWe+6P1tGYZ7eogCcz+AAsqReX6NnqgnoH1CXLWrGGoI3QwSQW3FtwHoG+E3Nesg70u65CvkpVqIDXP6Uf/TIEB0WWK/YcRXs4cVKwFXrMkBmMZgpWM5UVs2Crig7LZmua8Kpp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765237974; c=relaxed/simple;
	bh=fa79DxCSCvCdSXaDRzUvnBsaLTvBQ2jPjuiVD43/Oog=;
	h=To:Subject:From:Message-Id:Date; b=EQsXfqtGhC8AYOa7X3hIPdbxJImn5tUFMHlJoj13x5x8zKL9MY1SsRtFRClwXwKnSdnc+jX6qIozRJHx01JweBgQ6RY1wTDDF3GgWZdZu8GBJiENVnMghvBo5LBSjCo/JpKEr3pH1MD/YaBR7p7YUWzFYnYcXmxrZpv2IWkDE9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=by4ke6Zx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="by4ke6Zx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F53C19421
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 23:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765237973;
	bh=fa79DxCSCvCdSXaDRzUvnBsaLTvBQ2jPjuiVD43/Oog=;
	h=To:Subject:From:Date:From;
	b=by4ke6ZxMz27EKrHSLj97EZ1ABcl1/vohfO3eGpRxUMAcOY55S4sfHSNqW/18n3p8
	 Y7areNLqugj3wb3ZVcZAseIo/kEayJgvWBVaQWbrnIualowkSHId7eBSBMvxmrG2Bg
	 oqVHi0PzYe7+pRDxoSIcsadCBd8z+Sxql40WDvfZCSRCDcBnszt6jZInZBfMQivbCG
	 ck4sGz6fqSEbwIhQ3Ku9wtikLMEsspc02X+P8+erU1D4FqvPUI8IhOOUm/uF7/OtlE
	 DXpJ0hRE0O5wQYU3jr2NC3DUfP+CkJSLXSFih9MI+SWhnX/Q5kwXf8e65RDn5gneIF
	 JckxmEfqvz+fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EB1D3B7E2
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 23:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176523797359.25477.5432103287732866056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 410cb3963bc5f3a3b19a02d24764d2a676d0b11dd143fa4854a510dcbfb1ba22
Date: Mon, 08 Dec 2025 23:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765237973
