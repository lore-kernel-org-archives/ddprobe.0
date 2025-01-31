Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CF1F1DFF0
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738346155; cv=none; b=aLzA8uD6zF9BycgRidk8u7ktQtsVQnSoZaIMhAgE34h3ZVaDWuzlh7JgPXQnXRliNNIdqc74GbWxGop9O7HWOedbfkjx021kzcegN5IWAK7y+/tnAngWXv+CNxLGdwktCAYTWkM0+I9avcaDUiauNjIGCxLtaym4Jwt9jN3B8Ws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738346155; c=relaxed/simple;
	bh=AtAu+cPFwWgpvk/3Zorqy/K8IHR5qK1rbAUe2Y29nYc=;
	h=To:Subject:From:Message-Id:Date; b=KtE5ALqx0GEFrQqqvOTZ/aOGWLmgxXgnbZOCVXmSOGFlfJBj3sD+tSEb72YkrbbmqD313s0Upx62KdAlcGpfNHq3VRQts7yql8bnOQ+Y1ulHJ2tV0lStg2I3J5FFtF8k+PoJ1E1DazXz64t/qFPOneoq7VCZqtOzg/x6KEh0SXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FK+KZpDx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FK+KZpDx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C422DC4CEDF
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738346153;
	bh=AtAu+cPFwWgpvk/3Zorqy/K8IHR5qK1rbAUe2Y29nYc=;
	h=To:Subject:From:Date:From;
	b=FK+KZpDx/RP9/2C4e9SqyrfMF7n9MU+lGfVw03UJk/mSwkSyuRF+y73O1cq8jBsC3
	 uTaZCJcB2aRjgiampQWD97KVyBqmlICgHGODG/6y56VRE7/FiPsCXRXuBVYHd5reZh
	 meAEVpVFTNPYHG55pZvYgVhTQ8R83m9rvo5cPP7i7+y2e1AiY+x+3G2MtFl8SVbsdf
	 sMMcSIQbH/GqlzxrvdoNW/If5sqyMrKdC0o/8X3kBUvvrNDAgnzvdSaEfKxtfdXXrq
	 aZBm7W5jWjAe+jxAQDtsQSevQLHFGftymgEYfatGMZ8StCt+2Pl+heRRk/6Y3rHGRn
	 4OsYHBkEUPLbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1487C0218F
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173834615365.3361.4371706828234385296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86c845f1cb7659c403325b9767863c286ee43450508b119de27174c349d30f59
Date: Fri, 31 Jan 2025 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738346153
