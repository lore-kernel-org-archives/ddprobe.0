Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326F527E1A4
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744354194; cv=none; b=oku03DpkQ6+JP5VmslwOydRJEb5XwH7MQDRFiQJIzaHdXB3pOpORYbSPM6n69ylw9Qx3GtyqyslrKxEcTXoxX1fouvvLii4I3ZslqQQj6emVH4ZBpMoiu/r0FDSadOtAd3wzSXKBQu1sHKYIW1NtN99WlDDKLV75GtyjaHb3/lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744354194; c=relaxed/simple;
	bh=vD7zLUaORJwJI+X/lcEzWUYKcmADs4Zt8lhe6vn+xIE=;
	h=To:Subject:From:Message-Id:Date; b=WeC8ULuIx/ySzQ4znR8ol0iOXXvCROWVJ3aa+dOsRpV6MuTJsYXp2+aetDguhvVXpgId/OI5xNB9ICKr/DoNBb4jQE7+SXryLMrr4tSAeY/4t+/OROc9HJUXwYGrTv4Z/eoEsild4BrpVLnW21m3fGJqx4SOcaTnweHaIAdW7Vo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iLC0ffUi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iLC0ffUi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C24C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744354193;
	bh=vD7zLUaORJwJI+X/lcEzWUYKcmADs4Zt8lhe6vn+xIE=;
	h=To:Subject:From:Date:From;
	b=iLC0ffUiKVw2RInPRrONuXczXp5TB3HX91ejeHaNLO/SFXqSTPXybg0loaz/GNZZD
	 bQ6mzbAGHpd7nIslJNazJNvjw9lcNhDLnJ7LJ4cab9FkIZPO9csjdPY371EwOHGDE9
	 RrEvGldTOwuR9lWk3WckoXdePsmf7JytPUxYXNpXetJf3WO9nikqEC8EcW3YxSJyov
	 mjmnIk8x/VMBft+HDY/ElcJIhuKFUyiNaEm7fVzESgO4oXaHtiAEsEiGKB/tAh4sSf
	 715DrXsj3pU+CSvJtdUYwnaw+rWV9M92dHnepfrsHIXd74q9kA1AUtrwCq8iuIDc3T
	 P1SatTRPYVmDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929A7C36010
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174435419359.18981.2474829709805393639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af38f45b3d21044c66026a90cd57eb95c557eccdd69d33b1dd8661f7d42747f4
Date: Fri, 11 Apr 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744354193
