Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BCFD145323
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753145994; cv=none; b=TZ927x8Pk/oA47HVid4RRa9P0EjqvQ7awYEa9WdNnGWOsqWMlT2P4GVXb3hU1gIczat3Dxome6oWWwS4kw3JtqufqRmg3xFuXYj1ZG7QPIC1m7vuWUD38j9nqu02ULpre2eK0xzw4UK7I3xPNXHz2MY1Aq15X3tefNs1vwa5UfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753145994; c=relaxed/simple;
	bh=517mdGF6gwifmOplMemJIRzeRITJCG+G1Gmj3UhAlI8=;
	h=To:Subject:From:Message-Id:Date; b=oetpF6mLTD/bcUV4SbK9uHrrj/lZHQ0admRThpSmyU+QNK7FONPjGsPdEPwhuY77U25N8K4C6M8nYj6B7ZplvBRcx0sHSrCyR74CuE7ecg21EgPM1psStFzbD+mzYfalCCXBhf+V/M+ob3JD7stLtOpQf+AEUFLAnQ5DiQyyD2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ef1QG55J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ef1QG55J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD36C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753145993;
	bh=517mdGF6gwifmOplMemJIRzeRITJCG+G1Gmj3UhAlI8=;
	h=To:Subject:From:Date:From;
	b=Ef1QG55JBbIkEKjce5HP/NW58cBKa2q2NwGJiwZPMxsC2/OSTqUzT399FYM+J/Ge3
	 pRqFvzCp7ueLOZ8k+CRAAeb0mbKPkV7B9p8TNHaJBhrECLTXO3WePK5upgH/jab6px
	 pJOVs3cQQ6hOrlTKScDz812gimlVpSYytwhGK+wE/q/cOeDNqWrdkwcr+OzzY0ngg9
	 EvtDIXfwiDQH2Gpbw/y5TVLdsDZQ+ZN/QzgnaLhYYvefx6ygtSuOFtaYBw+xfC3nYe
	 ytZ7PGuafNVHdkzaq1767xSd1IV/CIfO9Nbe4m2AzYenNKXb8ZBQV5IYr0BfVZN1hL
	 Q/sVdTBNUfzfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933D3C83F1A
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175314599358.29636.3103580634115304297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 919ebde77be906acd5d4fd84b39d856b238e0572d97a7f0011ad36863b8fb335
Date: Tue, 22 Jul 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753145993
