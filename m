Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 400FD2581
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750658394; cv=none; b=CGxfgqma7lQrIZtNJ2cAolZkq3TDVGza6TD3R46xTomGaDNlfxKpr6BRV7QeY4wY/fmgidGGNIXFK2tywtw4Rq+VQWAk2MYeS9hu9sV/9FsVt5sn/gd5UBFbH1LIwWoS92IejyALZ6JET++5SOcksUEZP1xrorPa9E/9ANS0LDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750658394; c=relaxed/simple;
	bh=ib4QKYazOc/vly7Fsx6ND51pPH+Oz0SnudWEcswODlw=;
	h=To:Subject:From:Message-Id:Date; b=a2Yu0yd56uOVfBPOpH3Q+8B+u94BrPGZX1SGi0Oba0xJLsOuJxCyKgKTMyZTkDr+/7mCOKiDPATXZrGlUzE6/C1xh32EQs2AHl98rWrqEKrNmn/0PgJohwq8W7uqhkt2b3T3ubb4jKycp6Qtwhh8vyUZYr7E52l669I9Ki9wJ0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ibJ286oJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ibJ286oJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24B4C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750658393;
	bh=ib4QKYazOc/vly7Fsx6ND51pPH+Oz0SnudWEcswODlw=;
	h=To:Subject:From:Date:From;
	b=ibJ286oJICUJ3lJaFeYOB0MYnSKT6ATqMQaHJPranttxGvNvqiiAgFEX/ydPGY7IH
	 8XdqbueHddtGtxNwYW+848QRx+dCTtNfw/z3XIEFpqId/IfJiok877ElFLuyIZ/zDO
	 H59ugf9IvGdV7EveFpwiYATHvFSkYqsLPOyr6YvBcI9GKc0Z6U5G5kbGWmuk7cTQQB
	 qLfkQZ9uW67dVFitrs9WYAPlJgwRrs2jVBKEgZywM1a2Hq0rCZXk4mMba3Bte3A7ir
	 PmGBzMvaeMGEbAoyptkLHiNWd/e5PHKqeB4APrJVgjjCXYPvY4B4cOiXk8xlS8aklu
	 AW8AHPpJb17Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E63CC7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175065839357.4432.758237125292292953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e382273ee8eb820d0210ce3b41ac078d5c9b1a5942d0dfc9cb7e37256659d1df
Date: Mon, 23 Jun 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750658393
