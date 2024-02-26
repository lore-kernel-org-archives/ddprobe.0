Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E96855B5AC
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 11:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708948697; cv=none; b=lEDz5+41CJox2QotgdX0LnuDvu2hVJHtOUSf8Yo7LLot0eRmUfqo8q4fB+mAcHP1ceFLBuOOdwXT9m4PW3bHMn9yecYxFNDn+b0+nbTW+nI42ZB6/2oXSpiItsCBGLP+AUFymSAnW0M1NsfrKnG/g6p5r0FJkYJVeP0pJ1JGz7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708948697; c=relaxed/simple;
	bh=hU8lBuQQSDUeBpOKUDM36mq6zbMyivSCuh9WYnekR6k=;
	h=To:Subject:From:Message-Id:Date; b=DOiCXxVtfWKtAHu2xyrZw5MatqGMoWmWo0JEGAnKPJYrwiNHO1ywzdtPO9UEYSgdgvHqG7x8rNXuJrNxWD8Q20O2VXpadMwy4iCpudr9yb+QdjVryi4Y3NvneGpj3CKL5sze2SK3C8oc2tg7z/0+A7do74USBFEW1gaWaBYd1jc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SjL+R9Z5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SjL+R9Z5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86300C433C7
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 11:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708948696;
	bh=hU8lBuQQSDUeBpOKUDM36mq6zbMyivSCuh9WYnekR6k=;
	h=To:Subject:From:Date:From;
	b=SjL+R9Z5BuW0+HBXOCPpmBESNuaZDbqL6tKLX0Tmhj66PI9JcfL4+7Yiqnf/Lfpou
	 OTUhDs1ynk41ZMXuYOQ3yHVgKdbpPNMR2r7ndx5cf2Yqf44ok5V4zbpWyuxIV6xpYY
	 qxJFc/Hnv97JYuxIegW7Q6iC7/Jz0dmTyEp6zB7X5qlxj8x+8bfzxU6N0AmHaNJYeP
	 kiGDuhWGuvbURmsuNukLNrXqbq1ffIHU/5OzEIbUwF0SnkKpVl+mcXnJq4nM/IT7uN
	 qM0IV2nxu1Xr2xTJ+gzvHvmyRswrgKCtBjU6cunxEfvFmE+FD+6gMbbDy4Z8clI+1i
	 2TSYHbYRtTtPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69C40C48BF6
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 11:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170894869642.9735.3374611323225803300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01e86daac15ce49a6350ec64056127130d0947e2e5e9791967be9976c043a91f
Date: Mon, 26 Feb 2024 11:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708948696
