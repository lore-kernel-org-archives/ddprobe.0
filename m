Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339192AD11
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754165394; cv=none; b=LtFhm1wUr+aoMG6ZHpNvIZtB0nouMv6FCLyNKsM8Jur5IYkMoug/iQByLJSwzOY4qx81WSZUomIdj5ZEMYdllPfvXYgjsQiGkL1dWdwW++R1h+imRO5Yn/rhZCbC3ttLqJ9c1RCR0eCuIi9UR+dsLXDlf4Xh7Vy15wfjISV9sZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754165394; c=relaxed/simple;
	bh=rDFyGg/rAkypTgo+u6TLoVPfeHi+JuU8pv+qra6ms7U=;
	h=To:Subject:From:Message-Id:Date; b=sHB9iNdNWhlqewQU5e/lfZm3qJlyDSY1TkTxEMdVPHsGmI5chjNP26ZcWAG6+V5B+Tq5NQcPbt93Pm6pNw7M2ZXKcZfHYfgHXlQXJMxfnEBLwc9AjmldyCg+ZHOi7ScXysHQHRD4osAIcD2BGMpunwrtSUMYWG88C3tYPQ1wzBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=snKRpIsH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="snKRpIsH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D3BC4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754165393;
	bh=rDFyGg/rAkypTgo+u6TLoVPfeHi+JuU8pv+qra6ms7U=;
	h=To:Subject:From:Date:From;
	b=snKRpIsHV0AelP121C1o8uf0Cj9YUGYIkFldtRuoP7u0VINyxfAgsQj0p4zIaD6dA
	 MesEQgwPI2o14IhjxwMHkePxiAT0El39lyLQXLE8FU6Ziry2uCKMDTzO1KYgB9eu4E
	 XMbQSt5djtyI4tXcAcI93dK/lMOxKq38YRf3w+3t37x5EBjCBeY9rVg61BZklzW0Fq
	 vib9Dx8y2mKqCmQkPvZ8PPJyrr63/BD3m9i39yPYfmaBz84kq7tIg+xQtHmRHhpWJ2
	 f2rA9KdwEbZUtFBJIU677PIKty9UmEht/WzraPO8j6AuIhm4ybJqB7LT12zzkLdA40
	 8zCTQ4ORM3ptw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9254CC87FC9
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175416539358.30408.3450916552594123959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b71ae3f81a5650aebb4d8f4b6da6d7e0613748e79ebbf786ea37822560a964f
Date: Sat, 02 Aug 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754165393
