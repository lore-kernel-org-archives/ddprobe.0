Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C16288A8
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750304994; cv=none; b=SvcLs6W9OTgGYsgZVXSSwAxc45CPLQu3ykGc7RIQT56pp+isnhE4lYhOr9cEmCQgwZ2jsL8bW1U/rW7ecpRNycuk+J7/GskF9sjLJNDtxtoXN15FsiX21mmSV/I+XOK/rnTjfgWC1ZhHNAlDj8zYas1StDD72lC8O6SdxKeUMTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750304994; c=relaxed/simple;
	bh=gPKHS/wtLrUKtbhRBBHoxmuwgpgd8TVZ/30ODJRRE3k=;
	h=To:Subject:From:Message-Id:Date; b=CNbQWcjuwAreyPqxvUM/vqVcEKKPzNzeIAdAn3cPVZuix+yuyTW01XF74Hm4D15AMFp7I8ZxbknDKOV3NE05movkSGSa33RZt/NlLfn+Dz/tSS/yWUZLaa2OzkjyhfI9Wt6WgLK/fp6BzX1wDAtNxPYZCy6sEnqn+2xibd9il9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tkADDVvA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tkADDVvA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5082C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750304993;
	bh=gPKHS/wtLrUKtbhRBBHoxmuwgpgd8TVZ/30ODJRRE3k=;
	h=To:Subject:From:Date:From;
	b=tkADDVvAjJI+om3xDRgXfjv99MvcLOQwUrKRL+YJaTqPqqQZ7hMCN2UMIlkQ78/HA
	 7sI1bAklpl76/jH8sygTmlhuJ06fH3jsAm5X5sftjrU2h3jn6V7TpusAcNZomZtS8g
	 hhHMb5dHd9yy6HSwGB8e2lVapKVhkOQQuzkdmxNDKWyvM3w8nVNrdmN1fCXAQEmiym
	 Q7IGb8uKKcsNFLAtLk+1DHR+79V8j2exox7VOS85+P2CxSB7h+85UsjnYTOmBhPcTW
	 HWi7YKEGwPqWP/itbNOPUJoP41VqmfmgV/R6mG7pT9KpdAshleYQppWKJOwxgfQ+HZ
	 5iEkvuw9s1+Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F44C71136
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175030499358.30866.6535852562387960342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17620aff73e50131deb9ab6b88a6cc97e55c67e91a999feb03b67e5d188bb2ab
Date: Thu, 19 Jun 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750304993
