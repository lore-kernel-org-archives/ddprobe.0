Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1353A239E7D
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756018194; cv=none; b=fwRo65/uaBtu2a+F6vqgifOITdraS2+VwbhwtvdO1oJZikAjXJuub+9WvoLkTORcjPMB7FHBlvA/12CQnBl3J39UYuxIeVV2CXCsO0ZSywnIcfdqSnJw6uk2JQ8s6nRjZpLmSMs+Xa23tNSehUOxSmo7ezYgR4aOmvkpZC+f6a4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756018194; c=relaxed/simple;
	bh=zViILA2d/Vu5epQfrKU9mXxWmcIbVA5VgZgXreFffk8=;
	h=To:Subject:From:Message-Id:Date; b=KyJn69VoB12oxDTwSODXJd+z6mKQva3Tn+x0rNPdTPfGcFfp/8EQeAi3bE3pFfeqZxPYOZCe2naqycQGHjbP/jMrIj1gMYNvZ0CqkOvWE684h9P1XHycQlC2pruMnX3n9egceNpv6dThD7AeSiHi6DKSWJ6onx7gNAndpkjm/dA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y3b+UJqf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y3b+UJqf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0845C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756018193;
	bh=zViILA2d/Vu5epQfrKU9mXxWmcIbVA5VgZgXreFffk8=;
	h=To:Subject:From:Date:From;
	b=Y3b+UJqf/DepUllbxCJ7CykzMmzwLBMSUvdar4UjcJvmR7T0Ka0IXus8shoIvUvNm
	 KRZalLfHWVr63yqOsk082KUDxvumOjuEmcI78tHRNe5hf4yP9F0E98szDxFmOHztT2
	 IU3bY4tdD219cFFEbMQO8EE28AnL6JiMYMMqofik3vCOP9eleOmnLOhczncuNT2pjZ
	 r/Zw731aDqxY8pKKZiJc+ypjj/3c80+LF8BwP53G5YDxgXrWCrzvR3hA2+iE4YnQkw
	 vPM/aM9EYprCxHKVCt7oZCutXUkgibOJmE3PWh/3lvXaOaf6hkxtk5+HW0s8XCFXhA
	 YLr7QZxVPeoPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91779CA0EFC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175601819357.29331.16250470929584837452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c32d18511b9c1488a81c0d447f9d7827cbb7f7ec488fc10c2aea2249da86cc28
Date: Sun, 24 Aug 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756018193
