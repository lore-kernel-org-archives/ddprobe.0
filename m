Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1251406260
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 17:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774546493; cv=none; b=teG/div0MtaojdBidpLDyV5rKxEFqH7VRHNEpH7WllSlt+we8+rReTr7/bJcYqy6XvntEebwcfk/hcvQ9Zc5k/yOu3N4vmDnqRqGM4Klq2D1836bjVT9AJvioVYQwdF4ZOqFuK9YBljr4bvAK9TyETElNm7nRopb7Pq7cYO0yM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774546493; c=relaxed/simple;
	bh=cul1Iav77ULMoLK+9UwUM1S6alVa0/opCNFoPpCq7Cs=;
	h=To:Subject:From:Message-Id:Date; b=Q95tGpq8OW1f18wU4QoRdejf3AjLGN9nz6pVjHE9VwlcB90MIbDenjxEUKN9PyFfNxPAnUMy/Jxk44KR53YucG0od5C6FpjPAOxmm5d+d9gNfgxu0SoE5HXcGjSdiq1DjSwzn55ius/6MhLL/UMupT1th6ECM/t3qoywpTs5cww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DLqfevW3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DLqfevW3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6533C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 17:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774546493;
	bh=cul1Iav77ULMoLK+9UwUM1S6alVa0/opCNFoPpCq7Cs=;
	h=To:Subject:From:Date:From;
	b=DLqfevW3clNEYCDUXucTRBdDXCCaKKZ5ubH/3vlSLD2MfhiCa96mKGP6F/M2+wQm1
	 9gjvthRP/pfNTG3sasF0V7xFreQhQWSMSlWC2ZZfvHx3HkOKulBjXvF/NpNVe0ej6T
	 5OvtLMDL8dJzUmhetr/izBKog3kxxeImYjWhFSpBSPp/TURRH1bVyoYGNpK14QJjgi
	 1LCqefhLhg318ofVAGn9ce19eCGIqJDxkDftsWRPFKpiOyHYTCtzDuwwlYbfWds1OG
	 8xlJ8Y8vPzsHmicDWFEubdjkdp3DVuce3bt2PsiGWoP91Siw5aoImBtbIE1v6PKo4+
	 6TkU3UYSWSRIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956F710A88ED
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 17:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177454649359.23095.12730078770463337503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed589af0ca623ce9f93d9193bb8f7738594e54dacfcf4ce8f0a0ec6425e8b532
Date: Thu, 26 Mar 2026 17:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774546493
