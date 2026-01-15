Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 186CC27A92D
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 16:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768493034; cv=none; b=S3AfiM0dcZzKir7GG+gjaYCdUCkhjgwFsDWYg5T5+Y8QkHMtS2qT9yEty8CFuGXFrfFqIW4jxJDWg6OoSZqnmK2P7PQWOz/CZHNjiE6okTh+BWVYS2x1yVrwDBSvgK0HzF+xVah4e2PBWG469QMCUTjfY2Fx0ZE6jdoK+etclOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768493034; c=relaxed/simple;
	bh=lMmsxAWYRDV75DFZIA/Z7ehPYv+yxYx6Wvr4SjXspDk=;
	h=To:Subject:From:Message-Id:Date; b=BWTyjGfAU478UvICMJHyEEvcPVm0uhFSbZU0PiZhL4oLiJJVegiS5YKtArqdns7l0WzuhcWFdKRrFbJmF6ZCmw4sMUIqwEo93vugd7PtKSPh/fyP2OdjJQJ2bvUuTgPD4hDdj53b2WjJabxey5u/u62n7uvZfOaxWwFQ+DGzL0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=omXQKlDY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="omXQKlDY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A66C116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768493033;
	bh=lMmsxAWYRDV75DFZIA/Z7ehPYv+yxYx6Wvr4SjXspDk=;
	h=To:Subject:From:Date:From;
	b=omXQKlDYctHFj4tOiyCPBD6FMXu23Qge6Z7qwlOwEgUmumNvZnAEDrMwGIJDxX8rG
	 cfdP5CqnzTNl8ln4pZWDASqtOoyIBOFqjFpWlEHZzxt65QBTliqj/SwimAp5J7/dHn
	 jyJQ9NrPYj6l8c+Nzh8T+CZp0uuaKzl/5nlS4+RbVxPsONnABwVnl/qMOevmamQdlp
	 ut7/3JiR/vPBuR1g0uCjgGxSXKnh30eYg2mlPMZ0NVun1jvnVdHot/nQxnw9YQQJrO
	 PYkmXyh7zAcURpuSOT0jS0TKTP6A7i3v3Dg7wQC19zWGCC6nLuBPmaZyi3lT1D0mRK
	 jfHnMYuPaD4JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B6BD44C6F
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 16:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176849303358.15389.9848958573126815281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4db7423f7fb34b36287cfbb9f0e12bd70e56845b74afb0f88077f5225a5b3b1
Date: Thu, 15 Jan 2026 16:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768493033
