Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1A081624C5
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 20:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763496114; cv=none; b=U4XGGvj8wRDOmWNxKYjGUD1uDAK4modK6GSeQgpwAL82AJnc/wZpfGS/j+HP9L52iV1HHafcwzUEQfT9l//FOhNC1Y0D5UhYC51uMm6ten0qmWcjJvut8f7TVYr0tlYBpA8EnJP4C/4GzxJyVeOlbokZ0Zk+9SZdFsTrS6PL7ZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763496114; c=relaxed/simple;
	bh=lr0rGkWuDJU+Ppev339eFzUgSFI+gXTp4ega3G/pU/4=;
	h=To:Subject:From:Message-Id:Date; b=NDtGCtiPIXVhvZ+sU7fXn3lZTgDlmMpXdTK+uBcH3JsFlNfg9IB73BbqoydMTU+NgIk+5tTxoT8NJxzddzJVp47tt8X+wIR5/DutD/7znQiKRU1pC0IwzKeUK4FlXnhIy+d+0IRAlaSLq6SrodPmdG+bubCQ2IhEonc6sypFSYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sCKhPV5g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sCKhPV5g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C44FEC19424
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 20:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763496113;
	bh=lr0rGkWuDJU+Ppev339eFzUgSFI+gXTp4ega3G/pU/4=;
	h=To:Subject:From:Date:From;
	b=sCKhPV5gHE20E99DcNAzlyfo6wURHqhkgNiIaGllOSAGGVzBYzVJz7hNGXvU9KDZP
	 cSLGh+dMTGlo4VUTRG/eh/x7afTtyEf/bvNOEknd37ljmL4OUJXXOMG2HrnKU81FDv
	 CA+LpPGTJzO+M3Akh+ICk+WhTWjXSHNf23BQjKCGD72VVZH9fbgwYO90NZXJVSubVO
	 2/QbsEP2QydpydrfJkC7hOWW98TF1uuctdi+5VjA/9lk0eCQeylQ1viLPOGXtnCSK3
	 vH539ToApyrTZqQJrBC3wOdiAK+AdsCF4K+gNrh0Cl700CDTyzfPnSBDkx50EfNi3K
	 KeQxQlon5TGtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92048CEE350
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 20:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176349611358.8855.4417062652119185193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc58be94d5a9a33b3a3705ac663887416f6b65ed112f6e37e3962a9f20efcf5c
Date: Tue, 18 Nov 2025 20:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763496113
