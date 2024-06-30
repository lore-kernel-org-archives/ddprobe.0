Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63F3C53363
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 23:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719791663; cv=none; b=lIFvL8hdBeztTqLM+vpxvDzHradQ0Bc9O4769skZCzFC8OQ6Yh2HtEobhdoeJA2hYsf/JwqpmXKRZRrjWUxeWkCV6P7uXbWGay8HUmXYzk1XdfK7Rq8yqFRnXWaH1sXUeYkxvpCpBtSwwV6RsBvFeezp0cRwsbRmisLx/SSQkP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719791663; c=relaxed/simple;
	bh=uYn3AzoL7qx/4tBgIV/ZZ2Z6pdZT7OHnto2vv+1k44I=;
	h=To:Subject:From:Message-Id:Date; b=WWIOggETqpO7UiJ8ZOGaUq7JhuwU9bOnSE1Gh9jWUPwk9Uy1SCCnYisj0hVtrBroxBQDE0jQIZH+6UHyBEIuD01cEX2ubIL/WcjTNLX6HggsCU6Ek2HLZ18nJYgVNmJzKjsUB6qJh2CUzwjBJlgGHioKNSuJvErkU3zBY8Ty75A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pz+W1qsZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pz+W1qsZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8A03C32786
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 23:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719791662;
	bh=uYn3AzoL7qx/4tBgIV/ZZ2Z6pdZT7OHnto2vv+1k44I=;
	h=To:Subject:From:Date:From;
	b=pz+W1qsZIixn1dn5WnNp8ET+Hc7JMYmDanzokiM+pHOqBIo7ClsrBpKZ/gEgzVayq
	 PRRD8XQahLkgvpps1UdHk4yXU6m4fHmGk2ZkMLd27xfg4oA0nHTIaILcHCJp2CURiM
	 d7Qn115xwXJJwrpfjrkCHJ9Aq2JXkBXT0ceprQfQofcE07yYBCYNJO21eYyIu+J0QW
	 NRkvnqSJ5bxE4GojLJL7pLP2QeEt4HVbdtXheacTa3cqCuVyKM04hs0FVHiwkN05Xh
	 tLWUK0vMQOvoP/nCDk7rid+0IKbFZ8mqjRTPbGn0QyMqg75mG9PCylMYquY/qd9Je5
	 ue+lP5P9OyC7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C33D9C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 23:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171979166276.22926.9423547176611641141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fddeb3b74a59da8991d85e861de8bbe92768fbf6d7daa1884ea8ae658f847bf9
Date: Sun, 30 Jun 2024 23:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719791662
