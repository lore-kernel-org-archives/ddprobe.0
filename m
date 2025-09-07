Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1255A26738C
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757248195; cv=none; b=PAtvsQyRyxSokhtU5pSmHRlVKDgeD2vXdl3m3XLmblEbW99HZPQDTT0zA8OH0nslEp5ydnGuiEug+1bhjAtZGYid4JC3WDKlT5nDrDPZ6Yuv1mbelOg4g2Vo2nkHJRxHBkVRIi/Vz+ClI66a9807ulolH4f08Jr2JZ8eWAdnPHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757248195; c=relaxed/simple;
	bh=kufdsM0WtyYJnMCLyenjd39R/I1JT7gWFr+jvo3JSKQ=;
	h=To:Subject:From:Message-Id:Date; b=jeYarFS6wkrv/S8taaJiH6BqdZA8hELRoAHMg35R8haImxW/HRkSQm0tH1lxDw3lXh3Ov+CaOyRm/y9IMTpQeGTJUh+8wSyVIqgegR4awPckl259kDTmNs83hxB1FvPDdswmZMcAu3YnEzZbJQseZpF4FprUUuvQDFY6/bSBZBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rWl7vUQR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rWl7vUQR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97D12C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757248193;
	bh=kufdsM0WtyYJnMCLyenjd39R/I1JT7gWFr+jvo3JSKQ=;
	h=To:Subject:From:Date:From;
	b=rWl7vUQRvCz2QdYrp9SRKOGq5NTwIH+Of4p6faPgTPJdJxFnYTdGA5+e7l7+jYUgB
	 Ghaw2LY2d1S/+gCxp6vQto7O6UxcjzvUK4rjP/qZ09Mu+H8tcWwtp/kFQziJFe9TAm
	 ERoVhNNdYAgbk5OkOdyv0dIhiqrgAWyRH5rKww8HlF1dkKXBjj3GF6xK0bSdpomiNk
	 cDeq4ExlVcm8DPrO+S6GivgS5tVGpN5AItPNpvMg+4hCi+QfHinIYcdNsd3FDxWtzz
	 dpCAd7X13vUjNf6MMUKbcND8FNe48mdCfU7M7hIBAJqWk+KoeanxfvjmkyTp5+aj7K
	 HPX1qDxuIHsHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF89CA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175724819357.1973.1667986983845857543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 968e5e85dffb0ef63ef4fe27e0c865f6de0b71aca071af2cc0d53c4c2a37f22f
Date: Sun, 07 Sep 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757248193
