Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C80A4688
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 01:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716602003; cv=none; b=oxjofVutXdA1fqW9r4t1pU8XcY3um9wqROmuA4bBQbWpVLhXUD5NFdXVV/SdSzZ++9ROJO6qn9NIcwaIsOX+HuguqcckHDteWGdBAnv1T44qjwOR2Yia7kRVMoVhh1xgQ0rbK8U/wwYda+l3qX0/Gs1B1zhYuETZieCPQUq4NDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716602003; c=relaxed/simple;
	bh=0G8hC44yG9Y6mLxvuwbm+0prn6xxpsVU3ECZOIuFK2E=;
	h=To:Subject:From:Message-Id:Date; b=cFtMmM9ZY3PRnG/ftDbMsCTfOgaqwPdI0qHP0qJAJSLd9X5Ss0o4KmySnPRpmEf70MzSb9FEwjsbEop1izeq5zvJquYHzK+0lZhdmR72ktSWCIhMUX9RWqDwYhcTRsT2NYOPZOCNZoN4uE3/bBTPfoL6qam4PUPCFuTwmgWeuoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bqE5eqxB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bqE5eqxB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E104AC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 01:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716602002;
	bh=0G8hC44yG9Y6mLxvuwbm+0prn6xxpsVU3ECZOIuFK2E=;
	h=To:Subject:From:Date:From;
	b=bqE5eqxByMwHo1a6qH6L2tdnabmntEscxzDKpHDwuKFApvc7QomCf6FVDs3122M+0
	 k8Fe5HCbNavBsLjrowvoV4a5nLSX5OOahjycr/jUBH/mk3fGxxoPd5+oAWmsT4miOz
	 24s96dClk/TotV2Box72HLdx3caK8+4zRtoS35w5h0DsFvbb7LsYeMXwv4HiY9vhl5
	 jWQhlevcSL9c4Mh72H2xYH4ta5LeV3niGPAUHnv7hdVWa5iYXHWqTFAVvcyBuw6R4a
	 njWiVvG+09ZWMEAdodpy2ghrgS+nMarcz8/j9+lyTrGfjO3PYJhNZCFgpedgdsk1vv
	 hAhmXfsdoXGfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C154FC25B74
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 01:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171660200278.27313.13575228020266033715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c25daa7d86a7d151ed8dab569051629867e7412a5da3bedeae5aa0fc9d5d3f8e
Date: Sat, 25 May 2024 01:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716602002
