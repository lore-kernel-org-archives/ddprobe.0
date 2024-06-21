Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 478F012C48A
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 06:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718952743; cv=none; b=uQIMmpYitfO3NWFW53TnlybFaZTLlVYh5w664wJ4HQyLZSeqTv3lnNnyNdfz3xWB3dWf8Nih9aPLIkKB7/axVlagbWxDSwpPRpwZCoywE20/DGTJkvyD0+yq7fbbeNeZTYn6Aw1IoJWalvfUxLO94TIDLGp8lAKPQuE7tf8b7kI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718952743; c=relaxed/simple;
	bh=5njSGNU4x5gTlN3G11q5XHiimDeUIma85U9GD7JVnVo=;
	h=To:Subject:From:Message-Id:Date; b=WYCv1tYESXd/ywC9/T+NEvhcylF8nTfsxekmN4w2NmyEvix7ZpN4YRML9MgW9msiSHbOXGZFXfrvcDPJcfSOB47UwnnPviIqOt/YWsWY+uLSrhap+z/y6RXNzLBdMusMpZIZGaVmTrcRI/yrHINrxapf6tHVzds4zYBOfBwNkew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D5gkK+aM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D5gkK+aM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAB1BC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 06:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718952742;
	bh=5njSGNU4x5gTlN3G11q5XHiimDeUIma85U9GD7JVnVo=;
	h=To:Subject:From:Date:From;
	b=D5gkK+aM4ytM87cYwuANvABHijxP74eG51QQsYwUT/YtF79yo9px/yUXCt03cAfZc
	 8rv+1s4+hOVWTdaYKUSEoLjEhNxuvHSCTRssB6tilrhP4xA5n8nO1Npm2AfLO6mvIU
	 mt9GL0WztFoG7/e61pB3PqsyOejI0pJGhQPNVywP+H+AXBF1eYFuaNJWYHkLLhxmDg
	 lruULqYMUO3JKzWB2zLk1yUZwMj/C1lJAsC4BQ3xOQq0DPIhsUD7GWkcwhjv6J89O4
	 UNkwrgZVV1NgCN322R62P/eilygDRP1gkj9SmZCO3a+EzkEptx/tBT0h3NHs8zCgoq
	 ksDtjYmA5gTpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3282C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 06:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171895274277.3717.9529848662315589907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acb3e3e968b03cfbdc802fe92b83c7badd6a9c975bab838d053943c61019317c
Date: Fri, 21 Jun 2024 06:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718952742
