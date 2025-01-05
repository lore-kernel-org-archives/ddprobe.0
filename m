Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321B411CA9
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736120154; cv=none; b=CDo+Ni4se4QgU5w7CviSpFrw0VMsABmIHkC1nrnORhHzavjXvayXtUfF3MJwRl9gyfRad8YwuZdnmC5sg4vbUg0d2IlrF/4KF+IBjahIxE2WLjedq7kei+D+tAsuYp4KmX7yU2TlpmPdl3ki7begY80fRsiwAnESgjo8B4dN0HY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736120154; c=relaxed/simple;
	bh=ZajsjqsA+y4mirh72tBduA5xjzVb/8tlXP6uaitUm/U=;
	h=To:Subject:From:Message-Id:Date; b=LeT96xjXUBsHSt9J6LBMQ30Gd9oTBMAQocrNu3F5atEBLJcu8IR8g+0v0YaF5pDpR3NifWpRc2REQmiJBjX9OjGVoxFAh3TQWfnBQqn8rl8cSKLXCmOOuhMfZJHn3Ln5fbIm6uRA1jnBGkqLQ7FKgnuK6Y1Bdf3NwOpx0366yv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TVhPWJo4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TVhPWJo4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B023AC4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736120153;
	bh=ZajsjqsA+y4mirh72tBduA5xjzVb/8tlXP6uaitUm/U=;
	h=To:Subject:From:Date:From;
	b=TVhPWJo47qmHLrUN81q3On4DQcrToxMS5Seip11G+156gLxrrFJKQzraLdhsZ7ox/
	 pvKGhmWyt0MlGqlYnlLTdh0aqxr9GOnKcAfdpo8krma9Zm+ZzuW7gfR5TGVZjCmgr5
	 GeDOfATjUuusyxiNp0yUaTV8dDf3zIaHmwRaUkPelVGCpHSTRVdlNW3ijIk3H/f4lX
	 CCUAzrT91ENPnLJlFZgk0jmgDqx34EauCZq7SKBq8gnH0opSk5ZEnXqab8cJUCmnbi
	 4SRLwfE4rfw0HjwT4jwthFL5Z6lP2Bs1SvRRT/16fsDqa/eQYJrOOvWfawwoOvPOGX
	 R8UOMseA20M8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A42AE77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173612015359.30983.13307819882110652776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3766b350537a0dce264923a369a2820e4b080a5f2c8342eed32c82515cd07515
Date: Sun, 05 Jan 2025 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736120153
