Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 529783F23CA
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 10:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768906434; cv=none; b=cVNbCI/CIYB+HHxgQdh3OsAD/ivJc9XRGGC/nq4Zeim66/ADNu58PjzpP875GXqTR6mhxa1j3Z+9caZ4VTPrzKmoRbNpwsiz7x1Bhe7mIqxyLdHnSZe0pZ1Ep7TDv5fIK6BPQjxbx51p54YtXUJzqW9eUw2mMlQkcQgmOBb10eA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768906434; c=relaxed/simple;
	bh=xhMzrLrceWRX25sGv5gGUurrq23z4H2+TcUGLvIoXzk=;
	h=To:Subject:From:Message-Id:Date; b=I1DapzIjoF/tWl/54d7pS2QrTRGX4jJPdRu/Q2CWFPkhS4j2xvmuDlKREOB7QB/xhUOEVxmSMsQLLgx8FMoLEy3KmaRS7VT7+bid4lwf70nI/y0OofxNWwnYiWQVrdnQKyDDcqHNSk6RjIsJL2q4q5ZMwoNGleFfi5d7HgwdIOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sGOo9i+C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sGOo9i+C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2E1C19424
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768906433;
	bh=xhMzrLrceWRX25sGv5gGUurrq23z4H2+TcUGLvIoXzk=;
	h=To:Subject:From:Date:From;
	b=sGOo9i+C4EN3KC0kYMH6xbAqaXi+QLW73wYJ9AUu84FWAkyPy6CZX9ynm7ln0Ry52
	 5QAMS2+zTbQmmdAwtafE8FChgLPgBkwdFRIiYNtG83lgOmoJoXTLVtsVlbn/DGTnv1
	 zjD/saWz/pDUVVFev/Twz6yB/f0j1kOXrr0epos71UvVKGD/E2TPohgfwY45MoyMxD
	 EDfpsZmR4S6lbSPldIGn+iYRXt5n+h+vlkvY59D11aRBhzda+/7AriJNmJR4uGrsC3
	 MBeKvfK+ptsd6kMEW1CJ/uTWf4ZRimaeRqlXzzGe4j2kTzPDYHdVuSUePNfQzknYnT
	 uQaUi9Nx+E2HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9090ED2ED0F
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 10:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176890643358.646.1366962797881521925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baaf2d826ab469e1221b06eef16d9855e21a8575502480198f32b6e10a6ac179
Date: Tue, 20 Jan 2026 10:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768906433
