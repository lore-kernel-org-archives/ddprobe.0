Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219971422BD
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726832154; cv=none; b=cHiNLm0DVaSpmg6tf6OM0we3rm+Xapl0Be+v4jUPlD2XUFl/QQjT13bMZj5gJjU5Db98OhuS4m4YCAMpS4w3jFNf12vEJrozPVGJp8gN4Qk57NbcenaQKL8ASuy4rbQWRR5CAR/WKaHgR7lzpneu7UfpsetDJ6i2Hi437f3zM4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726832154; c=relaxed/simple;
	bh=3oLxc1tEBb1f24BAPXShNEKOP3oLdn4arDuQxN6252w=;
	h=To:Subject:From:Message-Id:Date; b=Gv8xim0Ma6vPKbSH+795gfzP4K43dWQOJcGI4O0M4ilvWi0GPem3kRNdcQDhq3mZ4hcX5bk8WlgY1aoeX3lru5eI3SJ+O9zFK5W6TTWLoAZ5jW0d5NU4MvdlvmNOEuY1S3lOghouiAHrwwolXsuRoxdpc6Ae4gtjbHTCGyA0F1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PavXyEHJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PavXyEHJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC7ABC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726832153;
	bh=3oLxc1tEBb1f24BAPXShNEKOP3oLdn4arDuQxN6252w=;
	h=To:Subject:From:Date:From;
	b=PavXyEHJtfvJwbJyUq2aFX5h5i97wNvjNAmm7qSoYJlc5ibktdirUiinPImyxp7iW
	 KukVaE3cFZelm+d4y/KjENb87IKw+iW0qJnOVsD20e2h/0qy3IV8LXfW22qQg4UaFo
	 +sv9ta1pwldX9184sBoFx+RBtyOpqMg9XlQWfRTZi/CF81dsJ8aW3Ym5QPM026/iAT
	 K5eRqZ/fqukLnAwYZJcIyn9l2BW1/fzBW6Glq5CMypiFy64HYLflxZ+xH64EcxiqC+
	 YaBbZ86ImlSqibGC2qmroV0z1HPbxNHwh08cMy6NdMPF22m5pUTn3N6W0T7CFx0VmB
	 ONItBrmF+dl3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B77CC78829
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172683215362.8431.1526174968818714217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba209899adcdb151accf8a6472231c747b80da02ab715810f9639606e64ad516
Date: Fri, 20 Sep 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726832153
