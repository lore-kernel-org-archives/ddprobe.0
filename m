Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FF1A1E5705
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745257794; cv=none; b=pnITaOLg4XCSPV7uFitbq8LDSaYWGGutqDzb7iHgilYlkTDxhULpVMaWQosDTx6pc/OZ8n3vxdMl1OFEVSmS7Czxanssv0FRBQp7TlvD01PT3MRB8IjSrVIQraiR0BHefUi+aCeBSeGAbkIkXYqTrVSr3Fz6bnX29TSkxdrHF5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745257794; c=relaxed/simple;
	bh=kul1FSGS9wb+FdXRQE03PpFN4KW+Ac9bqOaB7+B2FKo=;
	h=To:Subject:From:Message-Id:Date; b=hZl00l3tTDyjqCNBJsn419zuAbxqFnYB68N1Efs5ceJfyL5vfGlvFqED+rlifql/avQwwOxQg47SAzrXZxqFxhfQZWPIzmrbSsAnBaMzHpuRemezjP8/E6pQ0HaKQl+Xuw0T3N3VR0SWC9k+fVyHXYRZTmLDOPn5LgQPlJlmc1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hoG2bSaV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hoG2bSaV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC07C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745257793;
	bh=kul1FSGS9wb+FdXRQE03PpFN4KW+Ac9bqOaB7+B2FKo=;
	h=To:Subject:From:Date:From;
	b=hoG2bSaVWHZH4ymfoqPvLv4U6HXvuJnwMAlzOVlW8XH6cQT+j483Zs5HJqjpMmQRR
	 ynMYf+7k/e1IeqVGjX6bQTeYcZBuBye0JZBj/e9ijg0F3bBYtcWbxLJICpNANM31/v
	 wRb1AjC1vPlT0OilgBNJRA3DjIQa1SI7hIo4RiDloT/LSEMgXw4mWFUWYFhdhYox51
	 D+pAu4a+9rUPn37+AWoCa6QVVRFhQ8Kxmcri2mOTK4+NPBP5EtoDTLH6QQtJHKXtVa
	 Yq4WNZU5N18SWD1D2aXRshK3gKqk4FSMk2fMR0wV9lo+YXbuEO62I33CTsZ2HA8JJx
	 qlyHYvOaruGvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B8CC369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174525779358.9751.14583184978107184964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18a274da5df6cb7b62d2c3d45a9cc17c2bc2b7f7fb532c072c36774626b2dfda
Date: Mon, 21 Apr 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745257793
