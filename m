Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 596353D5656
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787495434; cv=none; b=cCFdiy45HM+F5aIV+HM8jwKWFyD8Vv82hvguoI+D9HkhECnBbp3i6P27YdM9XJg5ne6yDflWu/gm0+LEI+Mp4cQ5TOZ8Pr2ufv9FLHEwxGASrHXv0Bu68RXlq3Mq+7+VzqUwpB3kVERP53X+Nf4sLZ4FLQi8RfqjQ8+IAq6eo9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787495434; c=relaxed/simple;
	bh=ErjN3jXQziqYBSPKFppQKg0lPM7rP0lSkEZK2oWd1lw=;
	h=To:Subject:From:Message-Id:Date; b=fyomH9LBIydxgqYVcp50p4mpoPzdOCJ88151Jmhc5G2Ik7Q7EgVY0yEVc8tqKIyaRn0fGTfKQAE6N1LhYOLBW7rwtuJM78pFINkOHAKEnS8T9JT0yr+88zzjlJ+XYsj255OYvOhHygTdZyGPSOJqKruYSo1/TirLi3h4m+AerOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kY+XMJ+v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kY+XMJ+v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDB77C2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787495433;
	bh=ErjN3jXQziqYBSPKFppQKg0lPM7rP0lSkEZK2oWd1lw=;
	h=To:Subject:From:Date:From;
	b=kY+XMJ+vzrqLRW9GkXjo088xuyZKZrqsJAxJoWfsuI483MMo9jHV6LMPpPEHz8SR0
	 g7LDqT1FoBdbdVlfIZVS+At+z9dwbcD5D785mdm2OPC6EWJQGRon68EQOxzOKUAHRt
	 cq1cBaT+iFXxJBWJShIlbNwB1R/CTqsUUJKBJjfdPfx7bYuQ98rf3zeXD+b1uRgIes
	 IdOxIaf2QD3LXxAzv93Uw2D5IEhkMosUy1J3Cvkr8ZgDIup+ztGIzW+8f1q9+iIhE7
	 56WP5L3rh+RxjNUO/D+FjkjIi48OmugSimy2bQujsyFEmYow8P4XLGzayHvhqNI8kl
	 odpKZyuDgtS+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9E2C5DF97
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178749543369.20301.13501463357903771679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87fb4f00810ac45b3a82b38ac452e8840275c991f3e5d6f8ee6dc0272913dff8
Date: Sun, 23 Aug 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787495433
