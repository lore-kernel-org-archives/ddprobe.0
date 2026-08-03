Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD1A2727EB
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785748234; cv=none; b=pl2ivjOIC3pivPHZ1UzxAINPwHKYEZsRA083bGlJorh6Hol+hGKif3NQvqaF6UHjlFhm+zDB9b7AYsEzb9LUysg6PfSM8Euw9Bn9XVZwZkWXEejz0wmphKXWsCZZFqQnm87V9tjcqQQJjYbAwFJQtbgXB+x6XddA9WL3cCvH9/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785748234; c=relaxed/simple;
	bh=xiPFqI8OtzhY/gQCv1e0aQrCCcNx520QoU1xQK+fzbs=;
	h=To:Subject:From:Message-Id:Date; b=Xuy7ju/RntwL6JURdl5g/4sRSrnHWdynmAqUWYWLXs+8Vx1fwGbA4ZE+4DU77utiTHnO+RDqNt7s1tZGhbLnC8NJPnl93zRRtez4mFFHAmyKSSdH4dX9AgxrL8TOdLvRhMtOFerVKEu9vBG/+MzzY0e5RHota9FaDZ1K0PFYg7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CVkLdmlb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CVkLdmlb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9BA0C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785748233;
	bh=xiPFqI8OtzhY/gQCv1e0aQrCCcNx520QoU1xQK+fzbs=;
	h=To:Subject:From:Date:From;
	b=CVkLdmlbzC8YJeWSG4IRhj26D44Ynv4weRHhzaAAi8iGHyT0a7Xu3zRlFieQ07/3i
	 MYtOUSesyhgcSz91VOGCkPmX50k9IBbkN6yWtbUkNaLtRiuMKXNUHoG7ne7hl+dOTk
	 XgE8Bvzrc2368KHdxv+7hE9Eh1xVCXjBioFT3L+sCJjxVzFX9NkW4VUXrH63TB1RY/
	 lCE+cI6xzLDxhnvL5dQCxFPE7P/QU3JWBAvncKrFzSKnJuUKXLrir/OoNRGvBqO057
	 asusdNlr0fSXaa/xGkjdjojPVCRiDJffg3+VOmL1LxTTwKpXsuv+7XjmOmzy2/0uQI
	 qm8q2yZJmInqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDEEC55175
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178574823369.10202.16606545479908611051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7f3380f86baa013bf9560d56b3be2700e133144e9db48575c2d7feef3e96dd4
Date: Mon, 03 Aug 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785748233
