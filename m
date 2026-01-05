Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2190057C9F
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 21:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767647034; cv=none; b=DkgkXtPy5iIui1jJkssYtMAKGJ3xyVi8r3ciOnnFxshderFyk9vXismFAHEkYzsyFQi3pWauEBX2zDxSZ43tEz5RyNyCTXikdYBvHXEXz8sMl+u/6llUo4Y19dP6Epxyb9ID6/5pOYObNq5w0TutxZT0XQCcQ2vHZU2jJVG2QXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767647034; c=relaxed/simple;
	bh=toE+KVbPYZ7vTdxUGw1kCABt8xGsqf3sy4NqZ/kAqVg=;
	h=To:Subject:From:Message-Id:Date; b=R3H32hZJVnt7cr0EGoDmsMN7IWik0ky6jQLcCh8dRSPIteo4/1V2x7r//emvWmeImW2cy682bgI7w6D2tfVrFy9mUzT/R7dRsbJm+5A0RSQSku4hMEWhm1A07UMHuJG4ifb0wm9nGweDJFu4udSGYvD+5lUKYXQMK41VVpKMCBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z1hIuYXu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z1hIuYXu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B14A9C116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 21:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767647033;
	bh=toE+KVbPYZ7vTdxUGw1kCABt8xGsqf3sy4NqZ/kAqVg=;
	h=To:Subject:From:Date:From;
	b=Z1hIuYXugwauz9CL9woGV0xgoD50FC3sXQR0DhbIwEE95WAocb576qeTJleRj/Y6X
	 +97J/XfiH/2dsEWilsQ0EmtmnA7alawVBLSkcpVB4kgMQ34rgZ7SsnP04ghcuJMoDi
	 uIRbuuVAttOJo6pqaqOrMiLgqAWjl2RvGX/pnJ20QzMUooUPEDjSYMJR+TyYVVYesD
	 Goau6gKI8ZXaJd/vFpQlEkpy73f58DziBpR8fxjlZWrHJ1XB7pe7quAp+ZNRoyVAaV
	 M00gXVhOStXyBflI0ApNN2WzZnwrLArWZlOW2MNa5jHhp9mflxAjEGDCDoUsTIpY01
	 C4wyeGfDkVdvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E184CD0405
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 21:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176764703363.13466.12524444380759790861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18550aad4a61d13d8e690f36a5833739ab91de33fb6b1fa329196fd551a436cf
Date: Mon, 05 Jan 2026 21:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767647033
