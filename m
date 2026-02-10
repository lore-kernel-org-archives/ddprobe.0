Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11B63340293
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 09:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770715434; cv=none; b=pDEp98TA9GvLZi1hvD2Ug21pIqI/fzccOhVtGhEqVOJK9usn3LuKl60wOqUL3YoxIQVKSNY0A0RJVi8oVpUzjw0N2jaCsQjDZQ47wg6upNWftVutubZcQmLpe5kfi+x6Xx1DDYLgp2fQqhciMrc9oBrLbIuHWJH2ZYk0UpbVGUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770715434; c=relaxed/simple;
	bh=QOfjgEEI6QNwPYaGUIkYZeHfckb1ZlNh0Uy4uINlMtw=;
	h=To:Subject:From:Message-Id:Date; b=bZY90BN06k9h1XcaZeE4jRyu5/tBxmldup4ay4bb3hi496evHnQ03ususF7rAMlXr4ugWy+JtBip0jfGImr69JxhAdOiqLyzxm7vgT6K4RIUWIcM/9G8Yda5nUfd5UC39yGnp5ifmoR9I3Pa2urXHfYrqFuOP+bPJ+gacAnHrr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fl60uTvZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fl60uTvZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B44DEC116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 09:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770715433;
	bh=QOfjgEEI6QNwPYaGUIkYZeHfckb1ZlNh0Uy4uINlMtw=;
	h=To:Subject:From:Date:From;
	b=Fl60uTvZEjakqiTV5H8Mcjt7g5hfrNIa0VA6eeLAcQ7wbpe4Q4TGc/7+ei5A9HqfP
	 fX6kvo7Cdbq8NWTxrBISjxaNMytYj68+nz921wZNl1tc1T2+GO2ExsIZNl8MJr/nGd
	 UzogZQprS8Btt8/Cv93AVprRxFjHN/D1q+JFlYn8oIWNR3DgxobPdDwGj595S6gg5Z
	 sN86IdG2ZnJamgR33AsOKaIfxqo9lo4W6qsRY5c0gVDGFeMhLQsX+kcaOPDI5VvHyu
	 X18dkNa0oNrP1MQ9cIbkrGEKFiCiNWpCdnZAIbzZJM/yx40wt/scpekGQ46ZFKD0ce
	 7ejhUzMn48lQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FC4AEA3F2A
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 09:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177071543364.14010.14343606813529244812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8cac7f72e65802bfb1d3c5e951bba0767dd4430cd8c3e26262d57802aa3ad28
Date: Tue, 10 Feb 2026 09:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770715433
