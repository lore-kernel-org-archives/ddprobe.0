Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54A70945A
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 20:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718398103; cv=none; b=EMozr/7Ew3A40Y3FzS76fgAvwnpn9DGUSrTBMbCYEfweVjZ6kgYMzUYhP61s5RLYW9Z0UYL2OGizADoEbx3JnOK01DhLMWm8Uf52ZPBh3uBoYSFX1b41blghkQh1UDkow910Fjel55RgI+JyNlfO3vl/x4KqvqrSV103EeHwDUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718398103; c=relaxed/simple;
	bh=YHE3i1EJsGrk+XYReDso7t61biWSCPH8BZW2FaF0ik0=;
	h=To:Subject:From:Message-Id:Date; b=N/cYrKoJbqVokDSzDrxXnnygSJiS1fkqvSYjcO2UPsRCjdVPlBLprNUFhSPsPzWx/4atvRukn70fOw7R52Y068zG7sGpIIZ+8j8t3uLKEMZwUWMsuRKHjooB8B9gqiShYLzU+JcnmgjDcO7V3FxSX87Zvnefg0H9Lz2wJe3XfQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ze2AqEGM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ze2AqEGM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9F5CC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 20:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718398102;
	bh=YHE3i1EJsGrk+XYReDso7t61biWSCPH8BZW2FaF0ik0=;
	h=To:Subject:From:Date:From;
	b=Ze2AqEGM+7FAGxB+G06ngSPGYn1fKCdulPhi2zOECO3hl874Yh4pfpTBBBWgq8jpv
	 x5izfLzft8ZTPfqY9NgohnS9fOnMnR6lnMTfO/Zi8W11JgJ8YKfepgPGKQ0VFiP+PR
	 aUkwxHoqWsQLGSeGErUNSzJOiYptZwANXDEWcX+CbG564paPve9uo+SFw8wLWRz77u
	 sNduS+E+W2RbN6HmsU+VT9twZRyVKE4m7x67m0eKX5tDT6oYu4XqJxae6CL3w5f+LH
	 Ux/H+WEE70yRRIDQ7fCNhoCO3eFtLPXKhxQeAlNu4es8DpVqLTSmFPxWNNMAccGsLQ
	 BenwDuoAQE6tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C011DC27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 20:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171839810276.5298.16041209674673295600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82502d60a53b2f6d8e5beb36460fbdb49dafcf57a93ed459a9c26315ca0808ef
Date: Fri, 14 Jun 2024 20:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718398102
