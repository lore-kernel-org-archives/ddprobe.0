Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204FF1E5710
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756067394; cv=none; b=KPVU5bHgZj7/uyLRtsjGYsITujiqEbepWBIuZR2wafSve12CMXKSJ5c+RlynZqjwGV15m5aCaSmwfASDUXxZ/Q/7wDr15n1ZPa1y7NqTeJsTQX6y2nN93BC11QSaRs+yCawoDaLir5S+fI4ul9JBnFjIT5E//mnJAnLp7SuM/38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756067394; c=relaxed/simple;
	bh=G35OknwJD464nKzDDuZzHJ78gWxdYMJrn8CkjWAHJ+4=;
	h=To:Subject:From:Message-Id:Date; b=gTVcpUZvxOkyDiKz6MTti+Kv+Hjw9GD0/0J9IvO4wrUuMokkYxURXbc7BFP0x+naeDvwe7PKoX+1gCqmEU2gpg9VcK49g86UPNAUb7qB3B+m1W/Hk/QxDyKKIxKXBgz+UGXf/poM3HwDCNmKvJSmFSSay++PtAsmqB/o7wy0OXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t6H43NNu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t6H43NNu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B8BC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756067393;
	bh=G35OknwJD464nKzDDuZzHJ78gWxdYMJrn8CkjWAHJ+4=;
	h=To:Subject:From:Date:From;
	b=t6H43NNuGjYOhHuwSpAcWoA5B3zWUiO5q8oyRJY2BcNt77G6HZzyduR6U3/3Efal8
	 C/2Pyd6YQXJiP+OHxKbgBeZPzSEhVj2JjbGqbIHh4LsedhQd6CPY/92Nn+qHX2qmqy
	 hOksQCoJm6uCfiBXcpSKVY7UzlFkSe5+A/Pwyuw1HyWEPEnn62AK54g3cCT5NnVhxf
	 rCQUwRBdNibTXfl2e2oeB4xwaYIULJI+iSOSHhQEoDPZiZWXG959ZYLHO3dMNr42O1
	 HQTAyFAfhyzrGDkbem8RMC0h6Ugvvt+sTI5IKvDllNlHNdkvSkmpyleWyQnD9ltUAi
	 sLHK2PtUhICVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91672CA0EFC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175606739357.17272.13297831568542485710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e5a2c19a6d15fb6abc5c155ff3376e33e774c74de52a417d33d56d00d5b1e57
Date: Sun, 24 Aug 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756067393
