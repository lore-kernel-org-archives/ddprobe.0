Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BB1118A6D4
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 14:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763476914; cv=none; b=MufPgF8wxmTizwu+lGNQAqYsx6W5lFfalIvSosuuyHvvu3h528im0UfVC6QEY/i2+5lgN2r00rhp4Y/b5Z37iv9a7Gsl4WJLxho262KCxN+zLwBTfxhce7svyRjOIhOAN/YQhmmBDzgvBdbmgaQVuNsXxCR9GFvkao04oe8F958=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763476914; c=relaxed/simple;
	bh=99VDnceuboD8F0WNolpCdrlBNHcNAmr1oMcb2trggEw=;
	h=To:Subject:From:Message-Id:Date; b=t864a7XwYoK6dVCgmqw3OiytTmiwESHuzKQ3uiWJiu3lR8z+mRQkK0EFfCCTxG/pxaeSeYuARvqMSzaR5WhHvLzyVGS69dyL+g9J9LERuUhe9k5fVW2QFylEwWOTCvDXMNMZ/LpLZAGoLVO7Y3vBJYHc17zn/iH/Eno0ybjkGCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rhv5IcjJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rhv5IcjJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31C5C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 14:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763476913;
	bh=99VDnceuboD8F0WNolpCdrlBNHcNAmr1oMcb2trggEw=;
	h=To:Subject:From:Date:From;
	b=rhv5IcjJQgrSQWnlFdaIn9j37U6g2a/HmmtE+dVQSxLJsvSYwMzlsEDTuKw+pBnHo
	 +ibQ3zMGBJi2FvOB+HV7U+2+dFNAqb3pmJxBiFmhP3F/3cz8kySqI+lpmXQgTKD1E9
	 WOGv63ODkHV804p529B9teXPlUidEGQIaC3PTz98b+KiBpOmPY8SDayL4MeBljbSMe
	 oQa44ad2HHNnynX2T2j1fM0hJzRA3gyjEZ0od68K+GJP5MFwFYziYZ3IrAbwU/8/nr
	 8+SCy4smgEpmuIhqoMSTnq/xLFcm/eJO5tM+W9rnd3USx9E5msJ+llBLimSZeU3zTM
	 21HHxzHtv3dEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC7FCEDDA1
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 14:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176347691358.19354.17482021362884144015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a6b41fac50ce661c41608a47acc101eba109ef30ed5e71077cd259d3a55d099
Date: Tue, 18 Nov 2025 14:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763476913
