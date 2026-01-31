Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20BF872627
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 14:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769868234; cv=none; b=skU4kR7wUs1UmBYwFyFbqokQ5K6Dve93bCrUh7XZWsk54y/JH+qV45vGhMl+DfhrnfbRzZ3fXAe2GA3UbOJoWyhmQb6Bq5dWTqv/YakPfnKHjPOXgR8yfA2P9A9asWOmYixZkVHL0LWYlBwy0bl8k2ZEJZJXWxiIl9U3mSvcu6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769868234; c=relaxed/simple;
	bh=hEv/j07290Q/cCZN+HJnHD4qzBPOzLhHExU9J37JhSc=;
	h=To:Subject:From:Message-Id:Date; b=bOR288EOoHlNDs07kbodAELMqvKtrI+mXzF+dVb9kss4RRLqvOBHTtHKCzUSL2xre4rRV37UP5iGB1g7mIErM/iM1vHp4p9XTletsoUk4J6GKQjtLfouQlV33RHMc4l/iE8//nTRlvHkb0rXi2eSWLKs9/Z8QPWz2AvSu8Qo1Q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=acTGLXv3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="acTGLXv3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE11C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769868233;
	bh=hEv/j07290Q/cCZN+HJnHD4qzBPOzLhHExU9J37JhSc=;
	h=To:Subject:From:Date:From;
	b=acTGLXv3R+bO95ZQKETOVoSd7MgBGBDkp1U5XjevvsTbFqc6bjtd674ai1hoRE3o2
	 eNQRcOeQV9SA3pk7GvYENaq9/ye7J3fT7kgmMJLKWNJtU5TfmzvMlGpIHuCK928KR7
	 rnCJwetra3q7v6ygXTY/6FSXjv6Xp9KgMNRa7w0Pq/deVt3TkSXnMtpi/L1xB9d0pa
	 4unDjNvMMvT8bimLD2G07vZlx4MnMhiL0S+s2iXKrMcm1LuYaSbr7fofhkmlviTRiK
	 xuXoV9cvCHe6sQUBZfiJzrwSdkKh90d+pOTDKVsUmq8RMwD1fMyRw9IleS8KqM5oiP
	 ebyqAVEyRzUsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C99D79767
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 14:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176986823357.23301.3615835176902139830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de023a19fab1caccee7cc871516913b4f6abe9fea977fbd53c6a47c30b37484e
Date: Sat, 31 Jan 2026 14:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769868233
