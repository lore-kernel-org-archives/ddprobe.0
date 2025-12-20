Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2801B4244
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 00:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766191434; cv=none; b=KTLzZ59x/iY4rT0M0sjQseYY9niXdudgG7oBG+r+irnXOXEPxxF8l/ocsghW4aLUM0+E7fjJe1Hba5w3p4p/mIeQSB214dkgUk3ULA6Eu/OJlCjUTCO5noY8ZomrwUXMelXHRUGX7jnILxuLfqWoPcYlrh1DDtITP+4kSl9J2uE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766191434; c=relaxed/simple;
	bh=CKgayoIlvcvBWuafQpHt3iYAeS68cFd6bWUCV3nr7dY=;
	h=To:Subject:From:Message-Id:Date; b=oofRPYDEn2Irq8q3kITPwJHpujpscMB0fF4un8DeIF74awogoqR+4RQfhZw1ugshVdx+iM9u03wzgm2i6Aojpn3HrFM1uTTMRemVX2yykElQ0xNM81pI5CQMSbWhTD0Kr7lnp7yhmCGP36dUOlnD+hPZ7QyvkjdS//J3egf3t5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vDSZIabw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vDSZIabw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4061C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 00:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766191433;
	bh=CKgayoIlvcvBWuafQpHt3iYAeS68cFd6bWUCV3nr7dY=;
	h=To:Subject:From:Date:From;
	b=vDSZIabwMgIFEHnYHFkuOeH9INgLQQoo1wg7ZasTespWQMzgeZwsrkOBUOJ99q1do
	 +OaGMr5QT/2ZTmlOTabdUcuj7uWbCzfa7TSlt/tbvovSwU/SoJSNW9Y8j8OyliNw9x
	 JY1+5SF+Uhot+zXXeQJ2GClDFf9Gx6Wm0WyqIZ2c9AgFsDbuuC7JpsBCrAx/i7cLTF
	 37RqGuN/AYmrVsPWZdacnRAFtzv6Z1kFPWKkH4OAD1ggkSwNlvDJlys+qGDh9Q6VlK
	 YZ+Eykf4ugcYB1V++lKVNyi2e+J7YcKI0kcWyDae1kFbcYsKAPw0dHQagKjIDUu1kB
	 JeJaSOjfSx8og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D84E668AC
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 00:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176619143358.32745.14154624484110417009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc2aeea14bdaffd861a270b91eb40ebbf0ef56bea08050cbd0bb82b785df8f9a
Date: Sat, 20 Dec 2025 00:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766191433
