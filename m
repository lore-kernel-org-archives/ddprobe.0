Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B560187858
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734997554; cv=none; b=STkWkxHF/wYxWQmwiPxmeKl5Vq0NGEXYN/BCDO+nO9NFBzp3t2bJs/uoCDfUhYXqsTmD5ZpFbDLUZiGJNwDxSAol0AngJDnGXmq3mLd6BObWGOZTGv3dceoC6x6APV666eBl5ZBr6vVeRYGzt/j/nuEo32+RBbFJkwhUHdSswLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734997554; c=relaxed/simple;
	bh=34lPklWZcfPuYeHhtOL65vq2Roi/b8wRl4XY9dXWLgo=;
	h=To:Subject:From:Message-Id:Date; b=CHqsWTW3UAfg8a7nlt36seZZj6EAwbCbJFcgwi+4dVqhGVbdSn2UCkSz4BHS68RVMsXDIMTbqa68EtD8wmwucZmf91f56rpYUHSKusBXXtV6bZNGvqX3Ep0uU29S4/iEFdhGBFSw71SLpEk/H1CDSgdGJzZHscCmGnENbkuZxBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lDPZ1O83; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lDPZ1O83"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2533C4CED3
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734997553;
	bh=34lPklWZcfPuYeHhtOL65vq2Roi/b8wRl4XY9dXWLgo=;
	h=To:Subject:From:Date:From;
	b=lDPZ1O83h8tOhIUR/+oOOzrc3ZAoK+/6O/B9LF+Ig/mbsYKs0f26IX2xQmV83vIhR
	 vyqitCP6htOczRpYmgQFWJ+CEDWjjmVmqNS9Pf68x4ny5cMKharceJJh5DltMF8EqY
	 10JmbTngKe+BjvAsWHjxZ7dH7YQaOi70wTK3Y+6YTdTu/CPZuFgVsDBD+Macy9loJ5
	 IyO8sEFFGgWEAYm5/Ia+m85VbK/Va9uKtr6TZ1PGX3fHNwQJu9C6B4Z96xeHH/aHIu
	 tPyXo1nFCbx3TnwPuQXUbXKpDkdfT1oqJM3Vlur1HYzqU2kRl6h/u71ezYgaLUUIrD
	 TmUD/hhOo0XvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CC6FE7718B
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173499755359.6241.4003714821474737491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3e1f0c080a144479cedb9d89395b2edd754109dc47ac29608a0e58b77be5367
Date: Mon, 23 Dec 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734997553
