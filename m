Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C73A1D47B3
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730934354; cv=none; b=fd1fxtKghHc4wBY6V9YT4ASjBQ4iaH8my7k8vygmAN86ZmpEdF0JQH/vZBbTIS0c1qlvEqCT9Lmt04wFTfhe27iatNTPRg1ICbgNdo1JTOGyVa9O/pMkfpXXGqbsdI/bUTfhTnbSDEkHUyIJt9z0XtXiJFE/lNfKlFmthJT8I/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730934354; c=relaxed/simple;
	bh=ty70Zb2UETEcGcxThjlzSveMoUJsPaWc7nBc9RLRfos=;
	h=To:Subject:From:Message-Id:Date; b=sbR24FCNQkByJAWvdq4sONu/ixsW72xBsYKiHSNY41Gbev33yNL5DqpXcyL4NU/GD3h9+Lf8lEOeKBAFaTZM+nmu/09ibEIpgmmh++c1kc7jinOuC2zh8KDcRJNHXV2Bz+QUd3/E8yTUvjAG3ZUS3iJPXHeRaZwvW1e2/F59dA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IeBflVXJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IeBflVXJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8756C4CEC6
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730934353;
	bh=ty70Zb2UETEcGcxThjlzSveMoUJsPaWc7nBc9RLRfos=;
	h=To:Subject:From:Date:From;
	b=IeBflVXJKIHI3fhHW5xbYl19lfeo4YFPeEuHuIvs6sD69xlfy8hxnP3UVO4bqMcfr
	 hJLEUytInHj0Ti/i5WSPkpYZndiXZYUC+QzFCroUaXJXgZQF77KJ2xlVVsCpNBMCZ3
	 DzIgVGLBLkGnHu3PdPBT39BUmI0iZzUMC1wqCWXanZ911tHiunrfpKyMgg7MT8HIK6
	 DD1tPnx7u6qVjZyIGYCV4ViqSd7eks0TiZoa4YPM6ciMbOOoZfiMMOXgznf4J/Emms
	 OTkiCTlGhyqoc4G/ra1MjImF/wpCcL1m6uEwZD6aUli6db0qBpfuz+PeI6ael8IiuI
	 ifBRwkc9XWuSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E33DD59F7F
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173093435364.16306.16417603757692290004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f1fcc1f42439c232e24a51c262bb8624c52efc54805ffe77188b7fd069ad4c1
Date: Wed, 06 Nov 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730934353
