Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420AA72630
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785051634; cv=none; b=T3DxL77TfEiaWRjk5OrlH9edhRqfgO0W3bWOM7bRA4P9BxoKkpZOjX74f2iHAvEAO65FlN3rLchoJ+cYpIbJZhREt8Yl31A2hVN3sG4Ohz36PLP+gdQ49rZRTzDY2oYSDWBQ/F4Q5lupd9su5VEnEjGZ+caKGr7unJIIsmUvTdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785051634; c=relaxed/simple;
	bh=X9ZwB9lYTQNEsdSBjNQamV1iRKfHwijS6XQ1UYrlDLg=;
	h=To:Subject:From:Message-Id:Date; b=JEHohQ1p7yYU6PR5P7I/OMrN+jRrgsuYQGNMVOGm1oeT68bALqIPPmCLWxfwq9+3SxZC+UHTp6eMcjFKHdATWtc+RCeiPACZn3s09NHGXo28qANxtyECQUE/943BTggxvZTBsDEelM8xHdd/7xz6UdNBh8cpGfOFdTuDvzAS4g0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cIFJoz3O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cIFJoz3O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF708C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785051633;
	bh=X9ZwB9lYTQNEsdSBjNQamV1iRKfHwijS6XQ1UYrlDLg=;
	h=To:Subject:From:Date:From;
	b=cIFJoz3OtVkvUlIT/M4erjrXQlybr41R+4RNrZoNx19yDNms3jX0obhpDIkOQAYzI
	 9Zz/FkQtv78lDjBMdNA51dRkCSSmJwxpc9hCoHf4KjDukAXvOaTF7nwt9QW8usNR8n
	 SD4+P28Aybw6aQurWLEXVGumQPKEZpk/IEYP67HcpA5R94eR6OHIht5TR4XyeDwlc7
	 K3r0EcRSH0gLY+b4cymSlcLy7WWvEtrUJJ2NoHANWuRSBn/Pa7MMwa5WjMhGHflg8M
	 EapEv37rEc1YP+a0WNUMziy5auFjDlgBob9WPUFvh+Xp6V3owQxni/U88DrbNuVS2T
	 wrBTMYQVAD9HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD2D1C531CC
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178505163367.26208.11191906347150849535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f25aa9a45e7671f10471990317bd6fb7b0bfa972423e40e34ba0e871467328e
Date: Sun, 26 Jul 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785051633
