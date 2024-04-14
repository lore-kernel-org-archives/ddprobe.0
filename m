Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50C872C9D
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 04:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713067763; cv=none; b=tpus9Z45XiLO0KYDSW/hY1SXhbLvWufFFXUY7u1mB3C7VYmYMdSJ4mR0/kCxnY6gmMOmv76ShP9I07JNM2TM7sCVty3Kj5Uyn+PLV00CR+qxD7k0NWzQ2kW1ECecuUyw3JSnDSEi5dHWBeKxfVX5Ld15TdyBfyqAmHs7h+kt1YE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713067763; c=relaxed/simple;
	bh=rTji+2OGVOJ4xRTOm4kdUooRUsc3Ke22AujhMW4hOMY=;
	h=To:Subject:From:Message-Id:Date; b=FNGA3gXxy+S+8OHitJAJuOPlUc3o7IECOnTScTgKxDbqeGqMpok6014JMZx9bzWJ9CiggL7+g0E28JcoIqDANfnIk6OKSVojdOYsF2oucTPaPTgPABFqD9fPA3tsk/J6f21kpSFIUdOVvig9yTmS4tvh6W1nz7Vco8TWnh48vG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rKEM11bq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rKEM11bq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D376FC072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 04:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713067762;
	bh=rTji+2OGVOJ4xRTOm4kdUooRUsc3Ke22AujhMW4hOMY=;
	h=To:Subject:From:Date:From;
	b=rKEM11bq9mnco9swmFTQ/jJQs5DUbE7lmOGNz4YG0rTkzQz/A5oI8o04UJokWwTF+
	 Hwylw4CYBeItqYTEM+w3Nt/P7LY1al6tdQZNQTeZqCWxCvtxgnsAzOFk5ybjZvxGrO
	 +N2kcOo55edR0nT907ckuGWaJCqREAK9K/Gk1he/hXNSKiJOfoxO6RZ10b6CwopNUL
	 hfIIhKKfD2eRBthg2fe9xOypVX8GhtJuweZelwL3h9IpKq+n3GR0UY8082xCkiQQvP
	 l7SZoIGO9mUMTIUC471fo2KmfNV3qZXBtMFIhIrBhbjegX2QJdUFeIzJKS9zIvFakC
	 cJnwK6Rbv74pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF565C4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 04:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171306776275.26503.928167415180099556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8064035dd78e2441e45fab914e3e58aebc823214ac997528268298ffca275ab
Date: Sun, 14 Apr 2024 04:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713067762
