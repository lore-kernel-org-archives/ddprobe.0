Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F7D615A8
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 18:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718043503; cv=none; b=R52XUB2r9k+z4PQq0vqcp9Sb3vsix5vTMmpaiYWoFnPNcq6OsnR9J8Cg2h4jC+BFLZxKnGSvwvGWWLPWhHiMZVZjxru+c5suRJy9EtUKaW2icjL26nz/7yqGyQxfv4nq57a7FXV/4HYXAjzQCyCIQUlctJF9EojVNlkBmWs8A5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718043503; c=relaxed/simple;
	bh=I/gz5YWSrlmMHyBIF3CCpMiDnzbuEi7ONxEvjpjw5ik=;
	h=To:Subject:From:Message-Id:Date; b=Jz7BJbA71GkhBf6r1AcdPdvMF4gvLS+5IeGAOhd6AvwYeghTWdHIrHJexF+sL4xuMjIupVY9t8ZD6/yCjT7pjsvyo7KVstM+quWCmg5XXWH3m9RAKrphbgumR0Qt0lpD1IsC2zS9kzZp44i2CDk+tpskoZmVybYPUslgAbvDhnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rSbwVQP9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rSbwVQP9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7FCEC4AF1A
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 18:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718043502;
	bh=I/gz5YWSrlmMHyBIF3CCpMiDnzbuEi7ONxEvjpjw5ik=;
	h=To:Subject:From:Date:From;
	b=rSbwVQP9OV5LDE/N3SoK8CrFR13hEzROYQjmm4Vdw6eD+uZnBMG6H5+TOWbVfKtDc
	 akYlznrCUmlQ6dPPwMPKQdjpN7Qg+MpwtOoobbanL7ybI6Fw47msKY7JPUOutT9b7R
	 tIC2axUvE0sdupo0l1pP0XVk1C5ybzRzxax6lL4yg+EiiufX0Lm+vCt73PcP9gG4qA
	 EMZ2E1ZBMVuGh6Te0kuDbHLDfYQ4gIrB3Z+AJY+jR4o/THjXweu8i75wOsTd4fDfbL
	 06cGDmNyqJy0w9/2cIbkVNnLcGVSUAfQDt4fNmXZAFhe7kSbMIphumWmiThd98XUnV
	 Ajc7V+134Z3tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2E77C27C55
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 18:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171804350276.20618.4569466190553964341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6bffb209150caa437ffc5e75d9c27448564d8b66774649111c7cbc3689e0493
Date: Mon, 10 Jun 2024 18:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718043502
