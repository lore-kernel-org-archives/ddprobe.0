Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F0D41E3798
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728063354; cv=none; b=i+ttyUTgndwY4sp5yKIPIuR9JUqAcT7OKnOqQKHmVnEfE0T4yzkflJVGGfvQg1kdmUPt3Fg/3OR9z/m7pTZ2TRi4YrUdsmFtv6GqnfAx05QWF1lNxTPguBEITiapmLJ9Ng1g0dAk3RnO/dH79ushgQnKPWVPp4cnQaLmzRUlzQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728063354; c=relaxed/simple;
	bh=m4+PLi7Da61RAJO7v1CPmLJs0r/178r9+2RdrEPpkI4=;
	h=To:Subject:From:Message-Id:Date; b=WcGEX3ialGsGVIwMK8b8ep4Bj4tvPZyFNWTZLWP52b8EFsAI6QjTVobWkGqw7/q0dJROzJEzf8z/EsEmMMXgrgGDqnKX9AvnxcgINbAthsVyRGWnx1IdqRNrBqYnj6/RPee7OryK1CTALvvd5FZwzkLpQ9ZD83xjkJMRWDEsxeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k//m8xlB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k//m8xlB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B419DC4CECC
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728063353;
	bh=m4+PLi7Da61RAJO7v1CPmLJs0r/178r9+2RdrEPpkI4=;
	h=To:Subject:From:Date:From;
	b=k//m8xlBwHZlknu4hh5k9nkCqs3NCVWfEuYp19puam/JdmpK3MhFkGZFZs5r6aVAA
	 Tt6q2jUN2Y8NvN1M+Q4LRWMCZ1hcvasL6Jr5YSTPAmgXlrnVtTqYK+4jxA/zNUV4js
	 0seGBFLYNJ1q2WYTcxKxmouYNRG4YK5ZAkx93RFZ4yDj9VOHAIVAeZDUCNB6hcjopH
	 gKjYpSHbLCnixnSPvyjdoCa59bCWHLKL2+92oyWv6EyttCAqZQXgj2iecGnyH/FZc2
	 FchLax6dC0z0EZOXbCnsKThcEnlpLOK/pbHBQR75TbKozSEkPZJE3uUK+UAvbLdVxv
	 2/FM1m+xnJWsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EA48CF8855
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172806335363.6023.3978772946839373719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27fa532802af7c920f01f9574cd59ba424e1da760409f5c417314d8ef6fd861a
Date: Fri, 04 Oct 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728063353
