Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267CC35966
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 15:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741880334; cv=none; b=MoScZCIveOs4F9oppJzhdeifXL0o28BtHhJ5foU4DY5Pbn6N1z0YY1qBM+ivXhX9U0vJkTUcgJC8iUl3DeDr1HDxOEvbjKQwDKSgG3yT1bnLWCnNiEuyxY3oEwAgpJ+jOVGlaO1f0XewB1JqK3gpj0m8YS2puVh+AfKW7spmaok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741880334; c=relaxed/simple;
	bh=g5agaolGcd+4Zz1HU0jBdWUXzxEEXardp+6Wsel/YiU=;
	h=To:Subject:From:Message-Id:Date; b=ByP6SCB0BN3kLL2+42AD/t0UqBGfOIiSMrx4IEHSl4M/MRIEmEN+BuebWWuzXXAEkO2f+emVLqvXwB4xux2tXaX0we+bhj33NdE4y48dQ11XM1raLcjO8gtBb7LK40v+dlsUcRWv+mrXjibbRv8Z0Umbh6PQ3IiSNBWd+ohisvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E0dYWDf6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E0dYWDf6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4376C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 15:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741880333;
	bh=g5agaolGcd+4Zz1HU0jBdWUXzxEEXardp+6Wsel/YiU=;
	h=To:Subject:From:Date:From;
	b=E0dYWDf6qA4NO+zV/GCM3tR6bisC127i+9Z75V8JB520E9JEXSB4znJve3C75KfPU
	 b7uGa73TC1Ss/usqxH6wmp375I/fR5FMpD7zHT318DE0eAUqMtxcUXn1ZFvMoF9gIr
	 r0ef45iFjB0RWasu+u8sMeVfwKN0yS0JdoGW7TQjp+0TLO76eOFmY11xSjsAfzkSrV
	 bfR7NgJdWCezHnfmYaqMbT3w43pyjquYZPnqc+RDpK8cw6emb+TyRtptcX1TDu++nx
	 70csT9sTHz3Wc2Y0sJWWbhbWz1yeE1XnomSA9AtcchizuQeCbjVM5hRNziQE/XMKjr
	 Xue/IIoyHG+JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C8DC282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 15:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174188033359.20840.16475887912475390731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afb5f0e51b49ec0933c04aa89dd90203e5e0b4563faccac50cba88f03b196c0a
Date: Thu, 13 Mar 2025 15:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741880333
