Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CB6B53E3B
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 15:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713107363; cv=none; b=Y8gSmhoDrdrXS8OWPMkOJlgRgHHlqyDlDHpiyOGOrdiDGTNfCN+3wJWYuq2SgEHoqVA6yVUjgQ49J7Mm8uoFdT8y+YyBOmx8Uvs45un1ypp8+TOmh0/3gER5h7EqTp70OCy6o4zbB9ETSDuJd/vC6pmPs9ayMLbx3Wdg+3ANlsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713107363; c=relaxed/simple;
	bh=Ud+OWYVQBGCsaQCgbei1YArQIfGiEiqNXPVAZ70MOhE=;
	h=To:Subject:From:Message-Id:Date; b=LRkeF8WV14WigeSaEkhx6q3ze240fizUzYsT63122l5bHscWlgLzXV8q+JgtyRYIgu0Hhfrr3XLDImj7CZkr0l+JM0aQshFGweK6Kl91yadwddsUTSBJfbjkKbOiEjjhvHtGqsn04cHnoQPDJtv+oy82HSNnikaaKud5/3SQPBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cphzFmfQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cphzFmfQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D715AC072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 15:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713107362;
	bh=Ud+OWYVQBGCsaQCgbei1YArQIfGiEiqNXPVAZ70MOhE=;
	h=To:Subject:From:Date:From;
	b=cphzFmfQVId/2ke0TNk+h9cv1ARSVqxvI/g9CQj5er1ByYLMzG7QpUpmIOpanbF2X
	 +/GHBNRuB+6efDp1ZQkLiF3tRjtM8Sj+box9i2ZnowZ7tBQJMQ0r4JDQ5aw6BdjRMb
	 FnzYc9rJINU54khEerV3WcSh7yqsreQWhUL3RIEDfY83TEP1zHpO/9+rjUhUV9X5WW
	 egvs9IxW/FwzsQOhJgIA05pJs11hzjJlRMJ+PqLUU1JMqje5zim9RPMsLH6G+F6X4F
	 XlLvR6AV/Cozdi8Srue5Rc9N5JJwuLX48HIrXVIT7++/rcc2XsdKkITcrbXi7Ct/sd
	 QFc683hYp8L4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C05A8C4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 15:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171310736276.6720.18330441959945992782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02ad346cd037050a473022d219f8ce2dad09a14b1aa792ff4f331540d822f71c
Date: Sun, 14 Apr 2024 15:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713107362
