Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35DD41F8EF6
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745636994; cv=none; b=IORM6Jb2z3iMsGjVysFNqIR1nQxuGDtpQ2+PL2rKIxeuYXKai28eVanMBoRBDdapQdmhwNrUXcMdI7yOwuyul7bpT9jsr0bOR0b2Qde08WRDArnD4H9fHLVkhb40gCWPoi+UGuqZUistjbk0w8GC9lmqfCZ/d4AdTmI82ZJhKTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745636994; c=relaxed/simple;
	bh=hmb51OTg6m3DzowYzXX+/MhG7X6JmyD3hoa1rvHg6Ao=;
	h=To:Subject:From:Message-Id:Date; b=HBs+9f8fK6IKzS/HTeRY3deJ206yejARQurBnUVRTmkllMxSGig+i1HhJEZ8LYmOKySHLBzdm0Cuq7aNuq4/yHFIi+eCwFqk/cp36dTGi5fU25q51z0odBPdFnceEY7qEzr2aLwm7aHE+L0Kria/8XjwXdBrOa2fcIh43qsLOcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LWnuASlo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LWnuASlo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EB6C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745636993;
	bh=hmb51OTg6m3DzowYzXX+/MhG7X6JmyD3hoa1rvHg6Ao=;
	h=To:Subject:From:Date:From;
	b=LWnuASloe0pMOpxj6utXO7bHGrUYvdqN+gOOG5DYCZqNHcc8rXWHKlSVMgH+2Sbo7
	 asdjdAycyylkXURXog8grsf6BFF6hEEkfU61EgSznCJfI7HqeuKNpefj/1m29lkDlg
	 EDVIiWAaZAhi3lrgXHjpYHjpvfglFyIqMMWfkC0z3YH5KYEd2DJByHjeN/UhVpw1mf
	 YaNLuVGwdxoiAHmgbQGYRurpPfdqLsspf3lFzVL2ufrgEbraNdfk4rKcchDjDm3lUa
	 5A4v78KVLOYgNvRl9zg62vi2HbcKnLkI4k45vZmoGKuhsRA7BtyoHbSKmM72yayusp
	 budzxmSn2rEoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFD1C369D3
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174563699358.4099.15038618240847412186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ea081c3ab439d53324490cee60df68cab035f1c6d7f21db316bb72cc8f55356
Date: Sat, 26 Apr 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745636993
