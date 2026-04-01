Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77BD61862A
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 07:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775027134; cv=none; b=hUdbvEVrd0eaZP0GBV20n002bphJckPTBSJo0HQcmzYy8F1VWoY7u+3oyxMKHi9gU9ZALLDy8ZKA0zWjXpyH+RbSXSsJ0g9K4dDIpwhPfmxg8Q6Gr72wtWXkVxRHEI5sp6PQJ+kwaAAHWBITEaJumEuXBkdA3doE4jmPUjN1qNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775027134; c=relaxed/simple;
	bh=JeG5R1hn8Zh5l/bb7e7DXGA1bTHuVbAOlyeDYYNKCww=;
	h=To:Subject:From:Message-Id:Date; b=dznLsr0uiZPYuZrSnTQOgchIGz4UBR7WloDq5rOL7M3Y4J+COMQV1tHQ1yYmcOBgrT+qXeltFlj77KOYBP5z3ayw+MeNXf7x6x31z5ej8ADdEHRpUcHQaYA3PJH/OzKIYO58Dg+vZM/tY+NsExPTglLMR2kw8jrE8JtQZ3nY+0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nrLnVLyh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nrLnVLyh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4FAEC19423
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 07:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775027133;
	bh=JeG5R1hn8Zh5l/bb7e7DXGA1bTHuVbAOlyeDYYNKCww=;
	h=To:Subject:From:Date:From;
	b=nrLnVLyhjHqHxhqlzNdiHqUMWIQqb7BPBJVWPslaO7KCa5L3siZBhrPZHQ17G9W6j
	 ZWSkfvIYXPCw9NJfWCJr7vQmBlu2vC4OErk0dwrQLLfKJBWAMiorvmTfYvH2SBeaNY
	 IY+WYENhc8/y1pzm13a02EARTLx/w5DimDjf2fN6x0D1YdP+Ds5V5LUdHxnIiwJGnO
	 WFkddJyb58s2baWh9dS5AFL4tPsM4Gu9KWRJoBMRe5PP9L26RDvGC8xw7VTQ7Gw2D5
	 pQ5S+kQhOUC9jpi6DEPe/hUnJb6Shln4UpkC2O7cSdDP64eidxS+WTmC41ArhiHMY4
	 dRb4DhWGDfTmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B18CDD35144
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 07:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177502713368.1884.10436140913859728879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c750f9e67096a85f48b9db4cd0e66ab01320fb06d807686314a2f1a747dfb079
Date: Wed, 01 Apr 2026 07:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775027133
