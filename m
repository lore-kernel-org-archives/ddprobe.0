Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D820361694
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 01:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710812297; cv=none; b=koQTLzMts0wcbLQeOiceZz1kmPk5NkyBvZD59q+XgpWyV/sbDhw5gvbCFPe/9Mnrtwxrm9gVEto1ZRVU88SNGPOLQ2+5yy3KsP7CjGIt9BGE6uGJh4bUQYhZya2eGMQ4g2Kh3AEKL+hhqb0wYrGUrK/9plMHH+LPWEkxX0vp7l8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710812297; c=relaxed/simple;
	bh=474iPFq/OUGhqSKwoUKlzitymapN+0m+uQ6ZOqHX8hk=;
	h=To:Subject:From:Message-Id:Date; b=L4SSbzzG40GfPOUbdKKW3ARFAxrbKZ30nkR/EaYB98wz66bIvT4CIJLxGYZefKKZ3CxcDviStfE5BBhBpvhGc9pTscS0pyZBJrVJQ7rE3YyoLINypJDi4A53aaunl6PrlOf8DePaqruPjIfh1Ddyz480EuD7ADtaE55d+rYecCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LxB7o2os; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LxB7o2os"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70815C433F1
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 01:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710812296;
	bh=474iPFq/OUGhqSKwoUKlzitymapN+0m+uQ6ZOqHX8hk=;
	h=To:Subject:From:Date:From;
	b=LxB7o2os5MkE2epZdDtIMvXGTETJJZdbb30Bb9aC6TS9PzA1n2plz378y4V7h7Agy
	 R2uDgwmFiaK77PaUflD3YD1EoBjp+0CIYv/W+ZTOsKDqP7tuWhZGNoxUZ4i2MWIeHo
	 1tvIqb9xPvulfe3E4WaQA8Xyjgku2wL66ZwEY10IZ1juTep/VjRCUYavKe8C8CAtQN
	 w6rRQvqjPXv/6EGWQOSzus8CeL7T+bYvLKGNU8Z5MMNOUs5NoT0VhA45gTVgN8u2Aa
	 TfOZN1vje22m2LUoMOnzecl2eYGw0pDJdmzAC7d9uS3HmBTlc4e7+9jZUA9OnvW8FT
	 y7s+KbAJQMYZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E621C54E5D
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 01:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171081229636.3056.16969895042468984709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15c79e1da92f952abf76a617a245aa444892dc28e85f2f6dad35f67c8595cde5
Date: Tue, 19 Mar 2024 01:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710812296
