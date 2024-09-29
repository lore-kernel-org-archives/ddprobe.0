Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27DDC13BC26
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727602554; cv=none; b=el/ZL8/GedRsGCFfQECz3pojPsHG+rqgSrxzEkppq+4GrRifoYJpO4VqGWI94blkHRh/4a3MnL7gOpMsiBSZGf1bUDwKwiYHpVwk5N1eK0g+5gWNM7LdTr6CnjMK1ClENyitOIRMnSDHfC4yK0HGSQ8V4PpYV3AjzEX9PDdLDdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727602554; c=relaxed/simple;
	bh=5JXSCfj60d4DGd5E3kJuhFjInA+MDgqkgoaeKE15Zo4=;
	h=To:Subject:From:Message-Id:Date; b=VJCS+O0ye5D/IU15c7ScMQ9U3PFKT7gDcLzk07H2WBDHrjBiVR7ikF2vMBD14AOwZ/ydb9U/iZ8xG+yN/v5YZVOWI3nQW+6myNxPpW7tM6EQ3cAIk8Ot7/Mh24NO+KoIBe7y2jFiLTunWYITbAxM7lHKE6AFQFDX6vczkbOkwqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XTQhz8oS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XTQhz8oS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A592CC4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727602553;
	bh=5JXSCfj60d4DGd5E3kJuhFjInA+MDgqkgoaeKE15Zo4=;
	h=To:Subject:From:Date:From;
	b=XTQhz8oSc9NFUJa/RMHzMNF601XiCuDOfmLviW78wy7Yj2dZegqC2AlstrEbV2Ez7
	 aaSUSWK5WVUlxWuitIuIhOcYC3OZUc7mnbXwjgZ9ZNPs2KFq787nmTNs7muvhX/CcP
	 f3i05h5Y6lzY4/UytDIJxm8g6i0pz7gAMOsVxrv9nUeJ50v2B+UW5V6j+gbt78W3/8
	 mNd0X/1yri7ifotJyJNML9roZKXtfKASVTZ4ZALxAI7RS4DMgd3FbiWkf1nSVYSySd
	 PyZPeZbNxKNCkKwqeQp9O9Yain+dMV94Qp9BpdnwQGQu+6FVburom5CHgeXxaI86KC
	 jQ0XwLB1bDmyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911CDCF6495
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172760255358.15597.5408480936795660478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bc8d5ebd65c45b581eeddd6812fce3463736ea7a09568bbf5d18e6dbcc384b4
Date: Sun, 29 Sep 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727602553
