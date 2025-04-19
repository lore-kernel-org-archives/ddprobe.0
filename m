Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5293A1A316F
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745097594; cv=none; b=U3v5ifS1S2aZCx/rP9JI00PQttWlfWlf+VPkgDZvVduy68UchQxKP7oFHxmaxQ49QaAYjv14wPrSaevTLdM7aNXZzx53xbUQpo545ATT9BQsCTBA0j/wL7HZZ2EyFM8kVfykQ7k/K//HyvkJFpcJ+jqjpREp5DF2yrMPo53pMSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745097594; c=relaxed/simple;
	bh=jDW+OPpau3t42/0Z/hGyx5aJk875TkYPXqjwU3eoAQo=;
	h=To:Subject:From:Message-Id:Date; b=MKESzklh2csVUUQGFvGVuKOyxNSUKzV46ZYGZEWWfk7/bXN1aidE70/gpfh6kfP2cANppZlpA/UyC2UP+k9Dk5z+XPaax2lyRxcKIw4MZn4796Rs2SAnaR89yJSQ2R+8/vwwe9n4h8WsPivaBB+W2gEL7zJwy1P4oV0N16iDsfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sXhN5OnK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sXhN5OnK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE629C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745097593;
	bh=jDW+OPpau3t42/0Z/hGyx5aJk875TkYPXqjwU3eoAQo=;
	h=To:Subject:From:Date:From;
	b=sXhN5OnKWGfShIe4kV2z7chypLO5AcQLL1d6mZBwK2nwAdffBOqha6ZXM3s62TdUD
	 Hg/vHZy56doLVD8up7HJLmrZVuHnrI7JaREOXuIOY557sbTCXXSHaAmLnsEpUtNra6
	 QAP4UlmYP5khS7VjqbEk5N8eZtSLDhhnByo/JoAX/AZ1LFwwEvOCdvrRkZ7KBccSiD
	 JckYZs5ejFfCTRQemAAuko62NEgEqIIGzmN38vVv/mSE5VGukjC/F/9SPqNJ+d2BEz
	 Uoxsh3NqOi4MRm/tM8dVfzupbsvQxJfbs0BSIDLpFQAskojeCjjlgCTs/4Rpdv3frh
	 YIreDOhUx0LNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C0ECC369C9
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174509759359.17205.13075385186848894396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cac0c49fd9ad6f74fe748c4ebb815f0d665c6e7096ba5ad22d03c92b7d3b481
Date: Sat, 19 Apr 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745097593
