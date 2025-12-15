Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235E31E0DD8
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 11:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765797775; cv=none; b=gPCXWDMnzKgfIG+NyUFqcgld7Sxuht+XQLHuoptX6iP9r+dtPCksWm+zt5qqCPhf8db0DRkeyKGjd+/OsCS9V8npGwBxmzTSB6VyEn09ptaACtrXUUG52C67kYXUHebjNLi687OMto89lzC5kzO4aTiQ/8AXUVvMDiFI4iR/ghY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765797775; c=relaxed/simple;
	bh=jMJX+86r51DF/l5bvFjHc+E8EqSk3unzpIqVfzSc9Yk=;
	h=To:Subject:From:Message-Id:Date; b=RmAe4FnAmqo0mYoBnJwmKojms/TFrzLUrPRT+++/EeUKL9P47fNyR8rlP/2KUZzoFSEdg9LwVI34xRh4IsFA8WFmb0kmK/TrlZoeBLb9JvcW0uVM6i+SciNA0gbcfJNeCBZwZyKI9sGRgBi/H6HWG1RAcN/HIFVZpdUhWC0GqYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LlffmYA5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LlffmYA5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB716C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 11:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765797773;
	bh=jMJX+86r51DF/l5bvFjHc+E8EqSk3unzpIqVfzSc9Yk=;
	h=To:Subject:From:Date:From;
	b=LlffmYA5NE2+SGF1vfvAncwHszLF6jzuFlQ3PXQbczxe53lOe1kIdrqmB4wZgcuzP
	 NS/KQq6yH7h9B6rile8W7+Q1dC0+qIkNRQhgfIS4epmxdjLy5JhsFrieqzroHPymEQ
	 JlVeUigFvrsYaqLltRD+0TMYm4hIuIpFAYFqSSwqzoo/ajtG3Uq3NRwy5TSK7efSoD
	 p0yQZhzTaW4H0sciSAWAsyGH38N38W2dTCq8PjZf7IXyaPJamRgvK0MXWK5zMJKLiI
	 QSDQz6bb2hWS4/DR54VDzdnxqTLERwShmwgGa93KLQhJWJ/5uxkrg7K5NAI8nz1tIH
	 D4kQmiWn0OJLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9581CD59D99
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 11:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176579777360.23750.7101335057920761065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1617770f8b1c8dfdfdb67028db8615d4f1e39e57471ff5af78919ab5d643a0c
Date: Mon, 15 Dec 2025 11:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765797773
