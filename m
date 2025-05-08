Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DEF828F4
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746663596; cv=none; b=ONJNSS9quJ8rejB1TFcWpDxY/2yw+aisbxItbXK43q/9dWDjsUH+TrHaxmDcPxJI2gT/6M3mPKzU+lq+wrNe1X0hcsV1ErCCq2UpK7xOWZ6C8NJKcqbkfZfO1z1T1A2vNY3deNQQpEP4yTH7TodXrjEUFv6lBf1hNhCjqEQSHS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746663596; c=relaxed/simple;
	bh=/PQ1mz1PjFG9FmsAiv5VMB5QI7NCux+r1XnNng2h4KI=;
	h=To:Subject:From:Message-Id:Date; b=oSPKD8HgE1ZCkJQhzMQrmXqGaBTJcrjskElhk+UBbc5oclvUdQjtldNrp2KiysO7K0ooEDEGEEIdWULnxXbT88FruPoWhzLV5yMCkcWDjlc0mbjDyF2YEYbKUZs5edj4EemmAnEZm0KXicGaseb0ZMAkRjzEScgs0+oNQcFtoi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uTMAAssz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uTMAAssz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D267C4CEE2
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746663593;
	bh=/PQ1mz1PjFG9FmsAiv5VMB5QI7NCux+r1XnNng2h4KI=;
	h=To:Subject:From:Date:From;
	b=uTMAAsszMc09f/H9cVZTYTG9P0JsvZEEmplFcNcLfKfh8dBYpn7SZ+CvBFWcfvYol
	 Neko8r1uosG7wM6Xb6gtvFGW+/GTkM6sYWOQa/H+ccFFMZ614mHYiPIAhZiH6mZKZk
	 of/293ERF6cvCChYSJAbMJenfBUVOppIrpwwkpG0Qyf2vM1gr6lyz4//6NSwwxHUid
	 gd/jL8Va9sXI0dBg+ILHQgV8HNdA+BhQas1VQK9f8vtWGHoLc/9tckfq9mBGqZUVv5
	 b9JKQuqya2yR4Jp589fSi1AmT5uFQv/yvsHByqoTUofna+7WivJ3cbhbq2I2C/tiFN
	 xvirxACJscREw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC99C3ABC0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174666359357.27297.14595632141286587571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a7a754ccae8221317016fb905989be50e292095cb01a118b20c153950061a53
Date: Thu, 08 May 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746663593
