Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 454B91FC0FC
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751658594; cv=none; b=PwWZ2hm1n4qyXorcH5AzB0cJmeVf/VBjDTdnZbuu9drUQ7gNX46PbhVKmBxAzS9C40dYHgNXUYyA7+d+KDjKLeYcDaHWPXq2V7WJeBRAxbqaGsJfVopkGqYl5NLdlvnfz3EoHoBQM0LGR8T/vCbU2m99aHRSXB6GjaJRLy8VByQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751658594; c=relaxed/simple;
	bh=h8wEmJSlwLgI+8eG+LBiLC6yGWpibunB61h04ba4lek=;
	h=To:Subject:From:Message-Id:Date; b=gThSbtmj37LdqrNTlMqA4NuppAHM8k8DVZNG/ha5Ujgr7zPWBcm6G2pIozMVmIWugBOLXYxjP2a/C3/clbz7DQbUvRQ4ImZ8bfiYE8LeaM6wExmUzl2HOuqvn3PnrVt+uEsQj2VjYlocN06+3tLF3PlAn0Nc0j/m272LQdhM4a0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TYvyIwVv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TYvyIwVv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A97EBC4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751658593;
	bh=h8wEmJSlwLgI+8eG+LBiLC6yGWpibunB61h04ba4lek=;
	h=To:Subject:From:Date:From;
	b=TYvyIwVvMDAVz+C25fpPdW1G1S+fCyon1y/ylI0ucJWZ7O804N230y2Ro7adKX566
	 Z7v8GZkmbcAX4zv8WlYRkwrY10UB+YNs1Q8NYkmhEySmGhxdVahWXN5E3ffjqy5Qtw
	 kHijl/3OvngBd2QoyzEFbkoQ9SOMkjpEr/8oNtv0o4chC51H6txGPdBCn8NQCnGnKZ
	 uxvv0JHe6COO6kwTVtlnGyVBxVUcNEZ0WWxRwFrgrPxJKZzq+iln+fpQXJHl9WTBbf
	 I0gSwa1XJkQxWfxay0VVR1UIyCqN5lF+ytgcKjUYV+hbt55tVy5DOZMf3srNKyd2Rb
	 4GqIIBxLb4fAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9514DC8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175165859357.31941.8741043411919176718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5acd9a81b2ab588800e6b4cd185a552025391ad466a8b7f86b57603d96603354
Date: Fri, 04 Jul 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751658593
