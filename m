Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD8A1DA55
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757626194; cv=none; b=O1DPR+OBpoUub5RBH2vrABnGRGdsO4zT7Zetn0AIzhW8SodAlJzIHh9+aoEqY/cp6klMSqdj78RllQvY6hYAmdHY17OeHcbIANZFOp6UxQhU41WFNpN+NS5miGiq5sDOJtXY4y4jgKCARvY0BSjLx9dgmLjMEwL0ObGL/nuRXn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757626194; c=relaxed/simple;
	bh=J62jkNGe+v9JG/apFzXXy19KFWcJ025cwQTBhdKKu5E=;
	h=To:Subject:From:Message-Id:Date; b=mLor8gJ0oTtRqpU6HH9i5v0pF51jqAwnGAmJG5JseTaYSqnVJluKM5EQlKXo7lMamSEsFIT2p+zJ69RrMRelwKljMothxXIcMDMD2mWkT6h4j0q7+K7Y9rxZ3JhRARQ3Wkn/r3nkOpQ9EuLA+HIjf1tIEoBNmEcpCChHvAfyH/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vg62K237; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vg62K237"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FCFC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757626193;
	bh=J62jkNGe+v9JG/apFzXXy19KFWcJ025cwQTBhdKKu5E=;
	h=To:Subject:From:Date:From;
	b=Vg62K237uB1Ro1E5gIb7QRdc13+IcQEhNkp4pokLsgfXOnpwQBmId6vhCo7YxKEIW
	 S8G9lR0H4BJsneetL9u/g3eFbgQ9jfJXKA1yzbkpAPBfJ8HcbguWw8G89AHyMAnx/C
	 6Esx+sPa0yf4goRHFoK3zx9vAJXN7OlO9n+V4MNTeCbEP2v+0lCsQfVFRnFxNKW2Kx
	 EO+bB9mJ6JbRglR+qEauI3BG+KFN+ILlRBBfz7JWsQ/DEUxf02s8AH5n2prNJORtZB
	 Y10ulRa0lE2W3UiXtBvum2nRBnmXeo8RrlZzKLWeg/VE9O6JzFyRRn2sweHBhYqQgm
	 j9OTXonThPeaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939E7CAC587
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175762619359.1476.15849064437062940342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f08307d257ac0f090e76d800af84af094da66f3433b7dd3c1f9f128dbe2696a
Date: Thu, 11 Sep 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757626193
