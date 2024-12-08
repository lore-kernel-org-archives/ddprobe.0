Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C5161DA53
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733630154; cv=none; b=izaKjZP9wVNkMma75wPoPkRORuqIjGF0wlxpGcKJyRellifVrkV1E4Cas1yAzWSprwV/cmuMckWDqlkdo/HcAOy1PIkFBf9Wxk9nAzcFqS1qYs47TBP/FZWT1M3rRnrxbD+Ul1LEDoXdqAB99Pr9ua86NMZIvIZmzdldYtbxxe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733630154; c=relaxed/simple;
	bh=ZPRze7GbxoPjiejZ5T6hRYoFrDLmgvXc8yR0yc4u9bI=;
	h=To:Subject:From:Message-Id:Date; b=QZTpwaKm9n98GlAb+DQf1XZgpEelcAx8VJMPLSCJ5qSkAUfWd3paM8ryMF9m+XAxirlBWUD1rmFxgoiqaFwnn9GHe6WwBttTbxqqOqtmRfGV9Qei4xCieYiChSQPiFFI4zOXOaUMloS1BZxg4M7IaCktGfm1+MEV9hPSsRWCHB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KjcFb/DF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KjcFb/DF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA54DC4CED2
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733630153;
	bh=ZPRze7GbxoPjiejZ5T6hRYoFrDLmgvXc8yR0yc4u9bI=;
	h=To:Subject:From:Date:From;
	b=KjcFb/DFrYSl3x0WrY1NYgYAnQbNCLRxnzZMz31QU040ccuaGgiXDpd4SZcCKmudU
	 aQajTsBPVHh0zlSYUMkTFmycuKbeA8ljCpdnsbM0jRpNsumZ2imGWSi5JbUXboVX9o
	 RYwpnrhGV734475v++gmd7ms2W8MnbzOyEqkZ6m9VXBwIkYEw0Xg2lIGhYzKbYYEF9
	 6NrbiS9OEKwoNV9c0W4eIo7XTRimOCNVfqJ8MHAFn1sCCTywO6uHlTncneUwRKIbtR
	 eddUVRGtggN2OeOSAJbEMWFv9nHvaEnnVjXamZgACb+pVtAPcG3NNk6uKiTFi4krb1
	 W/syfMkb214eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A48E9E7717F
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173363015363.23483.8033942709067887862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c899f84aa9fc5571f1b548a80da223309098525b99cb4bb363fecc374759c98
Date: Sun, 08 Dec 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733630153
