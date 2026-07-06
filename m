Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 481623E4C95
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 10:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783335514; cv=none; b=FSCayrNpa3ksH0wMqBcn6rBKUqS0XiPt9UR0LVUYZqxZ52MtRoGmOwkfLfvbBkRbkOHqq7W9G1yISwC00dX0za+LwAdiT4rQaddMhCwuxMUb/fvG8HvM5wj4mmTi9eaXncq1tOymFqtVM3DjLOA4n3JNkGOAvivtRxR8V6JkrKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783335514; c=relaxed/simple;
	bh=GgDHWs8aQBycNNF2u6fz3vKX1+FXWWW8Kf17YIvGRQQ=;
	h=To:Subject:From:Message-Id:Date; b=hsRYHtN8EJIMwaPQZvEjlkHfsFRJqhfDm/CvNNrmC9R9JF8DpOjWNfGqv6/LBLeA3zd/aKbNMddoBJjIHegh1m0h8JETntnpzOzccBtnyvKVj3Pl369MNCKXwzpv50x2bmgzHjmR5RxfDqVsV6hqit9xSj+AExXxLFXkt0UKK1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K8nkbXvs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K8nkbXvs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D04D2C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 10:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783335513;
	bh=GgDHWs8aQBycNNF2u6fz3vKX1+FXWWW8Kf17YIvGRQQ=;
	h=To:Subject:From:Date:From;
	b=K8nkbXvsrQ/V9CIxUR0vUSZi+gfVW8lJfdzFsc7qH21TnClmepIqp6ds4yeXHnepP
	 CcEdb7lLl2wByxllpj4M+XX0S61bLrCpF2IELMx/MFU2mgdviIoJeARECRfOOAnDE5
	 vOGsLZIwbl8OAke7DWILCIXIEqFxqTHqSYJDQUvI7iOjJheaxEcCE3kmGMjA9JnbM+
	 P8M8QP4crl0zOC+eSlkJY2LDfANjisth3GHF2dQC1h+zn7Ut2a47FSRLsEMrd72L0u
	 UaVwlR8OcxS673Sounw81U+JrBcri1JC25gQtkBO/5YlchT/2sEu1bb/u4uL7JRKxP
	 6j2dU4xt/4WaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC845C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 10:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178333551368.13097.9604354726737420219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d29c0701f8584dda23507d7894d56da6ccded66b3579c946f0900d84210de1d1
Date: Mon, 06 Jul 2026 10:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783335513
