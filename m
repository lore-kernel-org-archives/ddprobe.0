Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A5225A334
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758594595; cv=none; b=AKAETUJpbNKGCBPKUwldV5NAEAgZPsbq2RsPnqLGOjodxbVB1+HngnEENe2zZBIYaN6tFtIfPmlHm+zMCweh+EdH/vKGYVI6ZGjTgQhYYEnYlOPQJpg44PKa8tMIcl2PXs7nG74Soh55dz/WPl/etWz570XENmeEdvty5R+9qCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758594595; c=relaxed/simple;
	bh=pvsuUD853ibeRLRsXQZt8bVy5+JiUBFGk8mjzICkrMo=;
	h=To:Subject:From:Message-Id:Date; b=D4yb9ImBDYSiWp7WyhFC9eI8xrovABX4vDjDDZAIcxZzsKJb/vejt/e4bm5jGxXDzS1394jUtHCNObSjSo/UdGRgF3zDt+AdJdmkqTZKfmBGg76wXTZQ6z9moWJUx5Gw/nRzkvHobWDHnzSy1/j6kya5JJlxj49xgmwoua6l2Pg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kl/mXAFp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kl/mXAFp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F94C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758594593;
	bh=pvsuUD853ibeRLRsXQZt8bVy5+JiUBFGk8mjzICkrMo=;
	h=To:Subject:From:Date:From;
	b=kl/mXAFp85lIR6n2WoYd6QVfDRWdKbpxk2+VuZJyK2+JlTvvM8xnzZp0h9XnFb89w
	 kmVsP7rDnT0OixWNkZFcMXag30bZT46sZ4llf47BXgkv+Oapfa8nbdcfrmP90C4xhL
	 BKXH6ySccRdkb97mIcqNUfsPJPbykK2Sw9T2ELdJCsyi7TEt1FaAG3TvNSrPcxW2fn
	 IZlL2eGUxtQQ91muFpp1jmAzNcZ8FoNRZH11DFH16oUBgZfLt1q7LmwkwgwgtjTnkp
	 A7xDUseD/IrCt9GiR/UKSrntBRqXjzO1T3gjIrKUvZcNdLnrPE6V+8c9j3LQ8PQAYe
	 NSjq139NcIuow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF0ACAC5A7
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175859459357.30769.14072194896427484790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b55b833d25ff42216ad802d6299821dbe74926e00dba6cf0f986a9575a7a16c
Date: Tue, 23 Sep 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758594593
