Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 405E0305687
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 04:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783486714; cv=none; b=GZC+WLKAnWzhU3vGMh9UEps1NfhAngiLtVAy2AOHOrTwa4msDhYiZ0fXMM6odYWWPrZwq38tOlZgYEOZKLY5OqTJnewkLSw4nmEjIoumbo5PjZw/QIuRShjiKFSl7LTy448qZFpc+U1cwa3Cd81T7BakuTvZbCc1kbKkDxE5CVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783486714; c=relaxed/simple;
	bh=UxLVCB51ACtTjVH0DFrfyvNlTQQYQyUYYqH61ecx4c0=;
	h=To:Subject:From:Message-Id:Date; b=UQmHFolbfEygBLR7so3+o5DzJ/OL3gSvMvGL7/0FyAczo3DguYT2DDf4DDATUNbHMiyl+XTM3wrIe9wXtnjdbknFZS1/8/FKORATnbWhJ2ZvZotWLaDxebcPkWTBnsWUxcnN8kifm2+YOGgmCRBZlw/fAsTpqk63CGAy2bcTAJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C+S4J9q1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C+S4J9q1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBDA7C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 04:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783486713;
	bh=UxLVCB51ACtTjVH0DFrfyvNlTQQYQyUYYqH61ecx4c0=;
	h=To:Subject:From:Date:From;
	b=C+S4J9q1QzJ7DHwLeC0JWHsf6vQdHNRaLEwMcwj1sWJMI4itqestn7g5xS1IJGTS3
	 ezjgguHUMpucK9Us1u23L5hh7OMxEh1jTSJQRuuyv4ZWUuaFAWJ9DnqrUnRmuLXWXf
	 +BCsfE7EQ/YmAAqaM+tU1cuJtDUtFCIZ66kk6zYWSCDaEGdYiRCo7dMVSwr/PHf2Iy
	 cTYW0F50fSCtjmc4DNl39Zjl2Cy67gziUXIYvxoPaBKf19IDFFKNkQL8Uw9SxiYIqK
	 H6+1qe6o/bCsQVF3bHIA07weYf1EPhJXXL9hJcdNh6YuySgZmmRSse/6WcsLFH92DF
	 yvntc25WSzg7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB776C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 04:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178348671369.25727.4761265048132782288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33bb60b2fa1c5477de556fa124f5c611beb0d97e521916ae49e7b6f3b6b5685f
Date: Wed, 08 Jul 2026 04:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783486713
