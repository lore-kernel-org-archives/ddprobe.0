Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E39CA6F
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751861394; cv=none; b=KPwNkRHdfTNnEK789w+NLxnCICA/jNbz0kYaQRfz9GFwZBGtoBrKuStVcctqAIrQq/xF0UYnTM8A+gCHx5lip/wviAThcR0EEb5J4zegS9UGY7TQ/Teh0OX3/jnGf478qk4HInXPUSCGHj5Ff34Y8NEl41yufRq/GEe4flAoklg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751861394; c=relaxed/simple;
	bh=kz1P/ieNQ2dfgyOIFzcKQg6+q6ydphRKDNawKS90sDw=;
	h=To:Subject:From:Message-Id:Date; b=bD2uWHsyiNyaHlhNw7DLF7NDkNvIOnQzPsCtl8L3Qh6vCaFPAp+dY2pVZBHfDFKOuTAS3YwUu0hO9H9aYV2Gr/vQpPHrp0z8GA5DsWIATCqykD/ICJvGNnWzD1y5hR0zhktXhE5A7eyDXgOOL2GNdpN/6jEzWz6qFqCdLV+IwW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gxH4aC5O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gxH4aC5O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00D7C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751861393;
	bh=kz1P/ieNQ2dfgyOIFzcKQg6+q6ydphRKDNawKS90sDw=;
	h=To:Subject:From:Date:From;
	b=gxH4aC5O5wI4zbdYm24ag1xJhF4B1j7SoCY7hKJAJ7MOvJIB/5F5numcl4c5RSttS
	 SgDpLOI2IEMc8AUJujMifvzjbk4Ai3t8mFLL6qO5wVwJ3nzaRzEOkeBu16CGXoI/Lb
	 n3PypppJhNNxqTSqt3W0B48mq7HJFJoOBuHaYZ37B4A35nWwSqio93fYHUESY+rfRI
	 vJAS1nIiRR8IHzDksvhIweOo6UgWc/eAJYBoZM97w3pWwHzRl+/C9sMn/B8u7Ieet2
	 FQm4cHvOxPQgrY/fadyrFJF57+96Pk5/JxW6NsS2sK8HWjYTP2ly724Nwx7PgP3xeu
	 I6XTdkvK+3lFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8A0C8303C
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175186139357.18246.10405957844470706647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 111a3deeca669dd58d0f55404bd1f575c0bfeb1b838c2ea2559b88c4b8449031
Date: Mon, 07 Jul 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751861393
