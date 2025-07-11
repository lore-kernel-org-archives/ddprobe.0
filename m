Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5730E2AEE4
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752197994; cv=none; b=qVXcfZvlpJ01/E9j1wJvWFpyZ7euqaJBreApRjwy8AYp4waez9Ka0lEela07zFhiUSdhz6q1/HIot8S+ZvR5rVdAvfOXsBvL0nwGVA6WouMS+xw8dwTmt6Z8u7E2/tGJYj5d3wbBW2xR4NCBy3Ubz1dERJnS/pzbNydR+iKed9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752197994; c=relaxed/simple;
	bh=zQPN875vkwf5aOSqIKzRGeze+kreex1uz196nNFPT7g=;
	h=To:Subject:From:Message-Id:Date; b=CI/Dk4QQTfBsw36uDyQ8+dUOckmEGP09MxOL3K6EPoIaZ6Ud8GNVmGQLl2v3MFG8RXqG9TorvyL2v2WZyEmtCFC4gE7cjdXvydzb8ckPL5TO+xEXoxk15vzl2YJJpx7u1KRNy/6OK+DyVrTPxdi7InBZ/H/Qugb2Jis6MENCgK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N59o1AUu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N59o1AUu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3514C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752197993;
	bh=zQPN875vkwf5aOSqIKzRGeze+kreex1uz196nNFPT7g=;
	h=To:Subject:From:Date:From;
	b=N59o1AUuxTSOlTl6n66Ne7e2vDrf9rKdqXvwAB2xK0tKjd0PbUM/dAG/hs6iQA+NH
	 AjyeOTFC9oc6DOesb0IS1lW9estoY7D1GFPVOLNwN05hD00i+hPQjQgCjnbZzk3UyQ
	 plEdrbW3fKh45mZ3noHkYbVoxw47HTsEgQZ0VAX0lU2WJhZSU1PoJDBfw4KhuYVULK
	 /Cy1Zpv6N0aBxPpY/BuomhJR+nGOFWsXLZwXJLtFla4/k4WkwJkz7x87mCw6kflyyE
	 fByffUBUIkcTb+oABEW9Rw4+cH5qN9NxWFGpfp8oRjkRa4ObefXoJO6qBN+8uaIv97
	 EV/Eu2yu4k7Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9166DC83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175219799357.9867.410631438205546130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6ae2db2fd9042a01520ea705e4d407cacbd51da0ee13561dfbca4e27e41d31b
Date: Fri, 11 Jul 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752197993
