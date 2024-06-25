Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47453176AA9
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 18:03:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719338603; cv=none; b=FgGKAKS49NsPknwYlr+3ON38KQv0QITzEz3YQ5qeeyr1Eal3QnIH19OfjPbhmFyHcr6RG+T8iEauOAj+nB/XGL4MG2EezvEcgKxWplGsOR0TG35zPW0569rcdTRQs79pLY4GkYfS871WwG2k0dVJZ14miPsZZrr/FTmyNkhXlOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719338603; c=relaxed/simple;
	bh=h5CDgY3gPaeVftl3TqcxrMroKfyRMbB4V+jMHDyZAzU=;
	h=To:Subject:From:Message-Id:Date; b=biik3YU2qTe2AZ5C77wWfoO3Q1XWzSaYLb5DG4DFdAJv1gQRMA6HVr5IA4onW+xV3MlTHk4Sz9UQgVUTB+QoOxxewFG/4lXgXLerjbbW+HE+PI+Stb7517AnhE52sLHZhVd9+WPaZrnIudHssFuJmUWHDtDwdP8Z+5HRSNiQn2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rPGiRM7V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rPGiRM7V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7066C32782
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 18:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719338602;
	bh=h5CDgY3gPaeVftl3TqcxrMroKfyRMbB4V+jMHDyZAzU=;
	h=To:Subject:From:Date:From;
	b=rPGiRM7Vs5rDv2lqvdnSdz1C/YkB5r6Y3P/51wyfhJPnJiu7GYDov9CfgKOyJUw7N
	 e6To69NK70t7zSTk3CG5ZN0MtZR4DKNryVwW9gwL2rAuRv9yBsUh/VHviPDY6QbQI8
	 7Y5+hhojWAbToctbLLMs6nJsEOZxH/S4QCM2ixqEir0l+iMF6heYkuiTjorE+Ztds9
	 O0PW5fZfCyYI1JQTvmjBWo3dUG0QIROiQCOQtkStIMHMhhxWrbGhughuofup+tYj0C
	 HhUcQSWgQ7fDgRSyOQjlVHz7o8/Ti3CWUNHxbBK1CEVSLBo+IOCIUlAagF1wcJvVLo
	 aT8taFi7dNnJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3F69C2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 18:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171933860278.14509.12324386069618243341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adcb708434bbc2df6025d025ee322630721d5854f00717b4dcfa67f6aabbf82c
Date: Tue, 25 Jun 2024 18:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719338602
