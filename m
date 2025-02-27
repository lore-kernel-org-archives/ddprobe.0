Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3487E222576
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 20:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740688134; cv=none; b=MTZnynuplxh3Dk93NMgaf/LfUB5XnoG4tORoDFbbp957SHlgAGlX64zI7q7+cWSSSWv/0c4AuxyKCI5q18rtgmVMJ+iifYUYBCEVYAjGxTSDBRCdKhNrEwHLEWtIK64ZWUs7xsfvxXi+/qNQr2MzX0FmN257v4n13FrIeRrQieI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740688134; c=relaxed/simple;
	bh=2JedRaerVjjxjPXO7CNfmf8JR7VuDexPLxmH4PklyVg=;
	h=To:Subject:From:Message-Id:Date; b=puulCoq2zPIbjof3CmbiGODPRpEp1nVmJq2oFmZ49UvsgjLxhHc2keuGsvp5eF+ZSS5GxjYhGwTe2Cgs9b64Nl6GheSd3pnBTSUg1QnyUyP4LcaVqnWVqyjsPoWhYM9Av9IYIy/emvO1OgTx5MarjHQ0l4TDZgpqZqS0YQNvq7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qca/w2XW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qca/w2XW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F86C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 20:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740688133;
	bh=2JedRaerVjjxjPXO7CNfmf8JR7VuDexPLxmH4PklyVg=;
	h=To:Subject:From:Date:From;
	b=qca/w2XWke2eRh2PQoLIqU/Pnl6RVhAhjIbEyxEIcMmM/71iP9wgt1KOeuohNnuTF
	 xhbnQBykdWDd2zdVCicBPhqbA3yQdGUAzn22/LdveGvyG965fawYDX2Ln2ISIZyz0d
	 xmOGc3Q1Hk4TsZtB7G+mRmVc8cnWwER33P1jJeb3yL+QSco/wGNDl0iQTOj8ziKy/H
	 B76O/R3azFlkvRNSxOQ5USrPvZI8WpcKKuBj9DDKZ9i5mZwKUl4Wq/iNgfCYl0ZGy0
	 ZpwQ+nGP5SJEAlipVK4D/2Tps1j3+fEFyWjJxsM1M52q6EoD+55bJhxdXDV8kahgOW
	 XRLoK6Q4GMQrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FACC197BF
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 20:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174068813359.25379.3653607979412964670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3a429b3e25d6fd8287628e70bc38357e96f82da0ada8d6f5b2227245e411e80
Date: Thu, 27 Feb 2025 20:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740688133
