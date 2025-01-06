Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA481D63D4
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736149554; cv=none; b=mvD/RIzJBYXjVNPaD9/s5b6USbk3pmVXejhpnI5sJVuJh1WsYuxZr0rCh8esjqDibufIbYn47mHgDYXhT7jhQXV9JHjPG7EttR68yoeYsGLvJzHXFeBGzQCkechMVRL5pRsuiZARS0y0kCKT2ctnbViTUEkXbkbgo/REj4zHcx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736149554; c=relaxed/simple;
	bh=cAoK9fivJAjgDL+L2wNc39euNktwZWr+kCBA6+S/PE4=;
	h=To:Subject:From:Message-Id:Date; b=k6afAAnukyE8F8WUF6nnT/ZgtG3qD4wyrxSWlwVvLQKubFp1GbX5mEVf55FYrcOxdqueuQpUwkU586DhVSjOLrG545XSmtEI8ZHmXO7OxgwwIywStQEUhhMFry28y8U4RrbVL/9sctOwPVQCC1kMhDlDBTN6gqtlaLbD6Rgzg6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y0lapkjR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y0lapkjR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1481C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736149553;
	bh=cAoK9fivJAjgDL+L2wNc39euNktwZWr+kCBA6+S/PE4=;
	h=To:Subject:From:Date:From;
	b=Y0lapkjRVFydPq8ZjBZ6HJSuhlUKZZcIIrHjEHjsf/e7l0oo6OEujS0TipmUiTP73
	 uqgdE0i8FKufQmTD1EP8yponLWUHxKe7f5uhC8DzpW3PzBeHN3rYVSc82cN8bCXm2i
	 gMvXXXxrSG+07iFkeZH+bgrKfjTR+rCq/FlCY55vexewqM5RO1fSH2tATzeBTtyZDM
	 9Xz867eX1zwbJAzurCNSZwZCK67V9x+2aZ2pBvwzkERS35LEaWHLg8iiRbaeodbyJy
	 rAJ2zekIB2AWv+44tbVMacbN8UkIydRYsgxpWzc8tkOzqh+fZN7jWr1hKQsu8oAWqn
	 pCD7Noh+VBBFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E10BE77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173614955357.21538.2272762597719180346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82a38ccf21a9f88142e95544756688dc858a774a7adf3a08c0d499a0f26145f7
Date: Mon, 06 Jan 2025 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736149553
