Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380A02032A
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 19:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713381563; cv=none; b=sb04cvGkJvnVtdxSjLk0yiQpoEhf0Xj0567YAdU94vJYifVCSe8HA/FzsL6ijhpzCFLZL2NaPJuaI8VKAB0CGkqS2gpzxoIplZ92IS2eMPXSO9K+pYpJSsRKsM9NBgzwQU/a5ae8isr9tHZJWcggb2EzZ1WenrANibPMG5MQtPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713381563; c=relaxed/simple;
	bh=0K5mXcQ5e2IcWl7/YEWmMrto+YZ7O6Bq0AzFnBqVY2U=;
	h=To:Subject:From:Message-Id:Date; b=gjslC1x80FED4ns2LkXwNdrIlT0PCB2s68/kQEBcWG6CM/JAdRilthUPdQ6MgkChIe0VBXcV8nMnv+X3VvaJoEdnsXsy5zNl5LCvgBaMiWW6rO6Og3ctGGeCrwXvtrAJ5kXnhySRvfSM7LNmsb42zeOJZDLSAfWHWxZdA0va3LI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=puqc7m8I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="puqc7m8I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D09D4C072AA
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 19:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713381562;
	bh=0K5mXcQ5e2IcWl7/YEWmMrto+YZ7O6Bq0AzFnBqVY2U=;
	h=To:Subject:From:Date:From;
	b=puqc7m8IW90wCZ5dRBcddLWh9gKq2OHA7Ar9MeZD9gU20G+qer4daDx1hXjGprId3
	 6XE9y+EpKZyabLx555OnejWggMlIXqnTX2sUz/p3LFLPZRnl1/DxbrjwxDG3GFAwTe
	 j6IR4K2TZ62nrKZm8Dy09TPhlN9iEmSKNVXmbjy2x/xHauJhF9MSQNmuiaYAXS+EZ3
	 y5XfalPFHRSsffkhd+LIihE4Ungi0XhyOg1W8gKZc3XKVkpiz6jmgdzHMhyEo4dnqR
	 2XnsTe6KiXoyIQg2qdU4nYLfoeVlfJayqZFZb02LTEUCuAdznFWgsR9QrkzmqFKrQa
	 5nML7uSjZp/Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFBD0C4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 19:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171338156277.10285.4014170720216494111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 625972d5c08c366c2c0e117bf59d2245ac6c9fb31aba362483f76a2634316cea
Date: Wed, 17 Apr 2024 19:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713381562
