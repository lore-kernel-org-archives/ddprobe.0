Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E1CE29993D
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 05:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774244094; cv=none; b=JwSfdKX5aNSJoy4QFQT69e2Y9bbWMAJ4oqN32s8SnLafcSOWDjZTKk1vpvbCAMQC/efvDGXpFQcCJ/DjTPlT1HifcevBFbHCzCP56fkPKJD8uPPSV6YZqYoNSZj2iAGqUT7B5S32HHajPv68XwnqaEaWfVIiC6GCpVYsAYPWqIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774244094; c=relaxed/simple;
	bh=5kNFxmeRWGpN67qbcON5xZf7HK1vyO8AECjqxSVFVvc=;
	h=To:Subject:From:Message-Id:Date; b=JSWCrJdpaVvasuMKtVKzlcBdZ2JgH6dH77qDzKeY1VdNDneMRtQKgLjmA6kq2QfYBMQUAXncttKxO0HnT2c7vuIMD+cDfWIlFqIuANlVX4gSm5GKReH2gTFbU5Yp5bgVODlvf3I2CpxinSTANGKhxB1Z1mpPvsO0sXjD9PBGijo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=siSM0Q/a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="siSM0Q/a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3EA7C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 05:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774244093;
	bh=5kNFxmeRWGpN67qbcON5xZf7HK1vyO8AECjqxSVFVvc=;
	h=To:Subject:From:Date:From;
	b=siSM0Q/ay5o8eIVQaNaWa6IQleDTKc9WVX6dDTaDY6dDLsVKXEbe+odYzRv3cymis
	 Jq9KWHqSpzQIeYWF0qXpqCpFHUrm/l78dV8k4X2mxJZYXXEXY0Fsip7iBzaFgzs7u1
	 /jInJDOwmGPE+bB5XJDjDPtmkeWQi+ZMAKWwIF3QRzOLBf/wV7zibVQKj9BjlZNLLk
	 uYDD+jPLvsZQ7lkj1l6gPfVVEFpAIw1Gh+8atWo5Rq+9TXXVkzDLD9tl8Wyw9I+RAM
	 b3oUi7fo5VbF1ZgUwUSYVa5cjflSuPrxYIGlNt/0JyxG84LAZ9WCMhNPLYZfoP+qHF
	 AgLMNFq57hH6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A246CD58CD7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 05:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177424409363.13374.5500470117042810174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5afdd79f086670dfe38cb442d916aa17abf2838a9e3894fa9a113404c9f92032
Date: Mon, 23 Mar 2026 05:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774244093
