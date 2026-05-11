Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304AA28C869
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 23:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778541034; cv=none; b=Lu8vdsLBBAgrt3zshg82h6z4x9sNm4OlqFl1nahNC1o08GQdZu+yaqZ5xPNxKjksZW+6DrxbVQ5OVOjDIUTUpIpefPOn18X3gjsCwQM7zG+I2UcI9mh7mPfbokQogRiVy6S/RgNUULzRddmx/ipVNQwGs79p6SkyQCfFOBjf3Jo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778541034; c=relaxed/simple;
	bh=nyUj8rXB4Yw2WJHtEHUTYg6kEhE9BbsoMHQWYnRNPk4=;
	h=To:Subject:From:Message-Id:Date; b=bsqop4hgXkP54p4sAnp4ZBuPuyMliZog9J5jryEy+rrEa/7UvCraQ+3yq17MNTCY0KewV0znefigSW8DGK9oxw7Grto1ZEKRLlTuaxyCISYSwphRRxYCCmN0T8/8OLNzXTYDlp21vqjcM2BawQGq6KfjPLHAOCcI+bsLvqu3Iy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LJVNHkkG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LJVNHkkG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8DD2C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778541033;
	bh=nyUj8rXB4Yw2WJHtEHUTYg6kEhE9BbsoMHQWYnRNPk4=;
	h=To:Subject:From:Date:From;
	b=LJVNHkkGWtKW+c8/yF4q5bQcoOuar/RB/86GOhOROSk3hj8tQ3k89e1+W5rQK/8QN
	 bjuKYXJonvnQYXv8jXvAWCXaawtJAK5JBaAYouHQrxVilrSWgTxn5vap50fidZTnJM
	 ZzTiTfK2dTcH7+I8/JZ/6vD5tgJLMEKSoC1Qt1JrblM5ISrj30xmJjUyYj4QyI/k2z
	 GoAIqTZFfRWXYco6NkWnCasZOPg0dEY8Yhf5Snc6kyDu0BYRXfexm93MMlnmXgGvCF
	 hSUTq7MKP9ursxm9hbG5/aZQ72nmsiaoqzD4H4/YaGzC2V09gGLOjQWilsMPLvghIH
	 /fBnmnJZVB5UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FF4CD37BE
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177854103368.21783.13710779922189099481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a5d499826e8df1dcd6b11e8df5aa8007907127a02e9e740d77c287f0c255d5f
Date: Mon, 11 May 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778541033
