Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BAFE13C918
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 01:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783043914; cv=none; b=hAynzyY9DZsms8f3xmTMsB5sQ2SYJ1qHdGGzI+IPMovWds5/xsBkerG7az+IVtsw5sPezPYRbtmk5viJDOPPuZQHxIjEuObghF1D12zTMbz7KqHPe2qbp4+WowIIqzJzpu3naWWcWX6K62HCEB4uwM0tkzP5yDgazMe58RwnKJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783043914; c=relaxed/simple;
	bh=yPC1do9956jN9heA5MnZQny+PCvU2jT737PEzOcSIBQ=;
	h=To:Subject:From:Message-Id:Date; b=FQ0nGHWls9399EgCVDAvJ3QXhAwREOe+3nZsH/++o8vcNBbWgfrndcHQcf1DnXyD7Qrr22/x2s/M/KIVKD0WZf4gJHsOlhVmq/Ls5MRJNJ5NR/8QXtPrcBfYcmaTqgihX8iLbB3b3MbH+hzdABkKvrLHkUK/tjXQlmDRNES0mno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IsdslJus; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IsdslJus"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8489C19425
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 01:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783043913;
	bh=yPC1do9956jN9heA5MnZQny+PCvU2jT737PEzOcSIBQ=;
	h=To:Subject:From:Date:From;
	b=IsdslJusQDUyElH6xFS0xb+E81Si5+ONfnYOLkLLVCzNs2QFRW/4lzqPMltSezHb3
	 PBNs4pA2nEPiCnsUpRPITVROpBWYgSPo4v7jlECMk5WHO751XVGe9y76dN9rKXpueb
	 3cvx+fu1W42gzBgLrR7blNlYK+Ekaoe15ZUEsltu/W7Xbq3ZGqrc+Qh2yExyIgf8vG
	 xopuQSBWd8x+zrUoSxTNczypdKfvHViRTGlEzPUBQoIAE2UyKF1ZhI/rneNfvWtciA
	 Um/rYeHmgX7ladANWBPP4iiCjKkqhDp69A2YgGc9SOMMJS5f9g2BkAJk4899Kk0PQJ
	 n6J50O6BOHDFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDCAC43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 01:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178304391370.29178.8395200720225362554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1afff88e596286ae713af581027ed868aaeb5d7b2e4877fed6d447c5632d46ca
Date: Fri, 03 Jul 2026 01:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783043913
