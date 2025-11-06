Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3353730EF7D
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762430394; cv=none; b=gOLi4QRHEofWuwBSxQpTu+IuteqYNkW0/vHcILIbVM0LZTW5YtJx8tvnCOZ2ydF4X+xw9w5xFnyNClj3NS/ijszEw/6o7VNdhluEW6j6J+hSPkOACTAaEbQ1GvCPftpleuhIgwelLUWb+PvCG2qxOvGhsy1dxbkueG6xuK2BnIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762430394; c=relaxed/simple;
	bh=Wv2b7E4HArUB8upxLGvCHbdriM/wFMeVKOXWTMbkkQ8=;
	h=To:Subject:From:Message-Id:Date; b=GV7/aPD2hhuUX7lnOneX2zT5wG0U1apKCd3B3eMHJHsGRGUZDLp6fvLqLtLyzvdGE1fMAmM6VQbAhvEut6ccRteQOcqNU0XRRvgf1JVSv7+TTEBIs/Y9BTTl3DLvv2iHGWabBfIDw6i74diRap3Ck29wJdwvwOujwu+mu2RUIno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lxA6P4JG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lxA6P4JG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A683AC4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762430393;
	bh=Wv2b7E4HArUB8upxLGvCHbdriM/wFMeVKOXWTMbkkQ8=;
	h=To:Subject:From:Date:From;
	b=lxA6P4JGKHSx3kk2KU+5OsOUQqBkeedlezalRgdXJ+5ZoSUgELMemgYbxV4vE6tqE
	 IoB66Qq08CwkP1foJQzvCptr/sJC7mXJhmb1I34eF25+0wy/77cleM0EaedUY+lJM3
	 otZiMvj8/053fIYyRYGq2xK0DQdl0aKfC494Kj3gemVM0jzFD5P75TSUo3pjJIKR7w
	 OD4V7DHmWVxx9NS7kX1KsTvjgUJKa05yg5ISFNbqBUZoWGI50pIQ+lVzLW7bfsjNcH
	 zJ/ytvyt9rTOFUz8N8OnExz6BfIjPkPBDNQNEvk0uzigW5OTORTZjkZcWfALxclP+t
	 BVgFBQP/I/Ztw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F19FCCFA05
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176243039357.19320.10288331000139353979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db147d81897dd5ebe4b0caccce6c11d230a072f0cc272ee5e9845c7964b51eb6
Date: Thu, 06 Nov 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762430393
