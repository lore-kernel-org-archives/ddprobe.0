Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AA29224D6
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 19:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720813763; cv=none; b=JRUOse5HNzUk+r98GpjZ0ksHqE96tPNy2M84H7oWrXgf+31eae23yzJazQdVKXY4NdCCjlFk098/LeoJaMzOVOrvypZ+hfjFFd9fWlGoaXOWZ/R6vRSdCIVTEzDjZGLenjebvNLoGaYswEepAd0yr/64OXC/jqKH7x7ziAhT/Y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720813763; c=relaxed/simple;
	bh=35qASq9qiY+S9gzVjlhVoayZ7F2fYhkr2M0/jh9JCco=;
	h=To:Subject:From:Message-Id:Date; b=D4oECDDmz3uP6lTl4dK9zmaqLxFxaDfuDRLQcekw9mbSHq20wss5feL1sbyA2cthCDR/h/1P0G+Q3GVhuYpYigLvyG4cqDpVczW2Dfos75p9QnsEC9ELWMuQqLKAzsQrDffL1s+VCLchzT3pFnIpfHx9Lcu7q0Nrs7nIDnW04i8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TrMr34nv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TrMr34nv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE6E1C32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 19:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720813762;
	bh=35qASq9qiY+S9gzVjlhVoayZ7F2fYhkr2M0/jh9JCco=;
	h=To:Subject:From:Date:From;
	b=TrMr34nvSCKFUfmIHQ529c11L79LeRHFpqqggd37cc4rOkE77cZaLOTg7IqrK324r
	 RkAzFrJXEhmbbhCe/bmxiC8kSg/HKeuZyv0RZ8Qph21t7h+X0v9oGxHURzseoHW2o/
	 VhyoQ0aoZNez6x/OPlx/riLO0cWvAr0WZJYtHO03Dhd8kj//NL3MI9WWqwNxyqpNfT
	 q0DJdXYMfmRSSbgWkFgWpFIioKtncRyjNCq6o5hVQ9QASrbMwyExEKjUD7DMQ+xvCS
	 +HBBZxzxEvLBs0VCTRlD7ayrgvbSZFkhzFZlckicqqiSRO9gdnuI9DouS39k7213Mf
	 SJVgBDlDoQvag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7C2AC2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 19:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172081376280.2822.15841402881324466455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4dba300698136e4f653bc57f2f662e1f4ea1a26e42febd1a9254734fae28eb7
Date: Fri, 12 Jul 2024 19:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720813762
