Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 239A73CD8D4
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788462034; cv=none; b=cDnPRkQtpVLYXkpzvAlGrVXEartpsrGeieA82biAHZoQbFr5YOACItgZJYpaNDLWvorL26JqBhkbU3nDNXcnY8Xox8vco4OHFizTgoN8APHSGwvKpn9+rsTkt6n7xLHQYXA9Kz9/bgOGPHC63Om/ct9mQuht51nvMc1IhA5xt/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788462034; c=relaxed/simple;
	bh=9ErLA1NQqg9CD0xHTMd+EhtRMVBQ1aNu1rP3/thb7WA=;
	h=To:Subject:From:Message-Id:Date; b=WnYY64yw3lTlcwoDrMGgf/h2XtmhxiTxrnfvfhEMJZ8TAzxfZypRdyO1QsynsEsiwJBF1nwPKf5soPbRoXUhxCF89wh3sPJq2+0LkJbgfu+lDDDe0ZZzFhuxwpba/iGcAy382iCJBT0+MncmcTnI6AISD/IRy0V9eNqQhbSwua8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M2rRKeev; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M2rRKeev"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD154C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788462033;
	bh=9ErLA1NQqg9CD0xHTMd+EhtRMVBQ1aNu1rP3/thb7WA=;
	h=To:Subject:From:Date:From;
	b=M2rRKeevxuEhdNcg8P6T7ScPXa9j8sWcVzO7v4XsWfVFgb0kZqtzJSYqYyThj3shg
	 YBYvf65eLda0sAxPvDmMpvWtGg5eFI4+l45tKK7xG0CfSgJ4eAWOnIgvZZH3z6T6Gj
	 NIlEN4KTgQuV+FU3g1NN03xSO/2+kxeN5VpBeXmonmUAUQEUQBFdgfqca0FTwovBn/
	 bhL5qRTgU9ppp9+O0r4Hu2a/TWwF6OaP9JTKpb2z868z/Z+QEevB37uXxjGnUSPg6v
	 YqFkscR2Axu8V8jp+22rVbVFPcM+9PZ5Pt9/owERYdHu+M8FGsSGecazVdTT33vhKX
	 rWCNzQ7A2uJpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF13C61DD3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178846203368.14240.5995484015121068808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2ff75e6131d6ecd736b28f0412a5c55da161820a48f4586579904699030b102
Date: Thu, 03 Sep 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788462033
