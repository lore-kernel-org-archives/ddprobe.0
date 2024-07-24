Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332CD2E639
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721862354; cv=none; b=dGD00rLMJTCnH5TpJFhICSg5waT3vY3ixRcLkUtLyE1Zut0H00DdMAnV7pn0YoBmDPFl/tdf2Ns9ZaCnAAjkDqLyHwuq6n8KfeicgJpK9jrQ8IR/N2CtybTKwttLiHqXiI/L8y++qDb/caZPzXyh8otH+kfo0G7epZPs0bIjBCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721862354; c=relaxed/simple;
	bh=HSGRjwO0KZKL3BzzWcLjT0gLH/FyB9fapqOcDMSm9XQ=;
	h=To:Subject:From:Message-Id:Date; b=BCnenTR/9l6FnQw4iPRtXX59N1q23NPhVyfiHjX/67TSzqqBtGjw2xHJHGdl73R4nqpvV6j+0xUwBX2BRURnEP1JUTder1kg3qoe9RC/M2a4mLR5MmH3XJXJGe96crc0emdHf1y6dmKf44LVdJ2/10YRXSM4bdxj4tfCBJhTuZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h2lcSj5q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h2lcSj5q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3264C32782
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721862353;
	bh=HSGRjwO0KZKL3BzzWcLjT0gLH/FyB9fapqOcDMSm9XQ=;
	h=To:Subject:From:Date:From;
	b=h2lcSj5qY4bq7ENnHec+IjdP8TdgrgFK7xHPfEU3s6G7cZrVacZWaiFetgf/fSohf
	 R3tpiUGgIkn4kyaPY2V4ZyOkDgnBQN4shImwWRa6Rbl4x6dkUXcibOVvj5lzN8ehtJ
	 han+QDVLU0tyj0emuYJANcJ2sQbAw7bgbzBMPhNUlaA9mGu2KEHbMRaWQmfTjUphRW
	 49xqimY2c+EI/mpcNGks5pT54ueEvXjodQy6CwzSh6GrQwp11Q0naf6RZSQ+DH13VS
	 0PHCUr5YxnMjYb1psZQZCJ+vcmWObxhAQiF7NFpmIp+G7WjE4SHi5vIomkg4pzM9Q7
	 Hd4DWgxTB6Lyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0C49C3DA7E
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172186235364.12510.13471412773725524881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24a7fbeac86915fbe83fae3fd9df58dc563b08c0f3cf22d7ceb74eda2241a596
Date: Wed, 24 Jul 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721862353
