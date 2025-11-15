Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A198F4A
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763186994; cv=none; b=e2q9pfcI1QbYpovtwU87RpZGPY7BkSnU7MWEtWnGSbTl22E5qMJ9VtlsqH4D16i67KRmJLxJGnvSf1P2lgt8jSvCPtTccjqt7o4WJyuJ3SMQ+zqlW9gcgFJuGAIAA0SkhGGPkKzpYhR44e60Uj6EwrYQSqW6WLNBBxEQxoaZmVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763186994; c=relaxed/simple;
	bh=1R5NrGyDezVkE7wEotck2YQ/AwJyiEem3aNcjJFHVFA=;
	h=To:Subject:From:Message-Id:Date; b=GOCTtywFRCX9JI0eE+kvZElxzJ7a9b9hmd21zgBv5ohUShABCabwmZOQfWH/ARuQOjhG+cOfwV0PpctFOfI4iWa2Bp6qCUDgavC/wAfF2JZR03YN2GVucvmUjL3ILYy7nYBzXtwzpmXavuFGSXyG+vnh8jk7zKgy0Wi2MIzc3TE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PEFkTFlD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PEFkTFlD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA41C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763186993;
	bh=1R5NrGyDezVkE7wEotck2YQ/AwJyiEem3aNcjJFHVFA=;
	h=To:Subject:From:Date:From;
	b=PEFkTFlDjTHLFJzUs3qmbK4cbYaR8ezsZSIcuQa0Htejg7zYIUZ4y8YXCH+qekMgB
	 rr6uokfI57reJw2KCMV2AyKgc2vkMAryHM0bC58lYXcJluZOtU29Q2zrluNBWZyM4A
	 tzj8a+giHpROLNwvpDc5BgQ5UlyiHC4zmcPh6nSeZvKffPqN9baCiwP9EwK2Ajb6/f
	 CLdlUBUj31YW4TgZ3/QCyziU9jCKbZ/3qFu1TYncYtpoqMzNCwaLg0l/XhVMcHciWb
	 u63EVYCLff3G6eDqvk3H44rycVIiFX95MdfJ/d8SXwmWtYtSbwLzhaFIMRmCNUpTzE
	 jblF+9+UB/c6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AE8CEB2C1
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176318699357.21853.17792719673522115209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b71a8891e8096e610a62208dfff03465e54f545d96b47ab0f4a627e85ed6829
Date: Sat, 15 Nov 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763186993
