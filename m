Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28DB0A48
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734332154; cv=none; b=Z+O0iIMzzGloyLTnoaIX/L5UOKMBcBUw40zV4Rqi5bcJfa5KiAtMiwlTRbqAICdn2ISj3wHPRjAST+PR/uzj9U/fRNghNxIzV06ewN5mbdqS0tyUjSIpMN+mnoN+2F1LJg5O6UlLa+8VoQ+DktXOvqWDOSXlEJHqIRbbzZLwDDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734332154; c=relaxed/simple;
	bh=IfjQhXePvpAgfv3GrpGqdTPVPkMiqJ8ftO95pCXVxlc=;
	h=To:Subject:From:Message-Id:Date; b=NiLlE3PHpg2s8FhPVkDgtD7Z3LY0qvslX8lILLLPh9xe/E+dK2XmjBsoluNpyMqS1ueDrT6wcXPzBVn9hI1p8N35+6RDdeoDENyk8fMP7yP/tw7vLGvwFMSxHF870bzuJGEm3EvLMwqVOsQHavoS05W4UFz5fONuLEcgbgNtFGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZUterXTS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZUterXTS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9DBDC4CED0
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734332153;
	bh=IfjQhXePvpAgfv3GrpGqdTPVPkMiqJ8ftO95pCXVxlc=;
	h=To:Subject:From:Date:From;
	b=ZUterXTSqx+be9mBc6kB9AsjlbbiJoyGZSoIl9Wq0BkJvAbzU3DLDnXGDlcoAlV6A
	 xss3LBLkH7K10E/vWjHz/2s5nI2Efcpx/8YwCiWZxZaIrLmPgBCL38o/DUs1cKRn5R
	 JMQm2jaWyQcBEGpGRM3h68gqI01UWev/t39FHcnYFf+BcUuNE1C+RUr8INDDBiXas9
	 pG9W3t+FusC+GryN+XVWJN/yX54bABjmQv8mhYRIF87KlIJSd3JRlfcdtXpzX+M12F
	 qsK5mvXDn0RIzEMRdd2m3EPBU7B32j1C+Sf5QRUnHugdG1doyGs/H5SJp9Vs4ltneo
	 pcz5b5y7sHKcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B5AE7717F
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173433215360.17434.16993809791403322002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 010fd9e8745c03ec299703c1f2f1e52db77ab5a65a8a8f8eb891fab33928f105
Date: Mon, 16 Dec 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734332153
