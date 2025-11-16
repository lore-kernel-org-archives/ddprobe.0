Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274C835CBC5
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 01:10:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763255454; cv=none; b=dSH5/Qb0nOuPoPN26ASxKHzxppW0V2zZrmLvIeuaGAjobp34LcahhZlvdTuWu3rKvZ/IdO5OL94aXSieqPR9YvJLsel4x8h1CPqh+ofzb0vtxtQNbkbdzOJ0zHAN50rNbXJCNa7rBBpQvpOTBffsQS0her7+Lx3kPQWB8wRy5ek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763255454; c=relaxed/simple;
	bh=rVXbac1LFSs5bfmemdFO7iS1ffjpA4/422lQHBuIgxk=;
	h=To:Subject:From:Message-Id:Date; b=rN+3lS+qtiSZ2+nkiN47zOO/ygfD/+9TEN/WDuwKxGiLIIgsgDXsiERXn0NBfs+h6HRLxOFvZ63+OO9ecqDfJJuOga+0tHkz0HAQ38mbANpBDKkcTeDQBkMHYm758xwzh9eFc8Y7AcamaY1u3SDXFRZwVuYE/ERTzKi0kfge13k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cicQkDta; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cicQkDta"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC21FC113D0
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 01:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763255453;
	bh=rVXbac1LFSs5bfmemdFO7iS1ffjpA4/422lQHBuIgxk=;
	h=To:Subject:From:Date:From;
	b=cicQkDta5x2YOvTMTdCW6aqe5xIOS84aFS8Q/eQ7oJcRvC4H/XFV+yUNzvlS9nuDw
	 k50V2Ic9sbfDhwJIdCOwdn4MLQiveEB5Kp5/D7AvI4PATcZbfs489Ydt9kBAQtsxVq
	 an8pN3UvT3cc5z4KmSqbsrxReYWNh19hghNNFKCrCL+MFwfrd9QCv1Bc4Yr2h9tpQM
	 A+hYYNaHhRsOfnbvtwRDxaLj0Lv22I2X/PnhMHjU2VwmGhCoy1G8RFAbC2QoKmX+kt
	 1/uOiQp6iWxqHoKSCcMIhv5aNfZYAgQYi8z5QQSwKzA+sCgYLi9h3ok6EefwWBcF3o
	 F24MHcRMhaqsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E249CEBF88
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 01:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176325545363.27799.18215694893567231810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e2fc901eb9d4bac7fb74b4b93d53f5b21a56e5a12bd7fb06e314caf3600edfc
Date: Sun, 16 Nov 2025 01:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763255453
