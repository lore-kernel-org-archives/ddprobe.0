Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E5141D86FF
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747695594; cv=none; b=bT/Q+bm2XJWUEOnYl6nk/ukuvf0ddzM9/pLfaHDC05WPriX8dS+eCH0vJGMwRjlyprab+42VOpSZpoFQ4RK7AbKm8JMYWbN2h8XWrZje2nEu/ltpNj5yUoTzYyHeoQiyhP4oAV428KpdnUz6otROLsdS5NP5XDoUyLlJGYQRagw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747695594; c=relaxed/simple;
	bh=WG0/Y1bovjk47MIvSHsMmTwKDe90jDRXw8A4lamRLiU=;
	h=To:Subject:From:Message-Id:Date; b=SF1XY7WIQJSx0XlixR7A9KPNegkQwUkGMkW1M8okHD7xx6zr4iFHQf7E7MCmk3MaNSLrCQlxjglDNSd9fgBJaQo4IKSUThefCmfd7ikh3dP49LAEJGCbqefRts97VL9zo7WEJzxM6lNqLuAu8zlNLLfKHHGmnemxWaT8CjQpfXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NpVUnzJ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NpVUnzJ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78E8C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747695593;
	bh=WG0/Y1bovjk47MIvSHsMmTwKDe90jDRXw8A4lamRLiU=;
	h=To:Subject:From:Date:From;
	b=NpVUnzJ1pvRm5eRirFg9V+Cxdt8Y8wgxa4EuYCIR00tu39W88QHhZ5aY5Rxk+FmQ0
	 gFH5ARM0wSuPXl0mjCNx80+52WeQNZykvT1XpanVj9utcdFpO444IqmoKBdo8mcfiN
	 Zcx2AUAIqDga6R06XvRVybgK1h0xphtVqDtNkKYmdZCZW/xyBRPD/RxJrBNAwmIMPo
	 5D2g3ldmfTbaFri6T0yvUcbSeBlD5kJHCK+XAiy2Ui+FmEVuDgjHjhyiFJXNZeI723
	 JaPlBk7k7ciVrTpvbv5uCbEo1s7s45rYt0YheLZHiALR97BZj4bWjchT6beZnC1/NL
	 l1liK4PY6jqvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93956C3DA6D
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174769559357.7390.13226416230532219290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd2eae3f4ed60902fae411ac5a076a1fae155b677746a443efeedfa46803753a
Date: Mon, 19 May 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747695593
