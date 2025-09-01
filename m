Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29259267729
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756771194; cv=none; b=aj8nla13fYsRP1ZbcJ9Z3ZiBuxOY6VsQ9c05kJparMjGRcQB5wex7Y/B1tnxAvRyFMHXORWB2Vm1VyUogwYD6iU3IptKn5qX/+vFiIBDqWNnqhwt81haI2NRe8b4D2ge/5pd6mxrYY5jkHKEkzPRDi2+bSwAIHdQLICPbRYqo90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756771194; c=relaxed/simple;
	bh=bAUjR7CaujKVdgfTIxF1BL2s+2ZO5peUnJVuWQfbUQc=;
	h=To:Subject:From:Message-Id:Date; b=Q/0wslhXTyYniqfwZdeiMUysbDeL3cHRcCdaecS/AN8/jCPRtpzfXfqYdDXbqRCu7LI9ZztbrmUb8YpTUZk/jkga6+Qfcm1uc+rfZfDbtKmHOd2SHfhKT/0Bj78zmnTEKz9XUtP3ecvSJUA4cGACCc6kfpF3vxQhWnSVRgJDifM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cacHB+pV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cacHB+pV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA81BC4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756771193;
	bh=bAUjR7CaujKVdgfTIxF1BL2s+2ZO5peUnJVuWQfbUQc=;
	h=To:Subject:From:Date:From;
	b=cacHB+pVEtCsg0WHyQpHckDMpzA6ZySAUGswz3TyRV8CxBU1zINi7GEBxAmIG4jCS
	 JtABcVAtyMqCVif+fsuFA9swuW/LZeVHkxqZQkf9JlpjDpq6R320gsF9QlCk/wiyi9
	 gS0FfZ+3kfDhynXGDcR5e5EnAintIIf88H4/Vcv2CepqAs1V6EAmpxI8QN6cB2i81j
	 v+q46qRqTQ2mlRuSkZZ2sQpv9LNI+vwi0sm2Bw9fle9n00F4SaCTkAEqjHZwlCusZp
	 dbMslg+f8v0xUMrF5WaR5dOYOEIzv2kdqanMfb69F0ATF26rzIbwnq+KuqQsKaSnMY
	 BKg8vGsi31jig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955BECA1007
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175677119357.28400.9130175350239490764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f09425eab25ea97390a22a9faa6c6758b142acafbbc92d95b51c514ef446fdab
Date: Mon, 01 Sep 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756771193
