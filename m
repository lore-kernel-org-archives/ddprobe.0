Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 579113783AE
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791027634; cv=none; b=NJjDeb+Di/f9qRZvC9BL7QmgpYieqL9+KlInzGXJ3xCYHw7g3cX2GUlZnxm8Mh9Bdw6Tr0w4egWs1njF3vGryN9Lgrn54tojsoWNQ4S2VqzxnE/1TFa1h448YbtTDMIJ61VlBiCdm2tk7EIvEtUEEAoA5Gp5D2aYlPguN+rKblo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791027634; c=relaxed/simple;
	bh=14MXduq0hobpI8mIP4SSkFthbm953zci9m+e2r3DGwE=;
	h=To:Subject:From:Message-Id:Date; b=B4lO2s20+208znqscaCrrYbb2pO9wKlmkyaqmWet67T0/EuG5jTnLllvO1OPdhqyObKFtkAwjEJAHT4+cNwX27l7VIpwBTKvjk2HFAjkGNAGD4yjkyS4PdRzP975OVKnGPXPb5KjcA9rKrwAYEnfOAJFWy975arqD5k7tYi7ZJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yx18yqiR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yx18yqiR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD2DAC2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791027633;
	bh=14MXduq0hobpI8mIP4SSkFthbm953zci9m+e2r3DGwE=;
	h=To:Subject:From:Date:From;
	b=Yx18yqiR5zO3JxhYn5uJBBoXoSLc+rtb0whR2cz+XRLctdw55uig3duJGlkdnyobK
	 3no29+OK8h/tsXVEHnV02bxoZ4VpndOePk6KU2lqvQPOs0CU/b0+wd/plPdA3FVHll
	 nhfUf6xSG4sBTmIwUlLhdZmsXqODOAF3S7szZMf4Yq5vUZ15we9ZfBELOkSVNJXwn6
	 ITKELhocr2rR8asyLF1xYg2SohicZS0VJOA9ajwj+GJu+ADoDjyM4EqVGz0oELlai0
	 tLAlW0T0G1B7nBFAzDIHYvTDQe7O7BTuHLghwS9j7DOqJ6PIflk5zBnvyQQ+dAbUx8
	 TBFC9g1aRtHPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C1ACA5FDD
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179102763368.32382.15744367646524563931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58aa1c440a1eb898a74bf6bd697f5e5388e82ffc910c44e4286bd391b3149a1d
Date: Sat, 03 Oct 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791027633
