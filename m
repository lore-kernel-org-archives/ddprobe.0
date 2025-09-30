Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265BA1F0E39
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759241995; cv=none; b=gNMoht8wmX2+9wKpQYKxtbw775i8NTwRqFJD6+mm/QYkqSsmBtOLQnjxCq0nxKu4YL6u/chmE4UyhgZVdDowjS0TEoyL1UbwLETRiz7I9FZdIx/SNDzA5yZXQcETMJ5D/YcjyR+M3oW2ggmoQwnzo3CaKuJRKUWXpUtZAxqZzTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759241995; c=relaxed/simple;
	bh=10GHPBY6wFlY4zQZEK6GJ9ElEAXdwThyDBy8SXnOSa8=;
	h=To:Subject:From:Message-Id:Date; b=MOOwyGNK/OWQ542ZoeJCNsXJNORFeGOo/mlDPNWnTg6kQeoJ7GMeorhh9MEwqAnyYrwRw2Wp11NeiqCPIaoxVmDHVCLQQCZNx5K7+Cw83mh6yaH6fS+/SI+TWem2+6rtuG8pubY+bR97aKCBPjdTZFsXRLCXpEpGyjTRtwIqnKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ht5xiSvm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ht5xiSvm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B42EFC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759241993;
	bh=10GHPBY6wFlY4zQZEK6GJ9ElEAXdwThyDBy8SXnOSa8=;
	h=To:Subject:From:Date:From;
	b=Ht5xiSvmf/gebD6ZFmTxBpG5YcHvz18NvhvLes4oOJyR6GeR5/fuRRZ0AKOP+5bU2
	 GpwNsP1nh6wOuQk9fxlBrXiT09pBMUz1prAh9vCSsAPe3mizVhs7W7NC9xIPHTVGGP
	 rmRlWlRl7LiKGl5Z5TxI7h7M7XLFph5oYz9dgEyScFueGyRtYxn7vTqBVa4u4CJfAH
	 53sn4X3GKGohFiiqZ70z3gxGcymTI+8GpYIRFGl/tBs6U/m0GCuG20EnfP3nOoRbkI
	 P+2OdGaPOEYSC3GOI4cDoGTO4d5jJJUIIIdILAYOfZFsi+skSyr3TKtFPqkOo1vAlG
	 Qkwat945P4XYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99926CCA470
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175924199359.19305.11644348627137808446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66ab9c603fa58d7d3fc57807db92455b835504368cfbde18dc7158408d367996
Date: Tue, 30 Sep 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759241993
