Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0510417BA2
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 08:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771747494; cv=none; b=WbRrlWsmQr5wHdrYgyaci6KNpUT6aFIqa5acJ7CjAfFdAGCTym02DzOKzFd5BziILlYeDtXLJ28qJmYAFilBR5D0AS10yk0kgV2j9MwuyGHHqMW6K9xYD4Kkx2fOoBq8iDxOMlqwqa4kHXBwU6aBnPxlmivW00r8BRv89cOhEGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771747494; c=relaxed/simple;
	bh=v4QmM4tKli7rkacCUM4WA3+LeEnYYqbq4obNOFi+CRA=;
	h=To:Subject:From:Message-Id:Date; b=o6ZwXF3hW33OHfPWzjiJOplhCue3BZbp57whsU2pZ9wSbYn7Q4st9JalOixFF73gjBwKbcMgOa7r9fTZFHKUs8P+hO1VhgXS0AG2qsmjJJJj6KtGGTcsjlsQMPlp5bgoLuUlfHFkaeyBD5badfF7XMsowyJyOPku6plZFdz04zo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dz4UkSxh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dz4UkSxh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD70C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 08:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771747493;
	bh=v4QmM4tKli7rkacCUM4WA3+LeEnYYqbq4obNOFi+CRA=;
	h=To:Subject:From:Date:From;
	b=Dz4UkSxhYcG60CmWWtpzprpABrjbNVy0CE8LYuCX555d8xOvLUzjCbK6ffFPk7TPA
	 rdDGDiNwo9u1mQSvqZ6s2ePGhLt1Xk6v1xnB1ErxmnPn8I5dV7mbz2Wtv+jMLMFUvO
	 PA4yX+b70T2zD6l+916tMa02G46sn3XtvLHfs2TScr+SAEJqbisQMi4dbzq/SN1FmF
	 +4uyyvwjhnqAn9w3LJc1Z3++BY9jb/jv1XXk58W+kBT93cmrfxTyBc+ib9wAB1JRZz
	 aHItMLmxd1P6hUhw60hT9IhJtUQM65Ueq+ZgamKWTKkURCQ5b/nTiZJ2M+Lm1+0BYO
	 sBtctPRNJ+hMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ADE8C624D2
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 08:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177174749362.8036.4096374072258516321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b60e19c9fec16f23223d51850682b0fee7620b8485fc56e9ad92eb05b38cdac1
Date: Sun, 22 Feb 2026 08:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771747493
