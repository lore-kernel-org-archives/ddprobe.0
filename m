Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67BCC547066
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789842634; cv=none; b=fh+7qJMANpUxzca+GdzlvjT+zVWcC44nlQ6FB3LGFLCARyiqebPCF2VkzbWSNFWdjyUdCG128lvxe2y2dxCNu6XsOfbuswvvuFyqW2hOR9ZhRB20eYv3aet6nGlinDzy4tb6pnJOcAqVvTvwnBwa8Im7KXJFIUGblUz/6t/vvg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789842634; c=relaxed/simple;
	bh=1TluUIkKLzqi4QuvpZMcJazBZSvOHlpBqnr2xoKuBZ4=;
	h=To:Subject:From:Message-Id:Date; b=tq40Ud+1dxo/jHDjB86ncPnxDSmWNdrpRpddF5UdzClWa9Q9W+er7rB8g75IftC0Dd25dSoLpjxsvE8SNWeeJ9ax6MD8+n+eZ5UGKX0PZM2iki5bFIFPXj/gHHtUxhS2KkQuyrfFRIAjdU14+9A8KHY8RoY1Qq0AmxT/IVNL0qY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=epNUga4Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="epNUga4Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBA97C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789842634;
	bh=1TluUIkKLzqi4QuvpZMcJazBZSvOHlpBqnr2xoKuBZ4=;
	h=To:Subject:From:Date:From;
	b=epNUga4ZBCYvPVIAIoNyPUfsx/9fgPE2BWmOGwGMS1GzfBzX3TP4Olioj4iA2o3J7
	 /WRACXgWnLLl5omOktmcJW8up2VU/fTJ+C+YloQYevrm51TF8auQo40Zsz1b0+O6g5
	 oa4AhlwSn2ntmhO/ba+qDKZc0SOib/0rgev6CbFFAV3glYXSqgOk9+3liyWYmFXqYY
	 fQ5x+ONcWqRbv8q9tn3WniscMyhbfWxrKOdQSfShTd2QyvPYz9fJHsLOvyNIWd16cf
	 FuvBUeY3YgGWES+2KT0RL9CuzmAlWv8wVOtnL9HVA1bskr3atjfEMDpksblps1xPuu
	 yD8E7f4r1wFMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC823C982D7
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178984263368.6547.7696039653844402443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fac7e2daab24e45e54235389efcc370c1b46816aa42b4572fdabf51a3f2fcda2
Date: Sat, 19 Sep 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789842633
