Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16410328B10
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751619596; cv=none; b=qbuPivFCxn5ajDiSydG+YOP5XlMaf80A8O1g5cC39zWSATb/2hR03mpi2WDT2jmF7l98zt897vZhsV4RnAbPSPWLINrXL/YFhIfi3xng3CV6PPzStEbcOUzC/QMExwNFxTzMCU4y4gh2FVIbqlsdF2duzC55BxQzNaKTqDaOIx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751619596; c=relaxed/simple;
	bh=POEnF0FDr8IEix99DAEyKtFf+Qt2Ak4yRF6YZ0woVLc=;
	h=To:Subject:From:Message-Id:Date; b=dp3qjLpLpQJ0ureO4R9aboyGNRAY7Om7Q6Tza0bO+T2icurmL0VaXqWn5UGggIGN8Ajp+bLQtuKmo9vwz0PS5q9DcP+o6Ql/Ipy8oMGsc7tb4PGnLRFMU16M4/OqssnXTlIlQzQTQ2CusZxI3MYJhiPJ7uqtj2HDtPeonEX3bJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QquJc9pm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QquJc9pm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D1C2C4CEEF
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751619593;
	bh=POEnF0FDr8IEix99DAEyKtFf+Qt2Ak4yRF6YZ0woVLc=;
	h=To:Subject:From:Date:From;
	b=QquJc9pmqiwANoYtt5uzjBtfNCGKicAhjrKrOpXTzU1a8mgWZPV2ouchlMaEsWfU8
	 5yniLXtE3yebEqPlgvgpVGJTXHw5/F1b2wS1CjCeDKV7ZlhB0HDsilU08PS+ea5sox
	 3r81fN6NIUCk8hMJk4O1WaJcrKrG6zwtN9uxHGvn4CL4o3xJcSuanA2aA5SPLQOT+C
	 uYvhP3sJc6GXZfZyAJfbRhNq+ItlXL1Z6eB9x93tlMgBd8NPOTEtlHnGZ/KCjSo0AT
	 kZwwRYVUePOwxf69MzJ/SC3YH5ofYCuQwyLjCTWcqFWCanVysr9qxHHVq2lw5EU4yJ
	 dgqk3cvjY5KXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECA1C83F03
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175161959357.15643.14826545471318135176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4b6d40444963b4586bfeb2c209abb0874436a3b069558fcc2c61f6d65fb5bf7
Date: Fri, 04 Jul 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751619593
