Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5242E28FA
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 04:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721019203; cv=none; b=fChwXKhc8Z2UELRf3icO/7oY8Vn8Am/0f021L+jCrJ8sAbs6EgEPRfthfjUlXlr4QxyKc/ohFKIkvQ3y/gSLtMPVkLLobmTkeilHfPP3lOlrfZhW/Lh8Zx38E5TJVxzHebK8y42DThncehwTAkTwZVQvSstGzb/aKU6E8VEUQVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721019203; c=relaxed/simple;
	bh=Q/PR0f8fEz6YGnpBQ4QX1xXnarFLHV2IIZ8L705GyQg=;
	h=To:Subject:From:Message-Id:Date; b=cwPodebqvA0WUznXNnlk1UMEDwf7PvN78zO2IH+FqUT3wkhoxnADEtcLxobWLLiH1A6RBJOPckyCC49r+dbNvBOAth1nddNAvc1PZBomxyVGFhMjNRfr3QkkjdiSNeHBknL/qAtnj4qPP/vPBVuW6w59Ccf6BozkuGvXO0PT93g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OWOCjmy2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OWOCjmy2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EED3BC4AF0A
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 04:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721019203;
	bh=Q/PR0f8fEz6YGnpBQ4QX1xXnarFLHV2IIZ8L705GyQg=;
	h=To:Subject:From:Date:From;
	b=OWOCjmy2+tPsVWrbX+LHipja6YLxae6bwA9HGj9+SHVUBBzlpETlZhrj2hvfRnPEk
	 0ADb941if9+gvW0FWovWGGxVpfJjoOoRf3yHAqfF7g3b/ZU4xpVqH63FSRRz1kR/al
	 8xCv5Sqw1JeJjPpnKzPcoC0ONjFocE3XWlZ1wcJ6snjUKshlW4B3UBP6Gx1x7mzYVD
	 7pC5jam2t9YMrCQJ8j6RhJAt3qY51JY9tyeFM8Xst3gtxklSA6iou1+Yd4DoNLs223
	 TgEaZdYV61w+dmFA4y4QZW9V+cqESYSDt+lVHo9HtuhcX8tIsZVFFYVpY+pYNUyo9j
	 A3D3L1YxewxVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1BD8C2BD09
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 04:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172101920284.7298.2776730407295851084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c588c88b24b439b1633f98674f58f9a01f698bdeb94331b0df3d03e328a7582c
Date: Mon, 15 Jul 2024 04:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721019202
