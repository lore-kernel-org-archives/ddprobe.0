Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 996E114EC41
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 10:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717238063; cv=none; b=Z0us2o/5wAAeBD+IlNL1b29T5fdoTdtI6DkHbz4liX6S9vd1ULBDnXUO+8eQL11eQ9H47fiOO8V9AXWFCo8Ealf8aoCXxrrlJUUHoHg7an9DaDfts4vsTdUxsmMaxOvcl8fTQvUsCwL2X1RB8JnVdjuDddwrMZgLFhFOcgvU3bk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717238063; c=relaxed/simple;
	bh=6Jp80NwvJfO4lKtxhK59+futQdHLNXlh0w+Z6yHuIXY=;
	h=To:Subject:From:Message-Id:Date; b=iVUOHpQ89HLSV0S/KRZGr6QQVU3pKZoyV44FwVCCPGGiyL2/Huqd0yiAZ6hZ3MoZCYOg7yRFTb8lJSM9jAUXf6QEo8h5lTr9ItozyfvE73m33Ce9zRwhUc/FuiM68PRHKYRGn3877dG1GWd7mRd28/+Z+orYR5XMDw0pq4W1jKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SubvofOF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SubvofOF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04D69C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 10:34:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717238063;
	bh=6Jp80NwvJfO4lKtxhK59+futQdHLNXlh0w+Z6yHuIXY=;
	h=To:Subject:From:Date:From;
	b=SubvofOFM1IZRl3F3VTV3qt7Qm4/ghvkhNPWRDKdc8zYuleuKXXJKv7q1SxyYMGSV
	 cRfNoVJPKXm84RZ3PEaqSkiSTGBI9Zn48Ns2ke1z9VpqMqUWUW89ZY61WhK7vn8gbX
	 6rGn2buWsn/1CZlcACmUffkkqrMvrIxuPBIzShxrVzx4/j8SmRnYKxBopBOB0lTCoQ
	 EJpv4npRtp+M3Wg+JSqgr4bsLCa56iwRfCiUiijfKNqKgXpryZJQuWR6/dKT5BjLwI
	 eGSLMS7KncvaC33su7i/3TyEDu8Gw0wcaA1/ItG/Zj3c81/VWnAmt6oT4R+Son9wJd
	 BNGS3Fza4T70g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEA69C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 10:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171723806280.28745.4761175871877310692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 958e6cfea686dc8e2fff2f2933721283e4126f2c71eee1bcad231d404da68854
Date: Sat, 01 Jun 2024 10:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717238062
