Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2822829D270
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 13:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769954034; cv=none; b=stqcbHyQNVvpmaPia8bZ5jH1XPrUhqqQdRNUbO4qYb0TJTBa6t97TFhpNmC8uGq3PITlFPbS59LGfaC1eC3R3RhwkzJ5TIoqC04sbVIpb7dBHH476PsqwbkPL+tJT6aVu0EzWiZrW4wQAe2u/vtEZJLu/axCypplICwrFaXDdTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769954034; c=relaxed/simple;
	bh=j4uetb81XBN+Hh/oqoVI0UU9u/i88WoM9uJIW2ng+Fg=;
	h=To:Subject:From:Message-Id:Date; b=H9os3ksqbte65cw7a9rz1dFX/2D040xxBaiehysIybeufthSflz//ALJP3gY43nZhwVRvmYelsosPZKb24ChsgSxgGeRX7Ksisfq0PveS68Sa/MIrzY2glLoGFiV3G26ZYMxPuJea4Vf9Mc3k7pkhiQIqUoBgH/r/nM0DODpUsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lEUb8UCY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lEUb8UCY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD9B6C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 13:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769954033;
	bh=j4uetb81XBN+Hh/oqoVI0UU9u/i88WoM9uJIW2ng+Fg=;
	h=To:Subject:From:Date:From;
	b=lEUb8UCYpsiePEu5+I3yhY8pb74AJhdnW+GVyWjTGx3Xc9ijkESjq1vYL8kevLRMu
	 QNpQNOsqdGwWa6FDXT6LTxaw/NCEWUBj0XjEzvxuARpqOABMkd/iaY4CxLrb3g3foc
	 3XKQ+UMECediq7gbmwcEnTArJ5hUC1j3s4wFvYRiYErgi7kELqyS/VIQRCXhK3tTtN
	 P46Sv1l5NeBY4mzMilAOU2S+vGIrFKUDwAJHBOiGP9tst8bB+p6ZgzIOZJrNxcZDVG
	 PWgJ1KA8l12w8VOTJ/79LjfDP999BAdoUeRAaMv4ku3UBDNBG2O9zCepK8HlDREq6A
	 q46bxZtroiH9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C0B1E65262
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 13:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176995403360.879.1290472933115455196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f10fb285ba93d719c83d73ed90a29b66303c01219e284f6bce84db63c1a45b9e
Date: Sun, 01 Feb 2026 13:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769954033
