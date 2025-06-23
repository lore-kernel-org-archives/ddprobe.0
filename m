Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 168D84A1A
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750640994; cv=none; b=Vjcg9tph6nf7BUdn1+pfk7Y5ISPVccgJvveqiNEyth3cDS9CzV4TkcNHXVFoeHfGn+CcH2JROKhQVyf1+ZLhhGF1NJK89q8kr7iVkx/auHjYoz/kCKeHWU3e/UE4xMuptuTH+vUWLgYZajd17X0eHWObuJfkmTlVNX8KGUA0tCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750640994; c=relaxed/simple;
	bh=hwTtvSv3yNN5U9qJ29bNYzrC2qgFOePj/8jedBfQd4A=;
	h=To:Subject:From:Message-Id:Date; b=aoWe9rzWuUhuI8TOIj2e5gBh2K9FoghhvP9WM477t4Xlx/B6kUymt04Lqmda+tHxk2zX0TRLxc7uBjwJJJ5Dyqqis7fib1v5lSm46zxQ4fcUtsiU0SmZOvxNKNdfJZ50eXfGgTUNWxWChvq9cfPDgyDAt//TTArfW/fhsnbMJIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bhIAH5t/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bhIAH5t/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DE8C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750640993;
	bh=hwTtvSv3yNN5U9qJ29bNYzrC2qgFOePj/8jedBfQd4A=;
	h=To:Subject:From:Date:From;
	b=bhIAH5t/dl9zXxDFWD+th7CxtkGXZZcDE7cgd+ame9WkQfZs+itedwQctTWhgV3EE
	 8X6pd85m8eSfFer3NRTPG81yum9OFU9nc55U/9OitiVm1SIBiICPHlt1OkMp+v2gnY
	 OwsBQpoY1xq1q3cDrtA43qL2uE334B/IZ7bezZYqLmBbA7c1WKK16uZuQ9QYAH7XV0
	 pbXlUak4/rVVY/fBC0MQrU0cXgi+MEWiomv9mQbKLjB+YNPmilr7SPoCoJxhevSSNP
	 /Bleb+o770gEERSLwYwGQJy3dfun6/TLpa7d5zi3OysMnYny5VcurRt5og8ii35i94
	 eduyKAW5jsdWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F006C77B7C
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175064099357.11139.10916918189489319262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 375f716774a8aca3ac4b6aa45e9c5fa010aaeb95d9d9acaf8e8537cc1fae6ee1
Date: Mon, 23 Jun 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750640993
