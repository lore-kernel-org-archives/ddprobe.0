Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5507B8F6A
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 11:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717586783; cv=none; b=KJla9USGe22svuiEqbwgiJvHK+t7YBiW8pRcdTyXF6/gZaZNw2JOYmjST7Shy4/R6hyRTqsrAD+O8A7k1K9hECMle2U3HOwVbC+nx62nO1y4n48EIMTq9f7lBJaHiELRqBeN6o03FQ6hpf3nXoqI1+o6kCuIZPTwTdYx+qehU8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717586783; c=relaxed/simple;
	bh=IQS0NakVXGAZEvpORBXVzk1oMYxEtWbcePfxFo1XHfM=;
	h=To:Subject:From:Message-Id:Date; b=oOJZUe2zXbB1PpycIDstTwj5D1KbMS2GGAHVM5+PM0FYndDMN3J98wsayPNb+S8MBkDt2LeDlEsMn6W4eUe4nSnbMx/lC1rVisfkcXpGQAnqfzXbYdd6EM77eaW7OT0BJaKeI1iHM4WJQQc4L9T2QO2YyUBSrSMnVcwWkjanDYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FPJay6a4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FPJay6a4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0277C4AF08
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 11:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717586782;
	bh=IQS0NakVXGAZEvpORBXVzk1oMYxEtWbcePfxFo1XHfM=;
	h=To:Subject:From:Date:From;
	b=FPJay6a4IN/JVRVoJyiQ6D6wU0HXHR9bWnoK2hyHUlL6XkaEEn1YD38j69urGEQJD
	 eLbM+nFEBw+LJNQiqd5oWIDRozalMio6U6jj+cXquZkZvYh/sQTJ/+DwNyykoGYJ31
	 JoEM9MlzLW+1ZP/SynbMpcW9Z6cM0LEVYIlh9InDZAD3YiA8ThXNMbSLu2o+Uc+9My
	 SAajbZ1iKiNLD6CTZHpsATpGqItjxHNETZJ7lEZSU5s4Dz6h/9mnM85nix/51MZC8K
	 dw8D1q9odZBf8f2be3fnBQP74ygBIg4EQUAGy2bDnNhBV68HCv9bjcuJVup2kjxwyR
	 0FkNG5Xt203GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCE66C27C5F
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 11:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171758678283.21081.1572020499491603505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc966d0f8ae3e871767f099bd10fd8658e1c6c4ed627137476892ddeeec8521a
Date: Wed, 05 Jun 2024 11:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717586782
