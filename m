Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4783F1A7044
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743847794; cv=none; b=I5gtoLg9kclRsnH0xvNAGgZeVVQo4bKTyqRnyGgNyih684TH+wLGscCZoe/noc29iZsr1Gv7gVUS4tIUOR1j8ewjJzZ/UoRPxiKNybxM6avAeUba4Pvuk7Kfe7yoLotutjqYWcYVdCaNzaflgbHuDozphsIjlBs8lEabYo1Jlkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743847794; c=relaxed/simple;
	bh=n7UEHIV079vkwHMT/haz43R++7PW8NS7trQ5c2ok/fw=;
	h=To:Subject:From:Message-Id:Date; b=CF8v4v2P1XM0ggHOtC8ZP623YNod3N9OHqH1Bo+vZHS7KO/eKMJ9HQ7tP9E/uVEgQh25JtsXM7pIH7e+EKHCG0c97f1YO/7GmIC9SupqCRhoGpMmpxZBESrOMSxFduMMbBLfH5pu17riC7wzyJxxDYPPe0JBXbX/gD4NIh4o938=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bLO5Ychu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bLO5Ychu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC80FC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743847793;
	bh=n7UEHIV079vkwHMT/haz43R++7PW8NS7trQ5c2ok/fw=;
	h=To:Subject:From:Date:From;
	b=bLO5YchuJnhydxYvfeFR7eZ8HyDm7oVz8Vr64wuXODujuxcmdSQoBXfg+Ind+IF6e
	 t1GhT2/r5577JABwZal3SPS+8GfYN8uYIixoq+nozXkpBwT4i40kzZBF3D4J0FnlSQ
	 wYP6bwloiUPloCMmU+e7C37Bv5yt502+TALun7xSJqxZhPuoj5XKg5EI/L+/R+EfKT
	 J8b1o9cPsitAWJ8zPpfnutSrX9ARwJFUMZSFUhc9SelsGfeuB2jB5ZpWLwjw02s074
	 Nx/ihXy1wUOnp56/FmgPW0AmnlShW7asK2/LCB+rJhb5gC/TXv+4tnqAvTtEE+ZawQ
	 aNC7ECpBs/tHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3B69C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174384779364.32330.17266212266966096334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4c73c59ccf0d2ef5b14cfced792028a2d4777c9c0aa47764fca84962f1a8b2f
Date: Sat, 05 Apr 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743847793
