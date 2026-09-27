Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72CAA39E9DE
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790476234; cv=none; b=Zr3SFs01cdeDQHQ+QFUUKJcPHDJFWZpGsRlprQ+XIWi24g6RA/18tUoQEzSd5JbV9InsCP17/MHMcUT+1rACcw7Yyf3nlEJK6y7HB4UdVa/KOWRgi5ThKL4XAL3Cyp0OBx8HakrASpfT42Pz4EDjR3LYmJ0aIgzY/TcSPWqPTKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790476234; c=relaxed/simple;
	bh=g2OPd+Ej/WhuyUcxnbGgzpCp/y8LZpfQ53yaepjT7S4=;
	h=To:Subject:From:Message-Id:Date; b=Sb74QN8KthE8S2K+Q29OHG2RebNcFxaYQ8VbtFIzez/iUoMTa/hb1jUH3150KBk+MjXACPBQy7efDKDfsVvfclCsjiORC+rUx7c4ZNxE5jtlJLG0J3Cp/kcMdxwRXqFqPCuiW52nKuTdqkqm1OyiiP8jYBLnh5lU6ntenVoGSSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GqeRx4Cd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GqeRx4Cd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7176C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790476233;
	bh=g2OPd+Ej/WhuyUcxnbGgzpCp/y8LZpfQ53yaepjT7S4=;
	h=To:Subject:From:Date:From;
	b=GqeRx4CdAgbreMxBgkcPviLoah5qlAsrGlTQCl4TfoQXc6BIrWX4AzkF5fz2shBWv
	 mKTVhcX1T1T1hgsc60q4B7/mGe6VLJAviGxdfZR4kc4z7guROf58ZbtwBPuDVbB4eB
	 y8f8vYmesNjmtUONmTw1EpJEIcLFqtntw3BGxCTadAovA9YPOXtUSo/WAtfCdksbwm
	 rTvoJ4RWLcNccaBKiM+1pe3IuFcdSn9XXhlUUcROyXxoMJ1MPcTs6wEMq1QNL4DFNd
	 1PwTQEu4iznQZvQ45JgAecMKWwtDRgyTHCg9xTCyoQWis9Vf9bJZP7nGd4VQGbUy4B
	 rBRbU3hsiglDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC7DC98328
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179047623369.8608.3833470717497732039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c347b85c5707ada861d3a739781d7c66cc74ea00bb2164cc86eff83b6f0a5441
Date: Sun, 27 Sep 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790476233
