Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351271CEAAA
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726331754; cv=none; b=kuNmxitvINXKXfl70cr5OyUMVAI3ihqNP8aB8N/15UxEgEvoGMD0icoZLoTduVfLx1YpF59XqWHU5mjgwPgTbKjMYRu+YPBbbzLdFgK/Ya0/JhPwuW42FhqNtoqo8hAyPio5ZGXcLqZKJC4hA1c/+AmX6GPTsTvB3pqEI9GUngU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726331754; c=relaxed/simple;
	bh=nxJSOjvcIG0EJ5kQGcC2q3yBpwViu0vdovhejZKWebM=;
	h=To:Subject:From:Message-Id:Date; b=sEqru1Jp0Wkh/Ak2MCDz5S304w8J58XINMQ6gaNAe7Ng2oME222Q6ov9AY1AzUm68u0gWbTiKPYp2QRMwmKHdadPXHsiiTBUm2n3mKNCRRH9vEeDRMFundttt8JFjR5c0dBPdQ7MIJ0rP0i180xmMB5sMJVB7AbLMZARShjhbTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZVS0uXkf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZVS0uXkf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEAFCC4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726331753;
	bh=nxJSOjvcIG0EJ5kQGcC2q3yBpwViu0vdovhejZKWebM=;
	h=To:Subject:From:Date:From;
	b=ZVS0uXkf6PerNEUvk1f3CuD+5ZvWFnnYIdoONMxa5zpVpSGZWhGEqcQYcbkFG/2zp
	 5LN/W8HNBdOedY8xYQwWK7Q9MLIXHuCYDsDlwE2ZotDr5RkevcoTrlegc/i4ioo2vg
	 I9Ik9o7yyClBecW+q7xC0b8HMhM+jm0yS+8YWnVGzYn3X+9eHbyfFeTDPAreMhTduX
	 /QV7ksbrV9mMyV4Co1JBkYzH6SyActxEIvBHPwEcIuNL9AB3xXSlgM1zj+q8AU4ddJ
	 G2dJX9lOTNkIwUpyF2p+NwV89yfZrPXf89KZ8elmhMO12ygTx1+RdPxmmXJOF/wFp6
	 nFMZ21we3+Hdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9910EC021A6
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172633175359.25953.3010442945988182279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7b1199ea23c2b1a0fc24fd6986c2d52f599b15ccceee459b8743e9b0057a753
Date: Sat, 14 Sep 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726331753
