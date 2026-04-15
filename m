Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DAFB304BB2
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 01:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776217054; cv=none; b=I7vOqYCxm9cvJ7iOQuq8BzATCirgfwS5WTQL1HueTo6LzXMqco92ektZLQYPiDzndB6q1CiIivpJLMtK+p3R9kP6QveXmQzghFK4jlcwxusLUusfkI7Vgz6MGhkeXADWaJ7vUX/nkOrIf8nfJ4iQhAcDgtQWLPuYdp8zgM6Szro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776217054; c=relaxed/simple;
	bh=uuk6nynH4yBdOBr74bwoyIqZ0PAHVXpgSoi4a/OAVnA=;
	h=To:Subject:From:Message-Id:Date; b=g1zfFCXASDUNlWuLasvFvM6qK0jjH+ZMDAWFbgLFmnbiUc1d7EZpewZKbzOQegMjI6RHvnXHCMcZ2aekqKAJDgh52XnrCUb3SM9/AhOoTmxpusUyeyrT9YvgBa/+KS7UCz9p7KXU/ovxrWtMWTsARyGbBI1Y6yvut5x2YGjpoho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q2qpooqp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q2qpooqp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD703C19425
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 01:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776217053;
	bh=uuk6nynH4yBdOBr74bwoyIqZ0PAHVXpgSoi4a/OAVnA=;
	h=To:Subject:From:Date:From;
	b=Q2qpooqpYuGCllvqAXQy50EtWsU36uzFrLQzviQ5ALTGxqesNWfsYi7AYXn1KnG8X
	 7X8Bp7tKLYx2pnKa2g3GpOhpnS9kgOiRlk4qHrmYRn1qBh9SZyy9gYAeEjCXrSTmZu
	 dpgTU7qVqm8XWFgzYu552+s5aWBzJbWQn6wDhfjgAHUIdAEJeHrYGrwD0ZI2y86uM7
	 ZwVvQPzFXJ3ZmHhH/t4Ce4tpbgcUCgyiar5sV9NUT0aTRuSFpgjqpfNEvAU9LxgHzK
	 e2QzBKmmH6hdqv00w+8ujoKXWGRWwloODPiegcRw+2bhTa3me41uX+kRJWHGmz9Uka
	 8P0D4mbnjng2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2D5F9D0CE
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 01:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177621705368.9819.10975314294166854818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a17a978f4d6a1dc22ac1737299b1012d482952987e2c50e70b8eed7c85fc19e
Date: Wed, 15 Apr 2026 01:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776217053
