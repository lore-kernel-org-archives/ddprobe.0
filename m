Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 035A51C4A20
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 01:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766021034; cv=none; b=AdVfJkDruTxO9FFcbjpRPRX/gBw7mj9B5W3yNG8a8LCChWOjhDb0vYffuTE1P64r0AfMwdq1Q77tvauYt3DPwrgSMAYkhSBoPzD7w65xbdDoq+3/ZfCFVr9RUPBh5BFll4QP9Krc+ozDSYo0Dq/2U4ywf+m9PBOliiBMv3yPy20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766021034; c=relaxed/simple;
	bh=4VMrHA12mRCWk8IeTl+mQ7bclBxpaJpZM26YyCl9jw0=;
	h=To:Subject:From:Message-Id:Date; b=lLCkhbRBTo2iLQSw4v3UBagfbOfNsRIpHqv1jN/pBZYIaoD9HM8gA34XJ/cr1jjYXcXkB5qYJSVTDud80+sRrLNW5RY6o4BKhIBvvbs462MV9eW6gb9uAGDrXFnBIUsw+kkJw/1LATUmoEL0SP0xBgGso2dIgJCfxJ+oVO21wt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CrgzmSIk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CrgzmSIk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A865BC4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 01:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766021033;
	bh=4VMrHA12mRCWk8IeTl+mQ7bclBxpaJpZM26YyCl9jw0=;
	h=To:Subject:From:Date:From;
	b=CrgzmSIkvd5JBbfbZVfq0gZzU6565Py8/PUraxoLidR/DTwQbX5aRT+2Y3bUK2af1
	 3YqkFGlsSynLmXZPyaxpMNn/HCqoT+EQgtGHhdyOiaXqVnArbPStRUF9BMeJ45PKqQ
	 Z/rDIqkcrMPqsqypk+9iUFd79nFBcsEZUDRIoBLEnfZbUw8xk0gRwfB7bQu9R4qKxo
	 GdRGwQo68k6zDHa4lbK6qAUSYBqcrTOCb0AZwXKYjxUgj+LZEbr6MhV7G04DbO+Bh5
	 kjvcbSFypqN6ckELOYu8JU9EKO8rC0YPvi1FfrRVVbpmqc5Phx5VRiEyN4bjw3niO5
	 zNuuhuOIn/LeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D60D68BC9
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 01:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176602103359.23300.5251796773459044395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f02c4e96a5235d1b9404c19ffd76c0891d9828ba1bd8149df48cb7cb6ba8e07
Date: Thu, 18 Dec 2025 01:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766021033
