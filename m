Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D3CA392C36
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 20:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783541914; cv=none; b=omwKlOQMGlTvuLBYO0Z3W+H0slGZqURdsQXBu6sOr7qUTf5uJWNOkXKgXCGMDMoNWds8Hwo2at9zXAOlObgVnQ+Sp/BwpL2XEsM+4FUqhTcs4YfEnNBvl3MvBt538UMNwC7ynLOwzUqpy7qJV4DzaUsc3tDgeR9V9afG3fLmf7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783541914; c=relaxed/simple;
	bh=z1DLoJntmo7p0eK3R3KDf8FCOpDxZR7Hx+OiekN2L3s=;
	h=To:Subject:From:Message-Id:Date; b=Pf+H8HHb7oDKB6OJG+AH+6bIPaV1X76ZWaKfgs9XnfHmRqcGDXep+AckSiHQ6OEG5BD7teDGi7A5aRK1VbtVq06uzEX5163WNV9DeeqeQvSl1VubS/xYcEJOiBuNHjzT4DA6EyOYx7wtjAILeWy++zEgHxB9Te7dPcNRqCG6ork=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vk8snlal; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vk8snlal"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D22A6C2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 20:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783541913;
	bh=z1DLoJntmo7p0eK3R3KDf8FCOpDxZR7Hx+OiekN2L3s=;
	h=To:Subject:From:Date:From;
	b=Vk8snlaloVC9Ai3qAB0wSvn32RlBmAYFueujNw+JVEF8bPq1Z6syybogSLdrLhDfI
	 tLo9xO3mgvEoMgUI8klFKXxh+SziQsEykaGIA7Un4FA5VLa/csBrKnKnlt+/Hr2IoY
	 bpE5XaPLs7RPIDVNwIDggOZ+I9VEpS8aqM8Z+Ccaoc9Pkchmv3NahDQlFrQEhvFgvu
	 INAbDR3rUw7sKpG/mNAa87ZwzOs/TOq28z6lu3rQQB7LPVloLqufvkcpkh3DbJdkgG
	 AZGx57X4NjSrqhlWP0QhjxpRUjFsiEVC0dAY76y7I+eXtEngkZ8pK0LchGPW0Xb8gw
	 UofNlMD9MB9Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC17C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 20:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178354191369.31242.1806171634456063474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93b4c3ac2dea4b6d09317ac47ca32fd471865c991d1662bcac78fd9474ba60f8
Date: Wed, 08 Jul 2026 20:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783541913
