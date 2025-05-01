Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A53221422B
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746093594; cv=none; b=FnQJn/mInQR+1JiqIAfZEUMgYFEAAvrTJ9QTzUKCNIMppEr6fTxE6LZ3KmDEIgXsrw/7+c13ue/Prl5oU/1DeBhEo4fZePkyFQIlyFWyBIgfZRjdiOXyd25ffxrtZO0L2ufLod7eVLHErszCNsPtawigF4ge0LuAHIuCyl6wA3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746093594; c=relaxed/simple;
	bh=sufZimRmgWgeMewtva1gMC4hTdIU8KxIiDdNOWKUm7s=;
	h=To:Subject:From:Message-Id:Date; b=nYU8hbS3hLaX3YBqlZDCcmvvgy1nq7jNuSpHS0FBjMtQcTV6R3YaYWilCS06Qx1t5T5cAloATjUZA1XfNjwg4rVLKfmW6+ZFeyuwzJailniXccnKBcsuG0UZGDSM6qdpRhe3VeEJNvzRgB/nEMDe/K8ShseusRi7HPJQEep5LKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GkOwM0tQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GkOwM0tQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52ABC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746093593;
	bh=sufZimRmgWgeMewtva1gMC4hTdIU8KxIiDdNOWKUm7s=;
	h=To:Subject:From:Date:From;
	b=GkOwM0tQGmqdHH7Q50hHLUjId3ihc+Zxbi3XUNuwHbO36gdgGtyLtGUUFb0Vr2Et7
	 9XSYyS1LDKLiepjB8ztyWtobRdzpBSOhkJ3STDqjAufSpdHq8Omc9S98JmUc7O6lZ/
	 v6pUaRkZeUPIIghIFprExNszfZkCSWS4j7tjt/jpwVHoO/SQ2RlOeNldGlmQbjSN/G
	 C+DvtiCw3jj79DIqcr4xghJRUx6aDUcKtXANoiG8CXzL7h5ukBeqSxc/IBKXOXepdd
	 J/gIdMRI4EzI6qGoI3pTtjA9a0vF9dpro5N70VA+gv7W+cgUp6mNTtd6uic0uZRirT
	 w5YAEC/n27bVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C96C369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174609359357.17999.14361111962250090414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db0e2071d364c1ed4d92b3687281899ef8d15470e69907a70932812421d91cd6
Date: Thu, 01 May 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746093593
