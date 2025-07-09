Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0AD2749D1
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752052794; cv=none; b=TZr9qd8UsuL/oP0JsDmHIBBCJrVcWA+weHIwdYpu+HuSyaupoJl+HwvJYC/xYIenQVPCYZ7FZiDZqoykeCEMZprkWJSwo06nRzFky6dSL4U7jNVGDPU764GgjeYBotHJFwoMBPgOo/Cm1rnRMXZD29Ks2Zx2GH6wreuVgaB/vrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752052794; c=relaxed/simple;
	bh=+loxA0wjCWqJiSPk5aGyG7CUL1bICECpXnINRQgt548=;
	h=To:Subject:From:Message-Id:Date; b=ou1H3UazqublQ9AmLbSavKg1nDaA+UR6a6ZAGozSKfE7ALjGrEzgS4FkaDC9sr96C8ozp/Vd3/Cp9NZ0DJee+a8zWlwUJXq9R1BO2UBFYGJSmbTBS8ELfITnFSz8jBP2kxKdbDM5rCAuCN1uCrvfc+2yW2WBCPU0dkZFN/0kJTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WbXwJqLA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WbXwJqLA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE34C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752052793;
	bh=+loxA0wjCWqJiSPk5aGyG7CUL1bICECpXnINRQgt548=;
	h=To:Subject:From:Date:From;
	b=WbXwJqLAJ8grSu13FFRVTFzD+L/PV16iJWwsW9SHtVe6L0Rq9bi1iTEpXnzDotbKN
	 +MDMpzKqXCg47sB+zYNElcgILXprAXa7iEHGNt3/ei1QByS+6UUmL/s1zy0f7u8RsO
	 zh1Zn6sQSv45fEoLlcMbUMzDzxpAd8vAnbXNJyNZky9sLqnBEuseYgcW7pB/eMbLT3
	 t1G85xFeWZgzDIhVcCEw3PPaVW47ZeIqS5UpZwfSQheCMnoC3BRp5DqBzRIOpwxl0u
	 auPrYJHrmOvivgXnJT3OPZe7eTqBjosz4Yv/mUR6ZjH8/CRdrMj11I3+xLjkzAFWaZ
	 Wp4E91FvJLeqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DFBFC83F03
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175205279357.32742.14201423412623480402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e488547ec5000398182bce2dc7d7c5d82155acb84b5c8ac13e442f9feba07f3
Date: Wed, 09 Jul 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752052793
