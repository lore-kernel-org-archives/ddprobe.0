Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B6983BB13A
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 02:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780625674; cv=none; b=SIVrE4tz/C2QOL4PnFsJLJjTEC8+hAlY9re5zndri4xB1Cvkuz1XNZStVPdwU0lpSLhTKwSBCO1HdhSpaUtVP3FUHrX9qf+kdljL05Evh2yTHn7eBVnyOKKU3kxLj2woo34IhNrq1IPgKxnAyNi2fo68e0CHpJfP83XcAldZsjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780625674; c=relaxed/simple;
	bh=FI/hAZKDljEilsSbVckMkKeRW88BstVQZ9l8FsZsgYM=;
	h=To:Subject:From:Message-Id:Date; b=qkP0LWpHpNk1qgMX3bfG3o0ERG1ay7YnhHlzacyyBUsxMj/iVsu2fqfkXnSdquIDz3Yr90Kzlej8dX/aTFSM8KNr/s5A7dBd+ZtW0taQma0KjRmxVSaklnSORL85zmhmjDtGtr9013CSYzEnw8H2qcFFUUFnT5TJJffrmQy46cQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nH0rupBY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nH0rupBY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD9FFC2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 02:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780625673;
	bh=FI/hAZKDljEilsSbVckMkKeRW88BstVQZ9l8FsZsgYM=;
	h=To:Subject:From:Date:From;
	b=nH0rupBYlBSmxlH/66V0Pdvd+OXIlvd9i8jUF7xPhNPmwdHsov7t31f1w7IGC/Lrh
	 DTlTYn6pjZbqx6zTEQ10n+X0Y/wPZctNJ42p/ECcPRBtAbqT3eMIDXErwg0aDAHBls
	 WL6+WbjGKHfugCoj6E4AEQhsDZA7ZK7v7Q0z9lTnrO1MQHUVJ5iV3i+wxmlU+Ahqpu
	 tx14zl8wrD/83v1p+9IfQT+jIdmW6tBM57kZmaYFng2X8LNjmVxAYQopsIXbrj4LWp
	 GdVA5vCQ/rVS8EoZswXs41MIzit9fOZdAviIaOuqrHcAQ7nFQkvC+uIAqwiCEvJPQ1
	 NeUCzdJHd9Kxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B368FCD6E75
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 02:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178062567370.31594.1734891023397417799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 796d6d2a91ce3380d6edab358e7492a4500940f2ce8917f24ea295221c179f3e
Date: Fri, 05 Jun 2026 02:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780625673
