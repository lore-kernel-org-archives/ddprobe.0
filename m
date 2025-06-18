Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F118199947
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750258194; cv=none; b=KGHMXZAK/ltGvEKvXj8FI1iUZhyomK5XD+lj025s19iaAKIcPkjFClHCj4G6hCKF6YIR/BpYYmSxhi/n5BNcqKOpDSYxnS/cfLrXwmhFO7H/Afu0t7cBnFo8iugOSme/Y9KyBHof6EifRVIEkfr9Jfwf8RG2PogWtOE+NyRjC5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750258194; c=relaxed/simple;
	bh=H3+nz1RqVMuDgNKwDNZrL9m8sPPbSelsyWylCzPje0s=;
	h=To:Subject:From:Message-Id:Date; b=tgC4FHMVpI/7LpRbpHRpEaxw7VcnA4xvBNo+232/ETiXM0BKhn3uCV4F6ln8XnqwqvWYYiR0+XQuUFuHVsUDDirhEVDqCyXEQcOp+0vbpOQxDC+3TN198SyzMx6RZq58sopMVqPcuul+zj6ZDW1wXwc0Z4D/kDLRAJdi3UfzjCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gWfhAZSd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gWfhAZSd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3233C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750258193;
	bh=H3+nz1RqVMuDgNKwDNZrL9m8sPPbSelsyWylCzPje0s=;
	h=To:Subject:From:Date:From;
	b=gWfhAZSdUsGKXvqWyzr+A2gv8qyDEUQOighiF+iFl8GcSwgiGe2jNIuQMbi7/yXz5
	 X+bCZVLMAjED9XWsUM46s01EK2sxVi1YVq7SnGevVz8+tyLQXKMe9S3RH6ZkMMqUQN
	 U3GGPkJqPPM4rmqjhrOOTutlK0m/HSSPCnmy+D6uNUi0MHGWo3Bu0UnPmxErdTFxNK
	 er4MddxxjK9Fpu99rrSQ4dhMEhUx1KkXlqtl6a0KvF3GF6KAzb+ZLcNOl4zS9cR1Jf
	 TuDvhEBeS8kFcvPyfHrbXXum3pAHHrgln7rTjArBRbSjAIJrsNQQBBSq2chxHo/ZEF
	 09j80YLXODdNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FF76C7115A
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175025819364.30231.2422269066566546649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e53544a38f6fd9cae60a1063c11797d10fff9953154748642335e45f4702200
Date: Wed, 18 Jun 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750258193
