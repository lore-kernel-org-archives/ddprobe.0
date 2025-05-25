Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C2727E1
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748158794; cv=none; b=ph60G+iUDe3rDbe6JYrR/2Hby8TVQ1HWdIKXLm05PPRjR2H6C1qb8bpZcxb8/5kyMDE4MFDTVOw43aA4B9BdejKmAZXXJlmpjhZO9CaGoVzRO7E/b5FmjkhAhFDzpV/UOAmt8l+wLefefSJ5bOp6HpS+YXbNchFsGxs4suLKnd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748158794; c=relaxed/simple;
	bh=jx6eRcUzol2m9KDvy2yMlR3+dK/vF2YNueuVgQR5G+0=;
	h=To:Subject:From:Message-Id:Date; b=fPdjx7V9Bi3CEw+aMr30JA7XaaqY9Zt/ijH5ocFSYAVO7BqpVbv2IKoclC395Ue4s84s5GIUxrK95eJ756LM7KXGtkSSkbnalmId1ix2TbP99Al+4ZObj1YhiyEQYnIdE0oWySvT2LOi2Zszfh4WhZhuynDQi1tPkwLHlDrU4W8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S++OqORu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S++OqORu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B18C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748158793;
	bh=jx6eRcUzol2m9KDvy2yMlR3+dK/vF2YNueuVgQR5G+0=;
	h=To:Subject:From:Date:From;
	b=S++OqORuCJVbJ88pxQE1o3ts8ewyB9HP4Bcn87USgVrj7SWf7/iaTIgiddS7q/KO6
	 pb3yP3jPiQ8pV4ysyeMKINghFkNqjxydZszG8HWkOmNOlHkUsx7NEpSfTPU8ZlZmqT
	 NOKgLsDXJI6fib9cXRQ+v9NWwUu0aYO/eEI4tUKhchWO9kUOSfTLrExvi6iJ6KAdZ6
	 /bu8INBFqcxynPlBRL51+L0XKDflM44d+j0YBb4UqhYNiycJ16CL4aISSd1kwxdRuS
	 joLCQP6rXhMQrC+cCAB4M677EH7rywtLrbvvccpsQ++t7zDyNWoy+WJ/uCExWsNpt7
	 g3QjbuQ6HXefA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C70C54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174815879358.28580.9990999368600558045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3f1eae9545104e24d8f3cf73431ed510c6aeb65751ba9e4662aa4fa7a0cd517
Date: Sun, 25 May 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748158793
