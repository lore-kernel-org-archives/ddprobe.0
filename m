Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 787E417756
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 15:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717514183; cv=none; b=St+s0uK8ez0O81pKVX+stv9jAhjJQRcz9nzCTnabAFQqn6kU4AoFO9qTm+PtHzE8CE76QIdoNCemqTpR6BWYHy6/F/rCaeqG5pITBPsMqzIbcs75djcZPJDUfG17rNBcsrPYKyRJTUQL7Wt+6es57DvNQVKm/TY1iWjlrVYfZ9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717514183; c=relaxed/simple;
	bh=Cj6GpWHHM62dudmcdPMF8XZyMMWZrjaTPP9lsdpM8ao=;
	h=To:Subject:From:Message-Id:Date; b=HQ8dQVNMUpHYh27iZG5EyljsmDksUTNY5AXqEuV8bxuLkhstEmX2lF8BxVrRYy2RGwAt6dSAsE+vNvYRhs+lU6skurp2MGWfHTiINT1bC4C1DayeAKCslk140wAboBUgPboCqkgjrFeiKU4aFOKyCEt196LIb0u060k1T3t4MPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nsuKAkx1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nsuKAkx1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8697C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 15:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717514182;
	bh=Cj6GpWHHM62dudmcdPMF8XZyMMWZrjaTPP9lsdpM8ao=;
	h=To:Subject:From:Date:From;
	b=nsuKAkx1GBRfxXIiwGyWcQLhxEAGHICDYEP4rwrwNlXTo5ml8b0kvUdJYdL57ghSh
	 UTZ5g/j3qVWsVd9l0AJkHDv8Sthcs6ABY22d3NWTZIqdTeYDLEusiK1YFOoXWETQep
	 PX6FnXE5j3B8MFuS/e6zelNb7YfW4SaFAYWbqgPC9w8H6stjqRm6dHFpM9NNpss5nB
	 YxLkwj1r+KjZFhGJCc6dV1ZvV2yHIlOue7VsnAXL3UK2vVtdAHjWKKq+91jHD+NhMs
	 LkcyaELRwJy8uGKEngRJdt/qWPBC9HSwK8xI4DMjMvAAKLSTt7f5K6uUAXYFhT9kVE
	 6IDBpkKIYyfZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5C2FC27C52
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 15:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171751418280.2278.13683648814964318572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e6b2b0be21cf48046f316250d87582377900ab90efee41e2219628879691bed
Date: Tue, 04 Jun 2024 15:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717514182
