Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB7B847B
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749692394; cv=none; b=fKm0yxq8cTw73NZbwdAlYPfL9Bi0hnvsbYalOJwuc6HI1wfiRxHpVMU6bpmg3orVqXb8S0+74MysfhwfAi/WeXmcV9HxBVeE36IY9rlWG1sayjzBZvpt/zIStFrgxSbZJDBoxRU9cEB3BtPLuOkIsrGIX+ZQouIfJ9t6BIGbnfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749692394; c=relaxed/simple;
	bh=RoXpO6DEwWA7QClKC5lW13jjKvcllCrMrHba+XEmab4=;
	h=To:Subject:From:Message-Id:Date; b=KYWq99Ugtfn6sglRdy4c0HNwyfhuMcww42TgnB0ZXTFD/dBbIFk3iA6UZ9kO4uBHiTI10dkNicIPos65IR/TzWozyuY40kV8hfCzfuaORg0AvObXqpSgc5/S/MN+4c5W7DUMnmtFSPZ+4EDa2ae6H1FTaHKx1RwY16C9MhRZbbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NciaaWgL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NciaaWgL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6731C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749692393;
	bh=RoXpO6DEwWA7QClKC5lW13jjKvcllCrMrHba+XEmab4=;
	h=To:Subject:From:Date:From;
	b=NciaaWgLef1r9244Ev5amGA0a22JO6VPJmK2Cda+PVY1JwZ7I2UlNQ9xqFXA6kswy
	 XGU1M1F2ao10u8WNB8jmgPE+ebSpxaAtShdXfUnzZ72PIqknxf90yGYj4WMliUS1MF
	 fmvvc9Tk9gM27NjIRVpaPRIjdqn8V8JZquDNDzrp96Z/M3mbG89K9cWQUqztGd0qKy
	 1XQRK0XITLSBZVe0ToaM2NLPNXhAF/FfJ6JlD3YFGs6GTQxXlf/1U/bMv3EJKiCO9y
	 Hqe7Dt2bkapQLpYP9zKIPnLtYIYwQzWHpOaQF8l+JEpR1iKftL0/Q8MS86m+WGcGif
	 1wob6nYqamh9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918D4C71136
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174969239358.5450.17393781946478402591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 518b0cc98e8dfbc68c2a4b91e9e75eb3c912b9413ab06e47d1eaba97585b91b5
Date: Thu, 12 Jun 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749692393
