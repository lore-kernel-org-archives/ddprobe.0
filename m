Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16AFB30CDBB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756282194; cv=none; b=tKYUJ7uQIMQBCrj10L6SHLbcjnR+sB8zMxi9V5QdJyxh9z4BBLqcPQWMk0T7QOOPKSOTXobKUa3dHU5UMW+GnTiOsfS4hx1dPBSrGjl/0FUPTYi3R5oNRGycIALfDK6BmYtVN+5Z3CT3S/dwZLapMQSV/wH8yBFd60g5xUN9a8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756282194; c=relaxed/simple;
	bh=Ns0366xWZ37vYAIemtlbJGbax0rWxolhgmRuAI3wIPo=;
	h=To:Subject:From:Message-Id:Date; b=EBrCyw4XasjrV3o1G6PsV9Zwwmlhag+bvAy/8tb7Tt1x6Xjmfu/iiShdAOszpMyla3m8FowIzZ1iJIzTbljCHd3eXdSb/5gk33IjHUwvfo6rH9UfPeHW6u6ZhoWXmsi/VHdgYWbhxkKMhLTkezVVQUXSTO+shAdgca/cpFl05IU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jofg204h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jofg204h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F8AC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756282193;
	bh=Ns0366xWZ37vYAIemtlbJGbax0rWxolhgmRuAI3wIPo=;
	h=To:Subject:From:Date:From;
	b=Jofg204h7R0J4GCjzL0N7ObmPxXwyYI8tHRDFY0V5OGKxh4cxvESV7KSa6OMW/2qm
	 JfYq5hKFrXowL4zuft4oWpbhjkyJZLQVPIPZpFbjdzhzizWITuBfalRNTkik2GBrpC
	 oh3JnQrA4FLdqnUB+IEKH9+L5AJB5lbGxaVJ5GN0Ji2deF03ypdS+GF9Ju+jQj5ZSN
	 m5pX0r9UsN3f9KPcvsuSC/5+N0/uNOWXnvZALc2SYH/jHLY1l25mbuAWTYUXmHjSDB
	 ExtqarXcMAU5cCplGYiG4dUdhuixIUdIkDdQTqc8yDk4NkZhkg0viBiaxejHuVzTyg
	 KO8gtQ5nPnsqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7A2CA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175628219357.4577.6520455856444432384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c90816953b9d760cbc594b70f9fff1f519aa95dd2aaf2314b13df382c66cb25d
Date: Wed, 27 Aug 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756282193
