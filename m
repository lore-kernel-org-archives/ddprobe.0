Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4506D3B2FE9
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 12:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781785594; cv=none; b=lcNYAjsO36O0gU+wcNABXrF9eKs4XtogwefXPs00QOUubR79MyyPSbjxoArQO4CZunSPEeTFc6fP4O/MNhA5PiIWZkQy1JdnmQrIxJeNkKVtvDBrX96X85XEfj4syRyWT5CtxCumzYtl4suiCydq+8lXUAq9MzDRYpek6puQ7dE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781785594; c=relaxed/simple;
	bh=Hu7dCw+0ZQOCON9VoA/dWAAhJSIbMNVx39HFRllJq+Q=;
	h=To:Subject:From:Message-Id:Date; b=PTy+bEiipFoO768J+sQ4D6T1aaVDV/APiWRVEy6oopucoo5/Ki+1WI7GK7T/fx8eYSc+sslAXQ2VKQ2q8cAgNIfFG6sIEz66mwteOTYsEeLdK9GihBBlUs3FZEcVRs6pSqxLWwlQ8qxdqZChnS+Hpao9OuODfibyBroBfkwe05U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IqNjW3uP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IqNjW3uP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC486C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 12:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781785593;
	bh=Hu7dCw+0ZQOCON9VoA/dWAAhJSIbMNVx39HFRllJq+Q=;
	h=To:Subject:From:Date:From;
	b=IqNjW3uPANUNKGYm3PZ7gepUVw2eUmp5s6pSh9XlTv5j8wC6Np7smplyxmrs5UwF5
	 ws0wHNm0IB5LrbhIJCIk3Irmt7gfLt6JSf/CMZRhwJwGSZfNG5K1bpTi3ZDdb+zBD6
	 sZGqfK7+GoptSe0Dn7GTJatHgXwYfDghdgGgiojHj8CHzIfdE/iblrRu16y1j50lRX
	 FUgMAiKaDUstyygg3VW25KtLAh67PKHIQWmukJZ6eblWjCYyLfHrBPXpvZ3m8ljX8Z
	 gaCQ1zxFRBVPmcqIybMC8tzu8nNh++FXAbY7Rpbanw1wo+txtPugzl4C8oziOm2kL/
	 XjRL+lUeu5zBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1E1CD98F2
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 12:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178178559370.19206.12525937720596927076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 348ce6e7bf6c55e04f7eff0819150befe0ed949238a184cd1a057127564f0521
Date: Thu, 18 Jun 2026 12:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781785593
