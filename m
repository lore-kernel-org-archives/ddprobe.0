Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E2045C0B
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761450594; cv=none; b=sLUGzbNOmyhoO8s9Cq+iPeX6ku7L/FO5GQPBZt4HPV7PpQbF7kbtSKkCBCsi2wIpsG8stRWDHodYHQWBUv0IqNateYfJmM1zxnjmrUSHuJt0t84SR3D+3Hmzhvppdao/ZcMRP0rgbrL2/aK9tFNVrUBBzsiJUkxaTw8ir4Vyd4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761450594; c=relaxed/simple;
	bh=kLC7M8+m/EBlNqWdzeyoe0ZBgTeP3FHFaISa1YZnEEI=;
	h=To:Subject:From:Message-Id:Date; b=XEm9TAynrhdjs2hPsGIXKf8x63vedZpVAq0LKlnRFlcnJVQdLMYwqnVEi+baUPiEScmWeg+McY2vNAHeXKnbn0neq3riWf/WYXULfi9+VlkltGBeU+ySXDgufwovt1ePa3BGA/wCW4bQiHoSPM30YUt9hR5HeyrOwhfzSI6OApI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f3SYzEcY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f3SYzEcY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A651CC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761450593;
	bh=kLC7M8+m/EBlNqWdzeyoe0ZBgTeP3FHFaISa1YZnEEI=;
	h=To:Subject:From:Date:From;
	b=f3SYzEcYus8qGlkP2+RkeuX5et4MDLShu9AZwomnt2viaRauxfJhNznqWpzTpT1HV
	 PAh+lsrZGH6+bzEbb9z5eClrNK+YPUDic45tk+V8KUKd/Em/o+DySddT+WKqCXcxUW
	 qkKWGEPceNanCQuSOpHZJtPctntcMsv+YrL1Uy1ODO1AcqslGe1fUIElhWU7Epdiva
	 wMfGW2ehfiulJ91xwj3t0B+vAyxfLHFzMggzNsVyk5n8yLPlWTylvnfZUKbIRSnr59
	 g3xrOyMzNR2rq/ghn9DKLPtCjvSXX7Cy8cA/R5+XaKGRrUcd3ZdLYjjCE2B1ctkAMF
	 vnA5584C7o9AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943E0CCD193
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176145059357.17316.1369346274504722555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 726c8560526e74a0d716f39e7bf15d5be47cd7eccb6c8e5804266c66414b3ad0
Date: Sun, 26 Oct 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761450593
