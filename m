Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29AD3392C2C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 10:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777112854; cv=none; b=LZbRyM/UJw4hCZuELKkNAyiG4vx57DXJ5cQbUzoi3+8g4p7p7cscL1wovoNV7htfN5nQo3NiwdVeu8Ud1CKeiVAYlN0PllEVAlNXd/ZqB1EYWMZEVl/XTBg6UbS5/+bUg/bbARMP0tq3zFl5YZSAPs6H7VUX0uJiFzAuYOscxQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777112854; c=relaxed/simple;
	bh=pDOcELRNqgr4GMmyE2bevPJT5rCXO/j4tNI2Yb1dD3g=;
	h=To:Subject:From:Message-Id:Date; b=OlYZ+Y3oirARV//ub9C0q5MX10tNO14DqxVQ4s19oozyah3Y1FpdKGywsJl9r2LpdW2kZNUuOyUYeIaufFa5zFQMddCdfJh0ga5S8U9ECT2+b79iRxL/i7KaIy+KybRLRr+k4Pq/zVXupz6cIEwr16X+BacsI8GW9vAX+goJNXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jvFjeI2X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jvFjeI2X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFF74C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 10:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777112853;
	bh=pDOcELRNqgr4GMmyE2bevPJT5rCXO/j4tNI2Yb1dD3g=;
	h=To:Subject:From:Date:From;
	b=jvFjeI2X0hj8x0PQPppkBnlKmMlOiN5eDpUW5dJPkgvZzcLpKJrP1/ohpGCZkOeFI
	 Opxe/kGSk+njIcFTaLDHm+5nj1MfJ/P3WdiE2s5u6eJa/FrDUAHRTeh1HlG2UxGz4f
	 2331Mwn0FSSBibPt9WP48q0awlcpMrUlG3hVvDlkEoNvtXqXSdPszol9XDbszHHUOo
	 68ev+boWlxmiSSJoDL0UDmSaxzQfGBNg5L4z4UcySLijWufZrI1+qdqf2XrXvc9mzT
	 LSeW2HGjL+O8Q9c1qctiXk2/D71GAhKUNVFnKtoiD9jROJ+of/zaFwewVSnZUrQqA7
	 gl6sjVWBiahrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE1BFF885D
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 10:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177711285368.10256.5771472399101522164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74ca5fd21b235dcacf6de3ebe443f1878f530b8e5ea59ebc927866af613af722
Date: Sat, 25 Apr 2026 10:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777112853
