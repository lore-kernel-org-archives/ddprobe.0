Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2400917A5BE
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752763794; cv=none; b=RZm65DWBEco1lR3lLdbNm9SpjyyWSLYhkod4/4kPUYzhmeLuOPMUlbqKea714GnoM/Rkk+oKyJ36JAO+cUDsay6zyynidGMGQyM0hB9RUW0493mA5UfI0ilyYlFZ8dVPI2ne5wCyWzOco4XR6j9bvDDHdyfGUpnD6yebwBd8OH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752763794; c=relaxed/simple;
	bh=HJV79ByooKJJm+5obwo3VGhL9T0HAagwwrNDZ+aVdmM=;
	h=To:Subject:From:Message-Id:Date; b=EtZG3jgYTEl3Y5F9T7qg1gBDnNEGDmP6EwZK6sLCS0BncaUrxPOjHI3lj7shpTd8tty068dnEPwkQU3BT+OIQIw/XIH+yZ6AEC17m/bEOJ7DO99zA2rLoEkA7QO93g6j8mOWQmuxDYsni8vc4mYXrscjYB2TFHtpsr7aCMIwS8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dn6O5Fd+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dn6O5Fd+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ECECC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752763793;
	bh=HJV79ByooKJJm+5obwo3VGhL9T0HAagwwrNDZ+aVdmM=;
	h=To:Subject:From:Date:From;
	b=dn6O5Fd+Ie8RWpNRQyUCmgCABMxw9F8OrhKr0iBBAKMew9cNgYHxDL0ku6IgcsFuG
	 9Qg+ep7CzSrArlUZAnO1UXIZNl/nBKpK6vXNEeZ/d/3XyglsNcQtl7LSeYSYzd8CLr
	 B7X4J13Ey/k3YQid4+X4JkLSZcyDNfb/NlcZwYCvdZRIkZKljAjnaFh57wpvUz0P7Q
	 zwUS/p1duizIbEt7V9+mg8zaGrJooDmAnLfzt2j2wtZrk87zF8s6tbdnzXpDVTZSIm
	 8lfYA1wdyPVomdDp5D8cOvAw1ixeUTHvcjJqfmHyf/qCyG6yCNHSc+2UzAlqY/dImI
	 YMItVVoTz0ilg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E69EC83F1A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175276379357.14970.16764465902783994851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e98e45a6818e2931202014217947d6e0ab7aa9abde9d296259dd61998ee9700
Date: Thu, 17 Jul 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752763793
