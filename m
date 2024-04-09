Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08C9D1386C0
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 19:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712690297; cv=none; b=PWgyK/jGwceuFD6mwvIPuFLfQsrf3l5yp2PGefE9asHpg/GIXQbzF7JyP3TnhpSiCbjCahF4eOZ//2SXstyFD4wlD8gm4qiiR1O8/fcYIHjQme9NmIqor2yuQ01KSF6pYbQNmixq60b444eYX9Ov89gSA8WhtjK51rw4B1r92og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712690297; c=relaxed/simple;
	bh=8xGFJJ2gGvCNMMROAC92zyMkf71khxu4QomFJEgXJv8=;
	h=To:Subject:From:Message-Id:Date; b=JnB9y1cbQ7Dw5KCOupkO+SwCYh+vONXzo0jZ3ukWhjOPYhSjA42gRiq8WY31lP8NqL9i8Vae3/x316JT96uYMKMqUDNwXuTOuG9iMmCryq6pfR3aW59PCke2gNnPCWn47fkwzgUe/XNOfqLQXElNNyk6pHncuM4jftINwTtrXsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YKB7y6SF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YKB7y6SF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 952F2C433C7
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 19:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712690296;
	bh=8xGFJJ2gGvCNMMROAC92zyMkf71khxu4QomFJEgXJv8=;
	h=To:Subject:From:Date:From;
	b=YKB7y6SFqkXalQSQobTQTO6NQkX8GXe9KBGRg4o2uhS5eN3RUWLteSbIypk8gIpjW
	 GnTgdrbvTMjzz1/5iaW2BP086ndTBsSuhDzwczPM12Vvg6IDkwfsil02xy5g2rtmRa
	 0rieFlOnI0xZLeZtFswwl+Snf32clA0CGuU3AjDe21VmBxxIMVrb7LcPJwtVzRPIFy
	 Wjwm5sBfCxw93RCW1DCV4AX8C69RhzDRqwMCc8LK/ge+H78wsQFXZ5+/q1mI/RY6Dt
	 oP+mK9Smucegug/nzb9vFMIOg9dd2osIXXqU5iDw3NXjGQiMnNVwozVbWtfPpL0Yr3
	 MFAtFnSGtkG2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E32EC67861
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 19:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171269029645.22297.381484529973542872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7334bdc20544aacfc5b0ff3ae95dda017e02fada8ac20d3d9ac3b7d7dca76678
Date: Tue, 09 Apr 2024 19:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712690296
