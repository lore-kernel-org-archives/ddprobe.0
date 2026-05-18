Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A502C48AE2A
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779121234; cv=none; b=iTSGZBEVuWitbqPy4rHZjn+uMgONKdR/QYe1glYmn610RrwkXTzbULCUOh5jiDmDj8mrULvLP4MCjdAQp63PMEwjDGjIxMe+8AvVc+XpC6Jld/DU4e1fUI9MxupOqz9j573fuIwOH70qurz72VnQyWb7vy5EVRsYLcz6tdyOVGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779121234; c=relaxed/simple;
	bh=jEY4sQWIiFK6pKuR9g8DehdhrhMyO9k3KMd++aIgz+Q=;
	h=To:Subject:From:Message-Id:Date; b=erXAKfz/IRnPUQyMLGeyrR9BN78SBkgsIsSF3OIZ21Ni4zyZHjNUcu+RJZVQl8F9YNsTci7aumhl01pvW9Rha7ILzakAI437BOqGrDocaGKzytMWzaWFCbDcjufHJAVtRs7lzzfmUKOG+oKLqw+ZVhfWyj9hqbYsFupeZBrGpGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mi88ltyH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mi88ltyH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE8A3C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779121233;
	bh=jEY4sQWIiFK6pKuR9g8DehdhrhMyO9k3KMd++aIgz+Q=;
	h=To:Subject:From:Date:From;
	b=Mi88ltyHheqR6pVHRkf/5WHE+eW0075uOlhBBjQL763ESyyVvWDAqlpymQwxrNrit
	 8h4F0EBjDt/yV8FHfeHbGtXoFQ0Ysba8ouItyBQ4hb7IjHFaDbdPis8JfS1zx2f5md
	 p3Ur9O7PzXdWVpbpq9NG+3ld4iX5g/HpwDeJLm2qo19tvemMNKibByzFdx/aHclcQW
	 X4jTnDJmfB+XzRpymTurlhu+qoIpuGIYWC+cG5hicLpAJIQyEsexB1y6N/iDwjT8WC
	 9dKrD0guJsdt6vLe8KWnyT4HsHzGXposmJnW388634u5gA2cpJ1s87bXlON8Nql6se
	 SIOMt0x9uuKGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDF3CD4F3C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177912123369.7571.12645905129088539934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df5cabf6608340e46c2da42c3392084fab72188b9abf9400a9c46feb4f557824
Date: Mon, 18 May 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779121233
