Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 405F38F40
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748642394; cv=none; b=JHFs4xfhQFQYxvG2/XzVZtFaImV5UH1rawvdKs+YaAQbCDN4HH8oWypz60+MOmQrFeSu9RN5TJPBdDxEbDnpPseMLaS5MAKR4tUgT8kInDQJKmBP9bUfSxcNIcfIePvnG2ZfifsVOo3rTKAml8uEAPF6POeqEjTWiOpI1pxWmwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748642394; c=relaxed/simple;
	bh=Spn5RoEKXypkZhWqzmJ85pu0jMu9sx3e4myDezYwT1k=;
	h=To:Subject:From:Message-Id:Date; b=Yx+t380WzeA8ecK5yPAbChk55vhlYdQ/fUA/3soi9duZvWNr1CQUfZ5qRmjoqp/mENoyt7OB7sy5I+IgEUIC3t6KCrgJ/NlFGFwD5pVtf4NghuZajCjBDJVCdE8BsiZZZFWcI23S9KGmKigtzvzo77JV+uGAPAFWUkuKuEAUrBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CHSrSu4+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CHSrSu4+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72F1C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748642393;
	bh=Spn5RoEKXypkZhWqzmJ85pu0jMu9sx3e4myDezYwT1k=;
	h=To:Subject:From:Date:From;
	b=CHSrSu4+6fTUnEvEePqZEB1r3vjBpjDtPefK6uYil5RoxCfvPh6GtIm1W+kcXmtPd
	 KCFfjvugBkj4YkBEH25g1oRiqCkIouVDM1Rt5cbAbBbmJkpAgSYCbBGPoZ6dTTp26j
	 bQYKhif6IGMhn8Cy4wzm62wRuV03ipr4jq8hl4baNokleS07i+gNi3jEKdhLUScnSd
	 I+XSecdseSPGPk5GH2YNkZM7zQNLLuyoGHrpbJmp179awt3Ai0dwcBRlwxwmdVlvmC
	 ANE1IpRwx+DBaJEqdKWzE/x4gUIhqNltDAyWWLAOxcNXNMAMYkWU5CRxrmCAr1/vP6
	 h4R7C9ZvU6x2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9542BC5B543
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174864239357.22309.13365712711043782032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 614e6313a2e910050c193155357cabadddbd28443b782f5d9e8e069e5b1e47af
Date: Fri, 30 May 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748642393
