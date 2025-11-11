Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A3821F03D2
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762852194; cv=none; b=iQ+MHy96wUjhjKTAxB8DUL3C4ASm6cr7kDHAQm4n4847HrnmZMBUpXk0UHSvawb+dKUHah+33sAMZbaJ55m7EpHPpKnoWvgyN+s0bYFO1dP5RYrf1jnnIzX+ofacG1S6uH2nAwA6AWtZXfsqqnlaif7e1l4xr7bSuLyme38xwgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762852194; c=relaxed/simple;
	bh=cYqygPE2jst46iMTw8JS5QtPGgp7ZSagJ5XULEOzzOk=;
	h=To:Subject:From:Message-Id:Date; b=hoIi8+qzIHUr20Rl3l1HrYJxPBLGG2MT+AoCHVVkBSNpdFuuSngGSwJI+N7ShOxqrP0HyGZxWbFvtRk0IsZrNv+iH4B09C9B7VnIBQ4gFjjxQbl30zIoMjbJWHkLB+7LxJvUxEGQsiGpF1jvhNxE+uZjrTbMQ2gAfFkoPh88UCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SvHpnl6F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SvHpnl6F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A793DC19421
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762852193;
	bh=cYqygPE2jst46iMTw8JS5QtPGgp7ZSagJ5XULEOzzOk=;
	h=To:Subject:From:Date:From;
	b=SvHpnl6FyJuKB0UY7hfCk1CuY2EYS0Jy0zAsU/BwyShTB0ErO/JyhYdlOUssMIgWV
	 m+AI20eIAZvrQuzpZ+x4Y2YO1ZqXnpQ24U2KcO2xdcRKsQo5HUzKfAhOVuBwYQwcb9
	 6b9KzyJ+XMuHmSSYOzUYv8Tv6crn1CNlpzp+iquq/Zd3TcZZJodM7mDm282XSa/nNn
	 Dn8lnTww7pDx/iS8mZEdWjqgJdeqgMMWhwFgPoGSioq5ZLDcaIMOSirZj8SJ1Cv0Bx
	 EH947Pyrk5DAIWIvhLhi3flVsZdWgmCvXgn4ex4Cg0nuf8gKbT02bnJsySaSC94zLy
	 A/5QBppOPNwLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A244CCF9E3
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176285219362.13502.18182595422370581722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0d0f643860e5652fd00a97138895710809c14b2373f0f6ff844dbd912e2b199
Date: Tue, 11 Nov 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762852193
