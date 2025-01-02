Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38CEC1AB6EA
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735860954; cv=none; b=AuPiMhkbQcJX7qPxCH1vQfrfqrHtr/NaJCcmJgCg9n/4qJjBmDAeFTFmPJdtANB6IcDJxneiBJf4rTfeyPdWWOExhLr4F/S7QhN0TYFe5FKjVmZos0Yb2WInjuWxOpvSLBlHyaA6zzzmWjQ3/D6PfS+6GfM55cbqdLwcFnSrDTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735860954; c=relaxed/simple;
	bh=VOX3xavHDTf4iPH1Auu9Wsu+GhVrwrwEjnoDTEGSv0s=;
	h=To:Subject:From:Message-Id:Date; b=upF/5ZOOkM3SyXqn8fmVpdzCm7IkTRCNFrrwTNFeVj9KOSgSDpgEXvARRm5EBKmKtL69RxR7sBZ1i36IgdfqGKUV6455/Uk2Rl8pip4yDGYke1Uw7GXvbqAPzzHubUANIZLhc/dZkF0xoieSjqIgi3n5MMcnmxq9zhBdU4yDhIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FUztTTsM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FUztTTsM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58D5C4CED7
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735860953;
	bh=VOX3xavHDTf4iPH1Auu9Wsu+GhVrwrwEjnoDTEGSv0s=;
	h=To:Subject:From:Date:From;
	b=FUztTTsMMIOXck4628yLUIxsOtKtS5vrRtOOecEMImIsZ+Yswa8KU1BVLDBXR4RyE
	 h/b9XkI1m781o1/+6K8TlYdlz1oTc/jZwsNTQ2lUHty33UzWlRYIonlQw2n1FExhXI
	 H42L449hYhBIy+0fU2zHR4TEGTAUVBGpo6JK88Q3u3ewwX5Uz42pkF8fhBeL0RuhJS
	 qUhFwU/uR2gGewZ28SvaitMaLP3oTOKa/hISO6arKFubHlqrCXYZL5TYvPmYv25cNz
	 8xV1tSuzdC/Itd9YH0zHkyoJB9SdiUH1aX2DCAG+RFVAOgyfZnpIbZ9lIL+wqyCwLJ
	 gv1CGMqPZ0wlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EA9E77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173586095357.685.8829321320183158188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8737b600ccb6c050420c367afbdf2753b7fdd4143ddfd1dde8193342bec4f2eb
Date: Thu, 02 Jan 2025 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735860953
