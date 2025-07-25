Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 239FA2ECD33
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753462194; cv=none; b=cD7LUgFoLVvxUJ8V/kvulloMY1X022GvxvogarrJJLn5ZnSDtMVLo2DfKf+PYjwmcgdKJa4S/NVvwzQxxA5PpMiypzYqd84/bUayV3QWAdroGxieB7y1lRwJePxNsl8wKUM9B1MPA1jssoKGR2IIViI5vrlqAmGzM8QD2Vg/ukk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753462194; c=relaxed/simple;
	bh=2EP7OG1sdnGLGAitSclFRMvW9Jvvj+ORsrprRlOh3z8=;
	h=To:Subject:From:Message-Id:Date; b=Ap/1q1d0nyaxnZ3xajb2LDajTLUhRScpRl+4LMMPXi7LFPjMO0ceoLOoIwHwWDtro2C+tdlfrNrVtlI0cOlaFfLPclVImdnCGU/S6Z1mU/+gyVxPhjqHwE++bdjWU3tI+CaS7W9gIui9mWpzdhm+S9zKEWIujVsknBwGaW2xDH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gw3tEPC4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gw3tEPC4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2341C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753462193;
	bh=2EP7OG1sdnGLGAitSclFRMvW9Jvvj+ORsrprRlOh3z8=;
	h=To:Subject:From:Date:From;
	b=gw3tEPC4skf3kh/h2CeOLIdyf4+goZeJbzPtZk0DPJhoOIRW7A1K6pMPyIlBhXaBg
	 aw0yWJ+aFnj5NIwPSakS+G5EHm6hGiDxkEWh6r34XZEqbOd1ba7nT9dzEaT9LbT6Ck
	 vuKSirMXUIv4/DBr6Vt0iZUlT/bHHkqoqOeIE4nykt9jsPoMjgvlKYgTK7e8Q3hGFQ
	 05JinjjacgZ9VG8K7nLL8oUntCMLRpYYLMiU5b+QPDDihkiBZSNNLm70HTQwWZxb+a
	 nUX0zT/Ox/03l3NtuwBOwUhFEXP1a1CeZzfnZ6n94ozBpzGFzT0zjoX9bXi0CJ0gfb
	 Uk/HkiHVuWCYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6B9C87FCA
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175346219357.15830.17742790761600403661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93ce805de85e4c2673fe34d4bb76df65884deea3b33008882610f8a1e8d80a7f
Date: Fri, 25 Jul 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753462193
