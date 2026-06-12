Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40BA18248B
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 10:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781259394; cv=none; b=TmKBKsA3nsEmxbxElWNyglmL2od/rrDhtBKPskgGZw01AEmxLx+1X1AfdduP6ODzQJ6W6uoHkBt99++stwI26ZLhfTSEsRs0mjijM4TyQcfiJniwtJiDXniLmoad7ooioVU/Gjfdkk6vBzSXPVAaF6qRB3xDtGery9AorBw3be0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781259394; c=relaxed/simple;
	bh=6ImQ2gXsDzjhciCVC/BqRZNSY1z6MIdnY31nnEtj0dg=;
	h=To:Subject:From:Message-Id:Date; b=ZCPDq2PqBzXOd6XfnjMhebzcZLfoLB1T+7rux4GRMpkAGmzpnUyZ7O/nF1jruNUbqFQMDbMQeW9e8aq6uX3nakmthAdAvixJ6bBDekwazeC2yvTXytFLlQQxdo6OZOAgtlCmdveiX7gYL9J6+9MXVnz1twhtUeAmJBxJIZJgAlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XffVknkK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XffVknkK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2001C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 10:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781259393;
	bh=6ImQ2gXsDzjhciCVC/BqRZNSY1z6MIdnY31nnEtj0dg=;
	h=To:Subject:From:Date:From;
	b=XffVknkK4cAqa5qVK2jxeJs9HJsQFxefwuQIv64JIMHVMkW2CaGNKvEyO9CHshjsQ
	 dcJuxAv63MRTGKuJ7PMx8YHSmHA5Te4uhGrQ+CemScmKOGm1shD9z6JyUJOVA2gm+O
	 mBeSWm+3Wt19enFXPocFufJoeLUp9tOnSBhHlgghp0bchOllQ9M2cqxtDxWGy1OHYW
	 J3VceyJTDZhKSKWpkrJk24n3GbMHuDqej5K4VwGqAWLGBsFDoJ5b1z3qwHnWzeUa3h
	 x3bUgZBJoqdN4iqTfyI4qnlhr518cdJ45zhaVw3PDdu/fS84I4FyP4kIXB5HNCa78H
	 9fYmNVJQbHPUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1B51CD8CA8
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 10:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178125939372.25665.18083869649588268015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac30f9cf1fafc002b3c9b36202d19ad400cec3d6881aa645c924df46de5b95a6
Date: Fri, 12 Jun 2026 10:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781259393
