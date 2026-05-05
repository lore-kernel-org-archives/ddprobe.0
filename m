Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 325BC3E2752
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 08:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777969654; cv=none; b=Fext9YXGeVqas9FVXXoprXfAWxafbypSlR5UCeRurmi/IiNuW/Lw+WB5vzur9RQgQsTzOQ0046/QYLG3yHleh4hU6+5xHkCNVZEO0b7SHOLnyC8TntF8fH7PSJgybqld8jlXL0cDnmL4hfyoCxaSF0vlHppeeuxyOn3cxNdhpmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777969654; c=relaxed/simple;
	bh=OTcYvEWcjoctYU34pYKvh+e53F04zGNJF14S6O7eGGk=;
	h=To:Subject:From:Message-Id:Date; b=Fbv2eREG5WifIp+elvN9D2SP33ghmmj6JKXiwrNGIDDQ0B1cd/YJJgiutsYBj3izudPoSPyBHBzEOSWXBzZa/hGx6ZP9jtiOdhRXAG/Rjo27K34HtRBTGFKC9+Lzp4dApNeBelpLfcGGYK7CeIMpgrvI6EZeShxmS1TEbchDctA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JduFNspX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JduFNspX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9E5FC2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 08:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777969653;
	bh=OTcYvEWcjoctYU34pYKvh+e53F04zGNJF14S6O7eGGk=;
	h=To:Subject:From:Date:From;
	b=JduFNspX4rz6Wock/cvOq4jN0OglCXrUCUqV0AwwMqrVJpj0Hx7vISNwi/stUfK0a
	 DOf5SpTdPglUx5urFtP70E8s828KUKokqqa0kY3YEKJgqtz5v0h0QcsJBfKxsHcKk6
	 Y9zScFJrbLM1Gcb2fMrthNxsKdR0a+qLbaTBsc4vRH7EJ9BYckknqugVIgByB1LAtb
	 xsH+xnFBLakorB4n7j6exsjCC9iP/5jHXp/dDsPOpwAt0G5gHmGfvr6luD0NsAvwjb
	 vQF1Xww9IR3irdTGFB3gnsg0XZmmphcmTxQxHs2updnHvkKEtd7qMkLb3QNN2PPr5B
	 Gt07Kqp/mdBtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B754DCD3439
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 08:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177796965374.23290.13492804219684444376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08c076d4eaa99ab6882ca565126e66b1a8cf007956bbf08a98ce754a54b1dc56
Date: Tue, 05 May 2026 08:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777969653
