Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F7F1BC2A
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 00:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772324094; cv=none; b=s6faVhHF6na8XOVIMmd1XJhvBGIsZYx6oms9E4xMEDR3Vobc0rW3v2zq95NBY1HYdQIenB1FSYUmuoumiNu3cdQuRboeltVkk2wkuYxHqGWgmkMq3bfUPkVtHHpwy87V1U4OzCxxReDwEWCv640pf0G+D8NM8pb4SP55se7a85o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772324094; c=relaxed/simple;
	bh=Wt2XxjB5aYZAEo497Y75wBOIIb/xDa0NXzjYj5WQnAs=;
	h=To:Subject:From:Message-Id:Date; b=o90QTeW9PYIKCuXnl+QL+jjW4QwfOLptqDqYsOICpPcVB/5Mai/r5EA7mM0vbuGRBLq/uRSgx96IVLD8h4ETSSx7qc+KdJf4c6Ht2HHPU5jKsGMiKS+o4UAOwtRUp8RNCvSi++JmJ7E5tgooZuIFG/lgn9UpmYUNRAcO70dseFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F92V4ScO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F92V4ScO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC8BAC19421
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 00:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772324093;
	bh=Wt2XxjB5aYZAEo497Y75wBOIIb/xDa0NXzjYj5WQnAs=;
	h=To:Subject:From:Date:From;
	b=F92V4ScOB3qKfxvHOBdM2Uj8/GeQKr6RLTZvppE3mLN6yzOJV4MZZ/wlzVuBS/f1P
	 6rH7dEGSu0Dq48ettgFThLmvSstuYND0kaKrXNGr7c20e0bxb10X7VMFIO5rlUlHLh
	 +wDbKRSwqoUvZ/4F2IVN5CQs/y8Kr91LhoCtFzL1R4UxjOcFG8uh8TTDV0cUOMwVGA
	 YhLdwqi+OwVlvuW+C5Rh7cSY4/AHPyg4wbZybqVYF5rmnghfBKP9H/jDCjGt73K5Te
	 sXbvXZq85+SjB+vOzG2iewLQ+TWuDOTRqzRTr9rdtF7EWqN4u+aaq972id9M3EZMnm
	 2uGxZL45+yhpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B43FD0040
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 00:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177232409358.31016.8362201015495265222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19c18d32347325f4814b5e2cfa369765c554849eadb5a966973ddaaaad8c01b9
Date: Sun, 01 Mar 2026 00:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772324093
