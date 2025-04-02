Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26646233D85
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743589794; cv=none; b=fY4qVYIiqLAwLGiUHp9JbFL433LZU6sSgXxnrkrqDatSeO8soDFFor6v7J7mauk+FIQq+DopzQ7LYTZJRTJjPS2OeuJOMASGzmxfGGrCFbjH5bFOj343qrl9ke4HSOiLkKJVhf0EEgJqkehIFna8hcKmxrRvGbX01xskIOlw2gQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743589794; c=relaxed/simple;
	bh=hjStFe83w5cLSXSPpSHvQwXAIvB0rgL3SJgUStEuODs=;
	h=To:Subject:From:Message-Id:Date; b=h6NlzASORXsNBxbC1Xij4LbTghp58L2ZnvsgxyBjNVp6oMb/mmo+29zwwX9L1BjIEdtczLEn5RhasYa/83dP+MGzelktvs4ozdhrVAmBONFaNngou+Qvnd2kZb4Zd72dE4Wre6w1wxec1R7ua0NDGo7Zll22wd0QS5xKEU0mXmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iji8KuqM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iji8KuqM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2B9C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743589793;
	bh=hjStFe83w5cLSXSPpSHvQwXAIvB0rgL3SJgUStEuODs=;
	h=To:Subject:From:Date:From;
	b=iji8KuqMjC0KdmGi5esZ2WnVIx6UPy2EpzxZUXfe946c5NRn0bPM2pMpe6sxo9Dp7
	 37D3kIPOgkFCWHgNz4eH33J+zdoCUDPEwqG9fuaLmyLOd7K1pb71DgfyA6O4eq6UFT
	 LCnHWQ1SjnTZHe1h+dkyUNvR0fzrqWu/BcL96PGogIo6yWtkjf3eQ0OUvQfmft/6or
	 TyWqOWomGJHKlgHmYI3MgiLZFw576/1mxPNCZ3y+0VAJTCUiOBAFX0JDI9wtV8P07s
	 rz/s3sHUidcnt3hmOXXUGFnRHVfILI6235vApOM1P8bLj0E34+cGfJOJe7C8JwpOv+
	 Uvf51DH6ZpV7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CCFC28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174358979358.19921.5453865441982624798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a124152f5f17ad81927e60a65816c653e113d9bcce42e7d947c74241dd4014a4
Date: Wed, 02 Apr 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743589793
