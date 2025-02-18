Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DE16286281
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 20:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739912334; cv=none; b=g/ZyIzQFjdC+mBjNZf82UJwYUKfNEIsJCrsGGG6qPK0htRmls3dO4XZlN4MtLKRW07LUoEgwhPjJoAF1V8OVKA9dfkDzot3udxLLoJXz5gd/zTwxhc/3Sq1LKn2Fiomt6X/C1657YchMqBG8xRXVSa9a9MtU8NGXbh0D9YseGzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739912334; c=relaxed/simple;
	bh=MsVbb+YU55hzOc7PX6YZInyTr13yJKWlTD1LdUMnMQM=;
	h=To:Subject:From:Message-Id:Date; b=tbXtIRa7LFhY2kl09UrMTzdtvy6OtBbz5H2T1btgIOjoOA8UaYXQkrkHWFiM4TOlig9GKXQtA4FwrtoNI48Tzz7+CjpwKQ8LvAko9vgtbsZ/myBux4ni86qSAUDXCIogBGjZiVOV4+rAShEiI40CJUz7RHODE8nmJtIFLFqJ5N4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NU67gC0E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NU67gC0E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C68F7C4CEE2
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 20:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739912333;
	bh=MsVbb+YU55hzOc7PX6YZInyTr13yJKWlTD1LdUMnMQM=;
	h=To:Subject:From:Date:From;
	b=NU67gC0E6bf5GnyGybmg+jKVBQA3zovMhmqv/8FMtBzp+dSrskP2hSz33GuseeMRV
	 yenqaB9HwJM8xtyt1rWBMTmxaQ6AzY1ze1iCDNtLen57MbYx8S8oFXH9CaDnpNaF7+
	 BxQsfZ/R/UiE9VLlTskiic2o7/3W67chUzJvmFa2Y8rpVAbM9v3ZKAT4pw2WJ51QJp
	 motWC7S3mc13Sow8sJokVxd3oiKFiwpcAvuLe7nKgxFreDb5XS2U/ldEMy3WSMPNUr
	 bX97jAYjaB7oVpKDdglPKhns+j752pdUb5V9wxyEl5x9lXBQJ8wnEHG5MYmmDWa7f5
	 hWWELOxeIUJTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A825BC021AA
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 20:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173991233367.27807.18403040932154244944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7191895303abfee744fd2afb9fe2683213ad22b4fd25988aa541f135efad8b0
Date: Tue, 18 Feb 2025 20:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739912333
