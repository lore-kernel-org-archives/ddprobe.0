Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4132533E1
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747268394; cv=none; b=s2dEqfkgIw6aHqXJIlHzWJyDUL4pxWFzc1x1s+pkoCDRvoygr2GvbM9fPBVCNjzIWisnDU7hxzpo4u/IFjxNsu6UQjdu9yO8t+cFVMA0n1veWtewUBqWffs08HfIyFGRETCJDArD3F53CFuHpUZrqyeTmhMlb0Uqj/XSM1jLqGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747268394; c=relaxed/simple;
	bh=XcIxu0b3rHZotVgj/wnJViR+PPsfOyQH8NRs3iNaBJw=;
	h=To:Subject:From:Message-Id:Date; b=CfBKXSMhnECgWwNg+JkQZ8hvlhlcmCwvz5NtcBMr/5pFU4pm1I1r649OHDTN9UQDHNAMOBLqKl1aQc+fPmljLuPOa4AvHX9G9GA369xiT8N11f/35PuhQKY0297zMvX/+isUHkeVkThr76cTu0+77jqSQHyeQINjG9AsJ1yyAUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rinkkUg9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rinkkUg9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9426C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747268393;
	bh=XcIxu0b3rHZotVgj/wnJViR+PPsfOyQH8NRs3iNaBJw=;
	h=To:Subject:From:Date:From;
	b=rinkkUg9NP89KQmI6bdta3VZ1U3XMy9sOX+pQ74JOE3hghxviO1BhEP9MioKzue13
	 9nsXTs/GP1frSZd2IQau05CILsFIvpxb71OaUK52ADwScz+3D7+rDK6Ne/wI0Djkuq
	 PriC/OKwVZjCalhjCbX9e03fMks0o+SdEBOiQzS/qK4y4UoqA5SA5WwzBkFNbcn/Up
	 SZkdsskUMChc8PPG81iSrOazaWxjNrQ5Sk17NFKQjy8NXw+X527s5Z5TeMJI07yqqr
	 VVyTP0dFvPoKabLSbKqjT7ofgdVGC/qTG5GQ9b9LsGK4MGM5P7M2Zy+dqNax0kxL8Z
	 vkh3U4jL3uLwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93188C54754
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174726839359.7442.8829295092278769715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc44b7baaaad3e1cf1d91b86d6b40d7a3485df3636cf1503344bbe43cc00e534
Date: Thu, 15 May 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747268393
