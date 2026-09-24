Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 496B9404BE9
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790230834; cv=none; b=KS1YH96xOAUoApUso0kOfI26eE6gm4t2GoAWT1/VOwm9YNps31ogfqp/c1d4zxBHa3JngsF8BznOYsi9lzvKIq3zF2IzyziYarpqMLXDuQ75fbvjlIrzMi5EntglOGQw3DvYqUKT5oeA/LgYYWoY7ruMPg93OdG/RH89rCD6/mg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790230834; c=relaxed/simple;
	bh=zbWov/jlLwahRDcJ/NbHUHvtE/nVLsPSXCzOt4JhFek=;
	h=To:Subject:From:Message-Id:Date; b=atEPlbY1FNtEvSj6UsCF0uBxE15HTb87QBEzdGtPCE9g6+lBgSA7frxODQDytp9Pxm3UvMIz9IEG56F2YvgqEE8nKTJphmjoFvZx5Se+1OwvefYdwI5f5tDMmq5IIeztc8EGgdTkPyzw7BDfXRuXPGTwh861+hqYl+Q5gvMTA1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fl3PVFnr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fl3PVFnr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4602C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790230833;
	bh=zbWov/jlLwahRDcJ/NbHUHvtE/nVLsPSXCzOt4JhFek=;
	h=To:Subject:From:Date:From;
	b=Fl3PVFnrK/QoWRdHEP437BvuVVoc+q4Ns9+USTf+LZA6oy/TlDpDUa+9MqLbj6HCS
	 ezodubCNyux9moCH4kKs7G2eV+S9PZGGyYCYdLgke0EYbMvX7UzaTYHhC+TzgA/RDV
	 LrbWFkBWHYpZB4ubPocG3y4tRa6Qejv97gF+XL4jThp23HP5lMZZHeXf1z2GiLBagw
	 gegPnDInNGioWj1J9P68pxXsb73/UJIzry+iV28MS+L01YBXY5kVQuRYmgSbRdenJp
	 nDlRwi4FvWkUcMy+KeGwmdBobFxBQ7E0Ulk9xCCBoZbL9+TH2/VzQqYh9UOdMfMx8O
	 Q5ioM9zKu1k1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE40CC98310
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179023083370.2611.10699296070181624692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69d1195440a334d8b184d1dc6351b1b40cb77006d884d86f89c1cbf0f827ed31
Date: Thu, 24 Sep 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790230833
