Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F05299928
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753880394; cv=none; b=LlJmi8VB+ZvKHdjzdlJ6R/KOJUf2Ovf2fPyrcMoc0U/XYHhG3lMSH+UAx+vOpM5FRWiheDgKrsSHQsC3/U6krMokseHq8O12Z/cqB1/MWBojphgz6CcQnngVlUFvU85JIpuqZa4uuGij+g3C9YtJvuAamJsyo4ks5AxlDXyBxoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753880394; c=relaxed/simple;
	bh=bmX1hVzF2n1PRilZB922q9NjL/rA4FRcBXNE1a/+F0s=;
	h=To:Subject:From:Message-Id:Date; b=GApH48TlH3OCCHJOQ6adpTXo5Cd2mmHy5RO5SvgsTY5yc4Mu36qLJkHq+EZwfaENldJeK3RbjjLcMy0QGi3NXUOdV9Z23T+ACqn1KGjgizxd599fx+/BrnRrF6aTfd/hI7GCU8TkZQ6Hf5+PDzUhaXolBfNysovErQ6h3ftTFTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GMVA/8tW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GMVA/8tW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81D7C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753880393;
	bh=bmX1hVzF2n1PRilZB922q9NjL/rA4FRcBXNE1a/+F0s=;
	h=To:Subject:From:Date:From;
	b=GMVA/8tWpCjnzQjtsCE6ufn/Udygu9XWYgcpL3LCiqF0SmdZTXsjHNa9MDHiidoy2
	 3bYJHlmVd6Th9fUCAW4TsRT4qU2YOocux4o2jui8T3/35eO4oPGRa658EjchSLzvTx
	 WluKBf9fDjhJVTK4mEWH+4qtPbc5JCaSTue3mbgNevMXWZx/RQmlIgp2Oaj11WFnQw
	 LusNpM6lSSZIEttjU221KlZRoB158uqqAIu8zLPpsMen32kTfJdHjq7XTIbtdEyjNe
	 4CXwbAtoD9jqRJUq6qC99T+T2U9ZSNk6Egs6eWNLoISOlANV7SiCgzgpnlLH4R7f61
	 tTaRgvy79RrTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965D9C83F26
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175388039360.19193.10002428026229136141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45fe0390871586a7d5bef5181f0dd01453c203663f7965ef8b30611b1a7ba8a5
Date: Wed, 30 Jul 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753880393
