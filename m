Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 136133090FF
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 12:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765454574; cv=none; b=EZ1ql1mVnAWp6RyZejXe2x4KtPIP4+x2NAFeKRqViDCMOp7poNa5AtfPJFUPvbgp0PTUOxvgo82/N8hMuxsUqKggj3u+1s934gAvqXE89U0uwtDe+nHfED6fqcYvZ85sOrSH0NcByFGFfvjOqbCxegUkuKIyCMKf8PXSZG1bT60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765454574; c=relaxed/simple;
	bh=vkq6vAqZos/U8R41qZn9R7TKROrFyGaK8YE0MNklyPs=;
	h=To:Subject:From:Message-Id:Date; b=QWwWc241XsyfmWP7qQvmZNic4fUVLrom3L/W3nraK4Iiv+yth0Jyl9jmLGkvSF0sZ9RnKbhVmzAVgEtQ5FVtJNHX3Q7w+LuioVgxd03Z0V2FfhXi+372oPailvoQgH+1fqPvvD7uPBE3Pv2ko208T1o607QjV+dUM87vvJ4gp1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DJAL/X1z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DJAL/X1z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1448C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 12:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765454573;
	bh=vkq6vAqZos/U8R41qZn9R7TKROrFyGaK8YE0MNklyPs=;
	h=To:Subject:From:Date:From;
	b=DJAL/X1zs9fGYDr/e0MrcwtjXtBcS9DScr90RIYGcN9nIGXQLdvxQyRxud4KccJhy
	 s6BZvAWZph/uJ/IOMu4zh/LhdJpFTMrgRHY265gytzYeNfJbDTtwn7CgMjHeLu2j7e
	 M0TUJfWF4UUyTYPzdO+a+SPXWUTxbnh8jE+iVZJCn9CWOPA3B67l9hHng/ngkYcuov
	 PWOO0O7N2GGicASGd7S1VX3pJQymma5Or0tETvsWTIcmr0GAp0xIuccBsg7T0HBK8h
	 uNgyy/iDnjL8MRy8u6qxqs1Bs+KV0d8N7YDWvcOdOmHcoSfHw5QozRxmMyW1h7oPDf
	 snTy/rA4Bk39Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9226AD41C1F
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 12:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176545457359.3617.11028647458453296932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de30668f1fa145c084065a8c0663f3e45d4aaa3e3932268ad90c430ce7a28b82
Date: Thu, 11 Dec 2025 12:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765454573
