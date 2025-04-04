Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44DEF1DA53
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743772195; cv=none; b=DyQwh5hgjVCh5ai3J71ZLWf55ftSFBAPzr8IZjjZep2l8oJJzvqIbp5XsS17aF4rUn3HuztBO2rVo+6nY7wcba+C0h2mOA/u7BynUH0GiXv/mr0V/YxhwTmRUTDUGuuujM235q9k/oWIDpNEfwbaFzs2F2YxrCP5R78Y5A0emT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743772195; c=relaxed/simple;
	bh=5uX7sm41UoCG3Uhody1nqHQE+uMhV4hzqpDWFlC5Dhk=;
	h=To:Subject:From:Message-Id:Date; b=A1JLv76Xi3RwvmEgK1kwIvUsNqGw7zT/XFyZRydtsTG1PVsu3eoYpqtR53Yrq/jtidT+GWkZpITmzVjItCwppv6cq1RJ07/fqfEord+xm+URNDhENzq7+DpUZTiFN+ev0/ks5e7H2cBTgvORlswoFYBmKwZMQWhR9ST3aCeBOfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tvi2KQvv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tvi2KQvv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9FF0C4CEE8
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743772193;
	bh=5uX7sm41UoCG3Uhody1nqHQE+uMhV4hzqpDWFlC5Dhk=;
	h=To:Subject:From:Date:From;
	b=Tvi2KQvvSJMMli72xqZ5x05xquFhz0NaInme2r/MLnpVYt+jdw6SKB8YPqRGeP92c
	 bydwTIdr80oEUocPVZfspArkp/cz3xTvZYrwLSYj75g0ewJMXlpiZDNHCGwe4muMMt
	 DoptUAt8lSEqJpwzdL1it88LkrlvYUcHiYbQCo+QTa464WrnTaNMwq7/sG/k9FyqOC
	 i4RHeFTKdbcTCvhHpt4yT92R/5PO47OZt/xC1Y7pdm+Ke3j0wl/mBUrXynsx5gGTJj
	 ZNTbnn7A5a6qeRjcurEnJQL26sO19r6uoUIsaaxDBsN5dd/iB/GR0xrSYU9nwf+qCA
	 6AS8YrDaZjAIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C59C36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174377219360.27425.8814494001281815304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6aa1f154f698f4aed7ccd34d0be5546709f70a14b3859b6cc959f0c885f2d78
Date: Fri, 04 Apr 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743772193
