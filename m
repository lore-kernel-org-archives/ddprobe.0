Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50B63266B66
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742838594; cv=none; b=e8GZ8BJUG0OXRANCebASkH56g5VNoW3WFl+cJCzdU78D/hBYbPw1JBuoMmM58UV3xmbwA6RrvzwsioCL+K5EqWj961az+wjWpKScO7kM9/fXfnlJRDqNNOA7VmCAOUUHaYu02qZa8UT8zzvyZL14oPD8BvMuwuwsoP85WCDqRBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742838594; c=relaxed/simple;
	bh=g1JMZ9x2G0EyFwANNDiBT+5o6QgSnvSlLkAWaVJyDFs=;
	h=To:Subject:From:Message-Id:Date; b=lgDYAnDRvtX1nei4dmsHamgq7hw6CY1gUOWSR+Q33UeyamUVuKa9yXAdVso213DZpGJ8njFtrDAtBcvbG5bK5yzO6kEcCzMTPhi+1EwPYP3aR+JKhz36JzyhAKO9dX9YzUPjOdRD06wIRhj6UcD+/9pBXJuK0lqDvtKdzaTI1cE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dl822biw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dl822biw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0ABDC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742838593;
	bh=g1JMZ9x2G0EyFwANNDiBT+5o6QgSnvSlLkAWaVJyDFs=;
	h=To:Subject:From:Date:From;
	b=Dl822biwOEE8QueL5Ct+hrqxhUz3AxGKGTBTnVHvvngP3aFWZxkj3FSmPSy6EBTN+
	 NcUgnmFKTl70Lj7QrbD+SeesdL36pTQdCfM0JrXbBi20yGzdLaSBzLYwJTil60XYRe
	 pWO3/yr1bhHQGITeMhv9QIYvW1l+vmQrRezHPfwfN9cXrnD15xUeYp7d8DEbtabvNQ
	 ZkieG7G+aFxrMm1ThHb173FD5ZRhq3LiZMiA+CwlfL4IxuVRoQQC7AiqOjMGjjQ0rv
	 yMxRnGDouZ143t+GBfh8wIt/hQKpyPM2kNiAGeDiBmlIMDtBbkVSf31lkOoZ5QzrFM
	 yuoANGkuBCvmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3E3EC36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174283859365.29027.16200040265690324002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3efde38ade98d65a341b5503a703ede3576c0861c8449a117a2f305b269af31a
Date: Mon, 24 Mar 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742838593
