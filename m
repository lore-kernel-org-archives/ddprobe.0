Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E39926738B
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 18:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771006494; cv=none; b=FF8YF5Q4qLhwicX0js7L1fdXXg94FGgeh+urcc5kmkAi19gy4rS1vwaAOVREoZpXwhBjAaox/Bwx7/LCz6q1/n8hKlEhogPvnA/gSt9oQCFFD3tkDddCxxtqj8vGA7lBk7EcV5ZnVVjMyIUAHP1L7Yr80LuQ1ngoLyeV+T9KErE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771006494; c=relaxed/simple;
	bh=AuPF28nUZQeYV8QdFTvwiA6KYw8JMW773EHTpC2237o=;
	h=To:Subject:From:Message-Id:Date; b=sVtWpvg45TsozQX9Vw0yJ0vA3mhi4vojNjsuTijtgNd9S0SIgDg+kaAeLtU4HRRAGf3kc4yxKHvYnsR1lFa1Y9VPXzCHoJmgSRlqObX+iJFUpOokM5/TplQhUTiEk4ONkHnXpeSV+sLT9VLnQ5OEpAYt5++SSgBfDLwu1W260eU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hOdp9zAI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hOdp9zAI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A99A2C116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 18:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771006493;
	bh=AuPF28nUZQeYV8QdFTvwiA6KYw8JMW773EHTpC2237o=;
	h=To:Subject:From:Date:From;
	b=hOdp9zAIrfeInv+AJdpotwM9mQg5eH8bY4Hib2hAotYcvVtFMtV2mta9dQRZrjWsa
	 u5yEb/yar+Id8iDqDGq93r9cIAcbfID3T+DffJeAjzQk4vv6e1gN1RBk6dUx83Xnrv
	 Ccgi2yrx0r7OU4VUUt2bxG+vIJfghj6I2e46YJCzj/LlPoFJUMFIM7IvQ03nCLo/V0
	 5ecCxBwYFlobHR0FgcCpVu+XThk6yC6ayrSX9Cyu8HFzHWUe3qK8vYrQa2xr7n7J/G
	 X8WNaKCYUJXVv0iJkJCf69+rdbbqKgp8Qv9l/vbvEzNd1yG90sTT0BRPBXVAdU3qkL
	 tMzcGLWZCDfyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96694EF99C4
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 18:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177100649360.30511.12662469348325118357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3667c0235851e18c710eaed4125731c0240031f66afa42500c43c5ddce449e73
Date: Fri, 13 Feb 2026 18:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771006493
