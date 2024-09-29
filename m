Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD821C683
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727579754; cv=none; b=gra+LywQ3e7NzCieGs/Z8q39OOKl92lka0XJI0wu6m1JcGpcgxEb36O01ktkUjcFxoD1cn5uG1QPGeiOZmZInt/BSzamvPdnPYkaL0yp8Zsj+a5HVgsYEFctg+JfIhbD19cE8lOoZLQTguI+B/KeJmIbw86StPaVmECN1Lqq7OQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727579754; c=relaxed/simple;
	bh=buFIvaUCVyyw+eaM3PSpm6P04amS4ICZQiXqlN9Adyw=;
	h=To:Subject:From:Message-Id:Date; b=Fo3IW06hnWAkfHEDM46SorQcZpe0ueX4AQFtwQ0KICHxXnxhZ5hiT42wlAn/wojFINipvvDNkcYZk1mw77/ai9TPRPYK8GR5Ddc7PcPltAubdBU+tvitCoTlDHv/EMEsOCgp/Q3hQa3PUY5ZTs6ZWEiutsRauCq5EL0IsOxmM8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QwwN/GQ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QwwN/GQ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD928C4CEC9
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727579753;
	bh=buFIvaUCVyyw+eaM3PSpm6P04amS4ICZQiXqlN9Adyw=;
	h=To:Subject:From:Date:From;
	b=QwwN/GQ8iCihXRZQlpecZFJm9ZLtA05BmpSR+b/1ekr0Vf5aNQIGJLgjyGraom/x2
	 EbynhajTjbRBOt0zy/M4nRoiZW5OSQVKIrnZwbRVMmxurVZiy4Q5scNJ1sEsuHHvLT
	 FAALFcfF0V5kEONwVFp+GuC9bZU34qfUDRaL316nRVh4z2op0uHaSamVt4MV9TEp+7
	 RcIW92cszrSieXDhh7wIkoTEa8nQYk+1ELK4c+8CY5YcjQAg3ha6zTXoBJLWXOnzNc
	 GYvbuqZmJxLFQJd3Y7c1s855ucP2BLH0d7C3tB8DEcwYoaXbiTVODxzkNDFBzhqk2O
	 zGhGewLyzBNpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93993CF6491
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172757975359.16911.16280292595442906439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53784ac666d107f5b7dabd002adcd27c3c4e01f1535871bc2cc93d83c3ef6ba7
Date: Sun, 29 Sep 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727579753
