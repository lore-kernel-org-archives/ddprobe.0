Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E66692367B5
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 19:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770231834; cv=none; b=qPSVVzPcE28zcMbY4Mf005UPqe2EhQOY6kddNcp3O9T+8+5DBunJeSXw7Oc6/Aj4WtI972KcJxYCSmWmap71mJCaAYx9bpfbVQuxwpT6b86FH5OG1SxJLN9U/MboKAtFISo5VG7p4qer5r10n5iaP0CPWuPOWfxGLuVZcmL0ceo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770231834; c=relaxed/simple;
	bh=oOqVGvNAFLRp9vu26X8Dnz6KTrOf6XrPIcF1ijbB4Cc=;
	h=To:Subject:From:Message-Id:Date; b=Ysb6Dlpck32uxAkOEqMODVAi3MSW5LnnOlLv+pt5CSaOPmFYiq/fkxKn9cbOrww/s2yub8nF5Uz9zKOfPk4vVQM7DqnWFcRE9jz1VGm59MGGvV2b7wA4xajWMiIocG20oXPSqu3VqrdVbnRkr+6/n+Oiu/Ogh1LpNwZU3wrQLV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UULif7vq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UULif7vq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B29DFC116C6
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 19:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770231833;
	bh=oOqVGvNAFLRp9vu26X8Dnz6KTrOf6XrPIcF1ijbB4Cc=;
	h=To:Subject:From:Date:From;
	b=UULif7vqV6Pk9Y/RQJZmQOD7N+XJjZL6arf6LxR+mDtvHAHEeE9LLYIvf0vuR2jNJ
	 O9ejsYp+Q/xWQZoOlGQBDz9gBNfRZY5vVzOAv6hwDtMky82g9VpZOv3RAfLgf8j2fl
	 2GjoXtjFUbZzoh+dz7LllUVLxb1FAMzJIGzNVlhuXcPGNjJefFMsk8u/0fq+Xfewjq
	 Jug/70vhalueBrHw4z5KFsRjPq9ZzicYNiflnx/yknGbELfODszSLC1B6oqDGlGvoo
	 40xqI33hIuupsCeB3dZH7dVwwRX68ZWl/Pp8PB/hvNYXG4pLWqD59MK2ZRCMQMQNns
	 FaAUqjYESrIUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E976EA7943
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 19:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177023183362.17601.6479474641470768557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d7c33b6aedc7b737b572ff245d61c66e26af1acdb11e46f61a6551f3b8d26e2
Date: Wed, 04 Feb 2026 19:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770231833
