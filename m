Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C929230BCE
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758032994; cv=none; b=DBqL7lKq3mPD+a6T+jlskq5dfC5Ks8andWKQbl2WFnQg9OD1O71YZTDSvNwfTVeq7ry4CzurPE7wS3T8WdGNNRwb17Kbb+qZzfjdsGgM4AWjU1CjGWrlvWljEhDIChmuD2XxByn+o38VtNCDfhAC7hTpW7bHy84N6CPdEx+uMdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758032994; c=relaxed/simple;
	bh=dRBH924OjwtEasxjBRv3qd1sXa4a+8eLSnQub+3YjFo=;
	h=To:Subject:From:Message-Id:Date; b=KYa1qd9ikUEQCH9L9VckpRRqe7UH7AYjKXvjkwjbXgboNrWyR1ffO8U+tGNADGHxDE4eVioGdiGKVe7BmNv1szN9vbdv3strns4uArKWm6ZitBoWWgXBmf5ECaYGDDSL4O+qxhoCduJh4lfqp1IJvw4WmK5MI7w3V22iYpICb2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DxI6P9W+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DxI6P9W+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F92BC4CEFA
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758032993;
	bh=dRBH924OjwtEasxjBRv3qd1sXa4a+8eLSnQub+3YjFo=;
	h=To:Subject:From:Date:From;
	b=DxI6P9W+ZEY4YIOUzaOhIGW6FWY/Ai5a5uvBovNkN/S9RB8Lc8jplXLZ+lOG21pzI
	 9Y+D52iUybYwsbH82cPuW+ztIuRR1hGBJQmgld158ZZymv2NksJCn4Ki27IKNR9Iyt
	 aYQDcj3rNTGoIU9IasCdmoJn4HVw8oYFYF5JdovBAkDrloBi7nKazaimj0LsrZ+gvb
	 urXIHYSHzDDtzftY2lvQgoixforTdAGo+sds/YRaTrggBRp8QAfrhEbHye93oVj28a
	 2UfpyV1QCU8qSx5Zcm9FoLEYjfOp8uMryaQelCLT2oSxF2NIoB+E4AcSTcEeIyPoLm
	 vinXcFCsbJEWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904C4CAC599
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175803299357.7830.3046257651917917811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d5f212f28d0ecc608f79a438f2c1f069da6f6860a746126cd75b396c48bb5cf
Date: Tue, 16 Sep 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758032993
