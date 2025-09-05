Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD203191DB
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757094595; cv=none; b=C2L4bbahU3otV/hfQAlBSVlIzDWF3kVfSPs9Otz5uEhCx6UqkHk1TzENMLBIEHR7t2vXArergyUH4Ztw6mPdEjRBj3/EpbKOlixGwQ34qMRT2+/X7pQH6ylap6nhD8x6lECwoPGLjW6FPNlU0KM3kagP4/g1mX3QPMfxLIQqz4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757094595; c=relaxed/simple;
	bh=0K3csaBZq+hO4cInXmV5pmdIynj772XCERoaIbjIhzI=;
	h=To:Subject:From:Message-Id:Date; b=KmKYmOOMZ4OCL9yo9c5fxMH2cTw1H+pkhkufx2sIIEAcDTVyN/5O7sNj228+Qm7C0HiQBn0jXC8uUmO8h2Q8ANUTBxJ6RCBPQAEoIfGNDbUnyrL4xZ5tuWl8IJty0HFAzqJHpKiCiKDgohZEJ9vWQPgZGrSwiaiW2OilDaL6keA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TqDChpN/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TqDChpN/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7421C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757094593;
	bh=0K3csaBZq+hO4cInXmV5pmdIynj772XCERoaIbjIhzI=;
	h=To:Subject:From:Date:From;
	b=TqDChpN/t6enIXF1gcJNfmJqubCCY1dkGiRw8tv2nV3q0XOndSfdue+F1Qt+zQqpW
	 +KiNbQftM5ED9iACwk+ccLn6HR3FBoKsggYcr4fW619pJyES9EU2qz4rNbP6KdiVVj
	 jMyP61N16VkNFcl9WHf62tjSnUaahb1bIto9atXh9+7MWxWdyDOBA8wrNq+n7m+kpS
	 i/bJZe/mS7Opl04B2/SmK32x2p5ux+DbC9rvrgiFl3lGIKsp0jrDuZIhoMznF3+ZIG
	 EZQkKPbXDNJfEkZzzPyg0Mtp0t8CbyJLj2Npm26zuome3ANo8NYAqluAXosT4bIRLj
	 +fB5qyKbVvs/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913ECCA1010
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175709459358.22598.7064468599201986421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd186cf99e607df48aa3ba6bf92a2ab73496ccc5207a641e41e7defad506237d
Date: Fri, 05 Sep 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757094593
