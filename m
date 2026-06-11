Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF74314B73
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 17:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781199994; cv=none; b=RMKGWVsAKv35h9k7/Rn8HCSMG9hxhVZo1pkSewRprwJktFY6+upqyQcLJ/HRadtuTRBG68QttuLMST40CUxctluky0LrwYRVvX9If3CJefcha22zGE0EgpDifkacY1s2JkY7R/nvADaP5YPW7guM/VpM5NWa7Acxv9a1KeEV220=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781199994; c=relaxed/simple;
	bh=p6uyFL+TS9kfwC0rtKePkK9wWWQk/DFCiumQPDwY0Yo=;
	h=To:Subject:From:Message-Id:Date; b=CljbHTaMOTWdycvCTTuSTz3p0XDBB4pacSZ15fvqgQNuwEFawoCrI5f2jODdcRRhE+OrYF/Xol34SUrac1C+gEfVOeh3+Yw/DfaRYl7Rh4upyhH6mlHwdvogGFuBnsmSyxYR9K3VQ8jRROC9YW4kH0XstBdCq5RQN4tWJqU9LzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L0VnphzN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L0VnphzN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D635EC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 17:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781199993;
	bh=p6uyFL+TS9kfwC0rtKePkK9wWWQk/DFCiumQPDwY0Yo=;
	h=To:Subject:From:Date:From;
	b=L0VnphzNKmlYUcqSgKM4WLVHY3nlt5YwCW6TieOgJWeU/fazpn21FfQSNfNuReFxn
	 OPEM2gmR1KU9AcMrkSxED2Hc/zkEDzxIqjiLhpzJzR9evTM4ghM6CPeeFXLxdPbarb
	 IZ1PR2hzAy5hB9VPCDhuzXtlEaK1Z2wpo23rsw19Rs40ATYmrT/t+KCrypTtC90VzU
	 AYhUi8yeu4bsnBDZWo3my5Gmg9mc+wHmNWa51kVO/0RRTM8pS9NkrlLVQnsXCPsN8l
	 waU69D0XdLX3c6SSw35Xchq+NXZZOzJ/+3lIbMkYBFlvmn+wpVjGQ9f3Z+30PmnqMn
	 vOpcDxPgE785A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B59C6CD8C9D
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 17:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178119999373.6359.8326659722830191385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b033b79b068b4a03f8658ef50b42bab58b66b4513becc3f09a04ed785753413d
Date: Thu, 11 Jun 2026 17:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781199993
