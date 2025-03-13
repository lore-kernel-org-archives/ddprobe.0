Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332DF78F4A
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 06:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741846134; cv=none; b=Hqw9QH3/gWd5Cqusu3x6qBKviB1+tz63gfF9oDFWrnf/rtkXh50Pf5sX7Y8w6ygOy8D0daR2CfvYgyt6Eu+JhzoKJdW4UOJ0dUsciX/bAFAV4n8UcEGiaYbysHnW9eeo9PrRXStYwv11uHtGBlEkoVLjpkVWuJD0BcQ8ZKs2DAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741846134; c=relaxed/simple;
	bh=oVwPOIO4VKaKCN0l4wVgsVORJy6RbzapUtnJB0v3Vyc=;
	h=To:Subject:From:Message-Id:Date; b=KWAx7FOt9PkyvLNf/wnmdPrfUqSGzgvrn+HHsf5CYRT6NmEdtaBO04rocVMVCJXfvZoCTia9cORNEopebkDdMhmEkUrVk5eDmxMJ9CbPtaIUv6oEySHG2e8K8c2v+sp5KKZTKhNP9/KUvqbgqTS5qL+zp5ojqRSGNd9nyC5fe5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hjDFvae0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hjDFvae0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6409C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 06:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741846133;
	bh=oVwPOIO4VKaKCN0l4wVgsVORJy6RbzapUtnJB0v3Vyc=;
	h=To:Subject:From:Date:From;
	b=hjDFvae0VpdWA4qSUS0kCMGhX4pdRkcNAkMg/dipRkL3XbweBevrjx4uEFL/5HO7K
	 /7Hz+gSlJD2A9X8L4GBOObh3oCdjSN4VStBaQkbbI/kFv0wpPXZ3WyHczuJKMq+22C
	 tPoAfICSf+gs128yq5t9wQ6+CRbsd91zUw1CI0key0eszBOE5U9AmjxPk69oiJVHGo
	 UaflRCktmvRmgn12LRzKKNvtMWnyU7bt6WDvCxJa/Y8dFlkdM64NvrhBgAajRnAqjc
	 8vSV+WeiPFhLgD2ylzhF6jJwHLD0idqyxbukNZSCYbzEM8rmgIBwjCJgzdyPgK2tJk
	 im5sOeBWGvalw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92896C282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 06:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174184613359.10091.16687355985367677830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bac17dedd14ebd8e28f53dde3f39b19affde26f15928fd24b6c52ac0459173eb
Date: Thu, 13 Mar 2025 06:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741846133
