Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6FB3A1C9
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 01:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771549494; cv=none; b=pBHY1sqA6ut3r29OfXpw3VwogNEQogK+tI3lPYXCda44J7PxdjzNZYYUdD4Yh5sgBP5GAKi6Mhk70aHKSaHoWXEe/ODQ17cIsRl6SVaKTBk9PTDkxxr1JiK/rXtyeUJGEQ5HtUdQoj7B63zjCQv1pmfP5zu19iZoQWYEKYIEQig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771549494; c=relaxed/simple;
	bh=6Lr65Jk4LCqx2GSGQwW49Et0UqYB2NJ81CEMth4Kdjc=;
	h=To:Subject:From:Message-Id:Date; b=hyFefQN/Ztyf2+o57bg7XZjlLOqIXTBCXvlN5equCwp7q8o6YgiFKgGZXvjgePYM/eXdSlEcfRj49lCb2mceuRDnShUZdJOEfQi4Nw58h/rH31wPieahzbhp0HVWWYwFvzU7Iy7G6DM6np2nSygnsuuW80ZqUULKlSTk/jH7nao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g+ePez+J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g+ePez+J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2626C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 01:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771549493;
	bh=6Lr65Jk4LCqx2GSGQwW49Et0UqYB2NJ81CEMth4Kdjc=;
	h=To:Subject:From:Date:From;
	b=g+ePez+JbpmtlNntsaW1L030RjxABv7vRWYzNbXz6Nd48yrirdJKRGEDZQ2RxmAKy
	 8TaT3jGUj2iDcg5SI5dYS8eSC4qdGnHGCX1s3xygUMxBHicSGVu8629vnuYHMONNwj
	 T3S7PRWcbQ8FMmyZSgWzCIVHbZPOAjNOCCpAVmNol/mOnzyFvxEBgyYUbn243ssKib
	 wQmQ0bXszKwxdlcU+c1zP552LT7LjYdH+ehh7bkwW9VSpjluyy2NnTpoJYmU7yhOxQ
	 o1/Qz20c9LzBvalNboLQ9FfHHyMLyJxYnodoVtBorjchTw4lxZR+8OhkLtybvIf5IY
	 tJfhtC8vNPTlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4B43C531F7
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 01:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177154949364.27816.9524874154317138376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e2ba1397e1bac767e954ca34b953a42ce50b8fc92f6302d874b9caa4932965b
Date: Fri, 20 Feb 2026 01:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771549493
