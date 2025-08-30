Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F182DE71E
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756582795; cv=none; b=SxwZgYqJITe9BkCSg7OiKd3HPyRGYsJLDMIkwfaCOi7yR01Eh+UpHldz/lpgphQD2BXNKqHPgw/tuqdV838eO2Gm93Aqxy7whrpraaDSv0xvRL2ZZsr/zs4mqGuAs/SQbUyyXMQUXocAms8NuYn9WfzyBm8aeEaV1Kgs26cgBcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756582795; c=relaxed/simple;
	bh=UvF0lIcYu5LhLHIUorV/YcWNbPIOZp7XqAkBp7MYPug=;
	h=To:Subject:From:Message-Id:Date; b=FBRz7ZbuhnLdrECQLktOTEGqxruftCwN2QGxmYwWx6T5MGEAhqAQLwPEiy6VBYJvdmxCULxldBhqKMkSkYJLC+WRWKa9bkVzSlrx6KV91HSOSbKbAWbFA6I5m6iIkQ5blbtz7yonTnnY1c4G2Lev92+kk847m7Bf9NyBISPdH3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gXrUifpg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gXrUifpg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA6BC4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756582793;
	bh=UvF0lIcYu5LhLHIUorV/YcWNbPIOZp7XqAkBp7MYPug=;
	h=To:Subject:From:Date:From;
	b=gXrUifpgs5tfgHeZjEBERm8OrmMbR7YQQUpCStmraBQbLLbktWfPY6IlUcAbONJBh
	 Fc4DQJ6ao0wohfM2TLVovQ0IAnWTwKuETFP+5KJOCo0umRwamcTWgg3tuLV9A360Y7
	 bhaasQQUvORq6WePegwBNI9qddIYBk196zWyq3tFtMoIZFOMujNQhX4EMKZqeMjXqJ
	 e8hSAAUjsJUWGHKc0l1iaWdGiG7GNDXF/D1heT5HSG74NZBTwWtSMbTEojaa2ggumb
	 xqe/MvHNZ8xJH27DtPjkesLavCc8bCfSMdvbpLIcDK8jKswzafbxMwfODMpXk3TH3L
	 rTz6tZjNYxd2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2A1CA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175658279357.31990.2190589741336506993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f65ef07deed0db977f7b337cceb81246cd4f649f5e9e2d5353982e05e47b82c8
Date: Sat, 30 Aug 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756582793
