Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E1E81AD0
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 19:43:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716493403; cv=none; b=afpuBdzgZHBG4qND6QZOLhD7A+buRuiJELxSsWa+Wjlc4gBebkB16R+vW0qahbrVcKy06lcybESrqRce0hqv9OpRrjLXy3pQn9d+m44MXqPCmVBlYGL8kwrbGhajCkb2lHlFgelXVxsq27j5UAvom/q+3AiV6ZWcGyQYMWx2sYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716493403; c=relaxed/simple;
	bh=mxsPHDV/nWJIuHpZxKCnJeThnsqKBPn6lYmITWnJPXg=;
	h=To:Subject:From:Message-Id:Date; b=NdKRIRuqe9pjxXsBegMbzld+3Gn8PBMmkyIWsj924YvWBbWMBAEHml9LWSxheL0yPBC+YPlTkdP3rZpOkSMSg84A5jHr5vE9RnHbxTfpPyfIqRYZmK/53UF764e9HM9Ks/oqzQKR2w9PcZDzKuQYeGf5ekQVa/MNuwi5yrZ/R/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QdofzU0F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QdofzU0F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1495C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 19:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716493402;
	bh=mxsPHDV/nWJIuHpZxKCnJeThnsqKBPn6lYmITWnJPXg=;
	h=To:Subject:From:Date:From;
	b=QdofzU0FlSQacvnG4+aD4YA231/iy04ysCrFKvjoN2K4+gGYM0lqZaI+6lYK4Gske
	 dJ62NXeZ/Y8sIbxO724+kL9qNwzfnIxxYg0PJrDdxGCUoRFHdyXhyf4k3LC4EiUnXg
	 DCA5NIsyfhkZUB2m8CnG3uTJMMAorr4/+6iOeuCdJvQ5ypE9EtfncB4pwi2Y1UrH7n
	 qZNmvxuRgVVGZ80xEPqA3BXbcBALXFNP3AhhBxa0WMcTKvPYnJdT8P2vBWRivRgoq2
	 q3vsnMAfXhWVkPi85XFlCdovdv4J63EdLPccn4UHhEZenZLLz5ohz+CcNxr1ZePqMM
	 dtJOkqDs8xAeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C10A1C25B75
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 19:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171649340278.2759.3341844810123841774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c28c31a34054d855d972b75353e1c32440697a4ae85eb604611673fdd220ac8c
Date: Thu, 23 May 2024 19:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716493402
