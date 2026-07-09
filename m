Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 222D523392C
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 12:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783601314; cv=none; b=egAKlteUfyCg2/i+Uluc4aN/mVpNs1Ainzd2+2ITU1gTgG6CoHlcLkDbojDCVq7hygVaaxblhxAMVoJfItfywXXgKqGDTDmMZMJePOIOjPPMXA/TrbsDdQMNaxF0Ou09R+9WEztgIULWlovHs1flH4T6AcfJ7ObLGuHdE+wPsWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783601314; c=relaxed/simple;
	bh=cJQK/9JRCNQFcjCr26lk903CyIBZFPyXAdG5zltUoMM=;
	h=To:Subject:From:Message-Id:Date; b=eNVN/rQfMPiGemqI3wKcVBvkP58QQ+6+XpdBh2RD7taQ/1SUGW59JZ/Nf5zBpF7lUj/kF1+aqS0AIweK4hTnrLfAGfL1ZQOlAnA5FFSnwfbi0DldQmYDcEwo8gI7ICw9/bCZUlF6SR8at1pLJ803JyPOZPvVddfilXXXfaGGjw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nRthfKGA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nRthfKGA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD124C2BCF5
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 12:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783601313;
	bh=cJQK/9JRCNQFcjCr26lk903CyIBZFPyXAdG5zltUoMM=;
	h=To:Subject:From:Date:From;
	b=nRthfKGAN7tVDKZDWP15QO7I98pUG9lZj0YDs0LycfRSMrRRjbwLVtUgTFlnT+p/2
	 uAY7E8bzQPFWPmlQOu/QdYqC4pfZv406loPoJkn9sZmcId7FIvBYhJVuM87inHSQrf
	 IDrYLP2X7xoOAJM5hN/9M8RK6aI3UAucGLXGty1Ji8PIzq5fxq8pU3QWE/qOxliswh
	 PgaWR96CwoSf0PW0TZlJc7hvG9gNozgSVOZhy326XXKe8E2tOoDSVjS7+hzyR7rW3K
	 1wR/0yrNYRmLMgiT8hx0aWGNiRvzy1Pf7XvJCIPABgWQWkoU506KQNXxE0ZQ3T5MBi
	 VkotugSa1A5jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99B2C44506
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 12:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178360131368.7671.11932476956506087539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7b2d937be0f49cd58f85ddaf66470aa6975e2b86367f53f8b458a3b2a73e875
Date: Thu, 09 Jul 2026 12:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783601313
