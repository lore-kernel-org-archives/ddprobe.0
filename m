Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B58153363
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 04:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744863595; cv=none; b=RndtPnfalE41xdKJ2SlD8f0MAStArTSNH+Gwn9XfICpDyCwaw1Gqr4QBpMT0P0BCeJXETFFsJO0Dfm+EOQO9bIjTa4tAhdlyQER+H4yqimYtDL1A8etCUXpU4r0ku8L4PawSPzvJoZnOUHwmvoKN7GOvjHR4Ch/tXxscELgP5qI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744863595; c=relaxed/simple;
	bh=lps9ssnMyW95arvN0ndA4qRqAHaiOmSUsjuo3jnafy0=;
	h=To:Subject:From:Message-Id:Date; b=dLknoYLQ6NG2nPmkhVa70oyDIsZEwRaR5Xxq9auiReTFoa0+zkXXUleAXVkUOwBbPuSzHvK5Zp5fTWU63lciYXN/BuOQj287SR/+CpJGjm9BgyYKkQW3XsEndhLkXECBhIvU7iTx/J63TJgzsZCaoiQeB6CMkfTDFbj9e0HlbQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AUhCf4nm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AUhCf4nm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB3C7C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744863594;
	bh=lps9ssnMyW95arvN0ndA4qRqAHaiOmSUsjuo3jnafy0=;
	h=To:Subject:From:Date:From;
	b=AUhCf4nm+0R8P8zB/MPMYOoe8De+JYKm+VnBS2+fSDVMBueeN8VgzBc9iElsz8e1s
	 O5n45hK5J/8IIfbKbA0vg6Bv2bH97H0kVndVWEUBhC1dOVAA7z6AGCyIlbFQJrbsYA
	 KPrl3vUMKVptlpFmyucARsZ8mAX1qY8tr8ZdgzV+2OkhXujYKf0hy8SV9cUjjRCpOd
	 EWOuApg7gXBCBXu4f2Falv7B9Ve+lgStlrtDozOxMv4OgLVpLSaF5eU0uMyGMSJLJf
	 g5jD97Mceo4ppkk3lsrlCVdFC92WdWZ4bvOJUU/r7UFWmUf5XiINoCHzs5q0D+nMNi
	 vgPQovUssj84Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F9CC369B2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174486359367.919.11022915815045058481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4953cdef5abaf3536f1a8b9fbb51497f0cc36bcf05670ad3dc7d7349c57b6fa
Date: Thu, 17 Apr 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744863593
