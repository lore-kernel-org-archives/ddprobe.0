Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C852AEFE
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744264194; cv=none; b=tX9lekjh6T4zSYGesIMIAdpM4lwXHjvAU8yDRhKvpB2LQpy+FFksg80qYuf0Tt/npOx9QZ+Dnd4N4S3rM2fzAl5vQvA1mN1aPuLZ8bUB2fryC/zpUtPz8qk+WTqEKCWdkNPN2VO7/B3G3SiWqWF4YLUbgz7byljyTSfxyX7qyhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744264194; c=relaxed/simple;
	bh=LQ1EH7g54v2RUlYdS9/B6Q+k0+OTFxvUNZNdAXRh3Y4=;
	h=To:Subject:From:Message-Id:Date; b=p3PtfV8WiJ5fFq/YR+9G99vhHBRi8dKR9i1KadXb9/FeNnIWE3XfSjTSHvHkQQnz9jPq7NXWmBx6qDveIqr/veuaPnw40wfWk7LV+o5HgHPoTC+ipuzpNbVjuwAc539lCDX2qIdLPM1mEYgpoYa/a19tZObhK6cSD3w4mjkDQaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oxWPGLp5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oxWPGLp5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACCCAC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744264193;
	bh=LQ1EH7g54v2RUlYdS9/B6Q+k0+OTFxvUNZNdAXRh3Y4=;
	h=To:Subject:From:Date:From;
	b=oxWPGLp5aGt+3wl7tKqWwy+iUztjA5e1moI/X8ykHlxmflwPytmKRmLuB8dOtzJG9
	 zGwyukmbNqqqKd8ezWZ+5RYOrVgJ8uKWxPWypaImkPfh+Z0XVQEe+5PorKyo66J33O
	 dRAw62kmtCouelbFzMQ6TV9oskurKeFqXcFUHM7aCmKz3bgsXkG66jnHgGPckbkn9z
	 LWeIgS8bSAel3Pt+pY1VJJCDOExFEZoJoIiSC99f6ot9sPDLAngwsE3QMAOvnCEaEp
	 3ExWI6FWDwdbQ3Aha6QAOq9OsnKpUDukMaHD3vPSGjlReJ5+xSp1W3jnaZ11ij2dL1
	 KfR8EQJe0lG4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99944C3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174426419360.15785.15171901200334760455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf051d5925e9e06e55d244715ec8398050dcb84a737a850c5a7c11b905b6797a
Date: Thu, 10 Apr 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744264193
