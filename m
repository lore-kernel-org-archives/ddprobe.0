Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F6723033DF
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 02:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779850354; cv=none; b=VQqgr5PhZcRqvLECkmd7A2czwDlrHhvoyCROZzLAZhz3aWUirOBRxxftSfZ/VXttOTFV5iaWepRVZAVzP6xWOGhQXxpqEfxY3/HnrDFDHv4MXm73t+9Dqbls3caGemURrei6XECoBIZVcYYTveyVTHQN2cw01n7ukvqbbp4gaLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779850354; c=relaxed/simple;
	bh=eEKqWuLYR6SSWt6ij2d/foesRsSN3Yx+5xxSqiI0Tmc=;
	h=To:Subject:From:Message-Id:Date; b=N5eG3naAFbnk0ZUWIocVMjSvKu5VWF+uuc1Ya3XNGG9wFZsHAD2b4ISIAOhiRJEz2/fRzP+yBzTx9BW8wQc3xh2ZFcnahsSMNRZC1xrPKfnVCnLorYBJZXZFAmsL9rZRILN/hyTbAT9XW2pr2lruUbmykAoNTCZMt06IFMsTVBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nisjY/w0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nisjY/w0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1B5EC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 02:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779850353;
	bh=eEKqWuLYR6SSWt6ij2d/foesRsSN3Yx+5xxSqiI0Tmc=;
	h=To:Subject:From:Date:From;
	b=nisjY/w0dsRHIAchY8ffPdYKqQ/RolojMHBOrpRIN1C5MtTkMebCudDHNpiovIhJX
	 CPti5/V/vojqy6UbRi6mrVgBrSc/Ivu+uwQQFYDYhr+hr7ttLPLucOGrz9nh/xP9SY
	 XEI1pHmqqkSE7nE6uigoUmTsK6lAZwU6vRXpbrmKtvNvKmHOVsyqpJGA4JVpEiMdrP
	 EJbVSuZFdNHWn37KJf/1pyy0qv7rwm/5nRr8CyR6Sbjjiy6U40bGeaFi6xfMg0j/kE
	 i9w4pDLvXZZgYQYQZfsx7JBrt3IYReWQ1F3qWt7jscOWPVY66Ez7oP1HXJfEfiD7if
	 8xvPXeSLoNw8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D67CD5BD2
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 02:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177985035368.22647.13462811351857813561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 631ecf851e683fca69bfda7013e4ce14cf7e8c8f1e4c98ef084e4922a4973ef9
Date: Wed, 27 May 2026 02:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779850353
