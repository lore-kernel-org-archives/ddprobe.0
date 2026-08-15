Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6948530146C
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786772434; cv=none; b=miQzueIOTcj/UvpufmhSW69wYRxRR4i9qenkW4ructIVL3ccrAk9zf8YrFK7QEB1arbnMCElTILZnarXnchFKIku2np93aG2jq1ekfSgQ7JwpIhTK8dKc2HJVKd0a7g2xfHrMyRN8zE7kWG7ecRp7CC6cu+FKSEK/wI/irOv7DA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786772434; c=relaxed/simple;
	bh=GWGHEGu0aJMDLzHboHwT/ns4tuozoLsvwFoC7Kg9Izs=;
	h=To:Subject:From:Message-Id:Date; b=ISO+YKStU/JHpS9rUGF7sLL5dF2zozNA0IQEdezsfJdJyj2ZG8bNWgV0nYJR000L0adddYpAzg81FzcAAV7f3l92kCAIgKRq8mwiOikdtSyiVQSbEWpJhfAHzgz9XuZgx3hqo0aOMxxeJzmEojf8A0KitjW6b1FuExHcqhVc0BI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FQyJ1Mjn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FQyJ1Mjn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F018AC19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786772434;
	bh=GWGHEGu0aJMDLzHboHwT/ns4tuozoLsvwFoC7Kg9Izs=;
	h=To:Subject:From:Date:From;
	b=FQyJ1MjnUihSP8Vdty4CaGc2zoEtxR6xSxZ2WQaOuMHhcV2o70F3j/RvhKW1tl+IV
	 mYfd2b9yOcFwSA8xLeEBgTcth4GgSOJBfnClh8Kk7+RLX0It2eYawTOrRqLMxRW8rq
	 NmC+DsvqUtn7DfnTlRlxpvVY1GcjUdxjKDaoCvvzRGSHG1LLEIcAlAYxZ89zHCFAFz
	 +ViFufJ3qThYa2YwXdaOlkO6BFtiq8yRNI73yvWSu+7PTBtckOzdX5ejn0JPO9WHnt
	 q5iTdDz4aTp6Edn01nHtRy92rKbAmLwFTAf/Me0/CGltUAle1jZ8B2WrhAQOrsghSB
	 HkM5WKY4WZ3Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C403EC5AD5A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178677243377.7236.13553295502948121790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14ce4d69429c7e11baefd8ce78b192c09626c0a20f375f0d66bcf2591d282462
Date: Sat, 15 Aug 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786772433
