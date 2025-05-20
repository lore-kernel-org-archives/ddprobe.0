Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2438320C480
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747739994; cv=none; b=GAaLMXRe7DkLh4dECue7vi4H16cDt1mo1dFjS96JlvDEE56XWS5AWJ7gaVikWjxWYMrM4zj2/g3LPFralG/rO2o+hpDZc3RYMeelHgDsuc/CrpDsaFlmjWZv9BoduIAs+cJOqhS4Cmq6PxzhOQuwv85QK39iruc4iRuV5SIRV24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747739994; c=relaxed/simple;
	bh=jVMlUZhZoENDBPoxDLoaFL817sJ6WeFrN4bhUahREH8=;
	h=To:Subject:From:Message-Id:Date; b=oJhTh5lIVMuLBtrUj7d9dPx75KvB26W6+xeneTlVKav/tqDN8IdWuUSb3xnbs2j3H6pR4Ze3lW1AIt7v40TeiRgCn9HL7wPVTcDCSD9ejlAUDF7GRg9VFhJVmJIzpQu/c9Almf9M+eFpRwrnfJYmND+2q9oXGiA8iPoVuKlo8VQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V0AjHZOb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V0AjHZOb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D579C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747739993;
	bh=jVMlUZhZoENDBPoxDLoaFL817sJ6WeFrN4bhUahREH8=;
	h=To:Subject:From:Date:From;
	b=V0AjHZObwlB4PO3LorJ205c+1htVksmQP2ZTWUmRzJOS/kQT2CuPU52EjXwc4UmQB
	 RDim+H/w7XIZXjj5e7waYwqvYcftryJM4ayaWecaZ3Ad+ZpmzvM3yro0u4wQ/s9GUr
	 lMGjHhmZ0WH0+Eycg2lQmd0bNuMbMkmiPf5XUY4kM+gu6uxKwrVkoDTqtUt6KMd8XO
	 TFiRZkfgwm57mLvltOygRm6DYLvan0YRMd48xVtMkRxndnV5qJtiJKsXWw3dBjFbwY
	 DQ05WJ3H2sDwXHqzm/GoK2IabyWk5M4tadb6GoVqjNxyWgdDsdY8EPcTvtCMdG2H5L
	 8npTtLhHje8DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E47CC3ABDD
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174773999357.3770.3514000821335223159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7b23fbac083c1d1414df4c58b5d9d09bea4494df01a1ea936578bb2cb845878
Date: Tue, 20 May 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747739993
