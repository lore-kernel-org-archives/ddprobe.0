Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28976235BE8
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757353794; cv=none; b=bXkqq2eMH6qXw5Z6t0gqakxF7xV0yDnFrvnsYioLcQ1NkCR7Z4Wvy/mF+Xr855Dbe/TuoCMWDj6z39oQ139l+Q8SQt+6qGvXfjWuV3bXAUonTXYpAQohW3rPAgxdAzHsZD2h3xYaPL7alWA+fYM5pjuhGvLKUMhHRg6fUBmmulg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757353794; c=relaxed/simple;
	bh=dukqoMQ1fD8ChmrpYQBx0s1AxAXD3JQoqf7ujCUreAA=;
	h=To:Subject:From:Message-Id:Date; b=uzbO+0ZdMc115hu+8jdViINVEA8Nf9+SWG9JgVD+OpqyMKJnAfniED/VwGRYt9nZ7l2ZJ7v0tnu9YN4lw7VAKD1fXRKOqf+FcWELpwcJPt99fDoJ1opBANYY+rWMWwrfFZLF5wUHdejsUhgyjWQh8lqcoA7qGousiDDe01pHa5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f3M2AIFi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f3M2AIFi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C75AC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757353793;
	bh=dukqoMQ1fD8ChmrpYQBx0s1AxAXD3JQoqf7ujCUreAA=;
	h=To:Subject:From:Date:From;
	b=f3M2AIFitLDbbS9jLHThrzHKedygp0BHCifiHJ3y3UB78GY2SnsU2Xd5yBr1H6Vai
	 bqDKTyv75ZUIuZ/fSS/lwYKo8+uQtGn6mVTAUPiUw2PNPuX6KtylmdTDaADDb4tlMa
	 dTik5+3M02K+/XsQnQyDcEzhDb0Pa39wkyS+4QAffblWAaDg2jdXMJJ3fw2z97TsP7
	 mytbuCYawc4WqXz+kD4pD8MX/RCpSUEJpfmrKR8jz59u4JI01jG2j70Bcq4CRK8zLS
	 dogyCtnlHXnXIOQ/8I5kFiD2YJiMM5o+MkvroT6MJd5eixS0i3t6T3Rb9JfcE1hxjD
	 ou3pbFxLG+rpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E863CAC581
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175735379357.4561.17254430714429985640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f26552aaad1b8388c3be204033c5b85382d0147afe7535ba39072d4cf5560ff
Date: Mon, 08 Sep 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757353793
