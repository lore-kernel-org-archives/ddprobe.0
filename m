Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 394063F9C5
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730435754; cv=none; b=EV2teF/4Wid53ypqWwu+BYkxURAImrC+ZdPCQTLa9X4kwHYNgiblD6QaZzjlurlubiIGpIU5aTSwgnGjqTUL4EjzVc2+4GUq85gs0ewNA9JaM5aiT3WT1Ga5vZF8dOrnCOi6eR1wkvYVJMMOL+WAa2rqxPRd1AO6ObqAf6G2+U4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730435754; c=relaxed/simple;
	bh=E8GlfOZipcNigWKKGyDyTfpYINBT9b/qPh9acoibtro=;
	h=To:Subject:From:Message-Id:Date; b=C2GHrc3gyYQZnky33mP7UGt0R65G+ZHZcNDPTkgY2/rLA2qwBniUo169P3vTqsoXkEQvtOQv+ow+ECLCmUP+xc0rLFY7rTe6Jzi8emO4EMujZzYIFr+W9JwDEzXYKKc0q1v1mcvsKgxR+OA7xJkdbEWpSplbh9sVKAai5R131AI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iUrULUlS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iUrULUlS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAE8EC4CECD
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730435753;
	bh=E8GlfOZipcNigWKKGyDyTfpYINBT9b/qPh9acoibtro=;
	h=To:Subject:From:Date:From;
	b=iUrULUlSZ3PTND2O8IBLHJCUou9nC4CPwlWifplr+wDmqRRyneYrRmpmqLstuzzk3
	 CBMI2JbCqVIn0GIpJSOClVBlnh2i18d0UF3EnGD8u9jcrfEAjJNyYDqlxQV8IIKcBJ
	 7hUMex1jFizZQ9DAN7bF8ELZGeKQUS8L6KqAGaGH4HV74vlDMacezKmA1QndMBINE2
	 V5X75EOnhzVzR+dBKJAB/n7TWSfPe2kPeKvB21A7pHwtjywYgWDn53ziXlt+JN/CD3
	 WD/YK+tOKr83D0j513HB62DbBRpqd1QzfQh7t1L8l6G7QgqPlwb8CeeKXt5lSufjkk
	 +pgfgvrVFUDSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4BE5E674A4
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173043575363.10652.16447762417754788735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d727619e030e94b88d0bb2f84f3ba608c1bb10638370c0b67cca40259961a639
Date: Fri, 01 Nov 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730435753
