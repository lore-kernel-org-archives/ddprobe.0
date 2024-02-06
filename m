Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 182BA1B951
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 21:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707255497; cv=none; b=RyvIakyABaRxjUYlPMLTfg71kv0TMfu4mjjatM3QbJdfT1onY8RYuIY2BZR741BdtuheslrZCmlJQPJFOoInvF7C+AjlQawR94RDTrHeYCDEDEU8uaA3WbFNtfxCSYxAVMiCzEbpDVBb9K3zAEgo/qjuJmy3ApguF5OoUYh/I2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707255497; c=relaxed/simple;
	bh=2+fPPv45H0HFszXXrHKFl3cWrU0nvN5C8bXU3mhs6BY=;
	h=To:Subject:From:Message-Id:Date; b=k2P3RgLtCqA/1WL7cSmuspSpqoZ7Cczr8MQoibguu3Qm/HPLmLq198Ur+YIhjMIUo/RiUng4jDU7DnxfiGXUm0rU1rdw5AgwCyoslExjgTo/S4jk/0cO9uwvTJmO29oE9Q3Hc2K+2zg95nvopEDSU26+aAtDLS5WRyNBcJ7XbF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L1iduYbg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L1iduYbg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99557C433F1
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 21:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707255496;
	bh=2+fPPv45H0HFszXXrHKFl3cWrU0nvN5C8bXU3mhs6BY=;
	h=To:Subject:From:Date:From;
	b=L1iduYbgDvjJ0CZFMyb/Ffc+9JwwqC1/4ujhX4RveweNWfqIxP06B1317w4Y8DFr7
	 HQrVkkYHeJM3ihw1Z4C+S9aquzfN4nnCNiGfYXGQV4C+Pb12i45v19QADjIj9ZxgSI
	 us8N+RC5uM4nhue3cCYm3m/uC1W4MUsDGejG6ppW3or3GQbz3e5hkGMgmk05hsTnUE
	 zF/Kt8x0344qEjn4SHxnyL+VATxeVVQtgIPm1U19zFYg/BMhGXXVcLIfZyAKJPm6pN
	 bge5LUOX79nMKCfy+RkQQMZq0El3tpVD0G3a4hdBquVTbHCPloCCDlEjQ3zdoSbqsZ
	 EwMbfDAqklBQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74ED4C4828D
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 21:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170725549645.25305.8241606646439233697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 893d6613b8b98105551ee51793e08efeac07f17fc77e5c2c1681fb94e6cdb714
Date: Tue, 06 Feb 2024 21:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707255496
