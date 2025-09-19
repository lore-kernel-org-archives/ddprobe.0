Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B5E256C6F
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758310194; cv=none; b=Q+yt74Su0IpOn7MNBgARl3cLhukGIMJ2up1gdB2HBvESx71VqQFWyknorzi12wefM8xxiiGOiqdqugrGlpTRrFVP+/lZ0NWiknr/ZgOfzG4HPCz/c11Yj33zn24ADF1IWii/E+sVNVGk0B44FTytsGn97MFR0B0/CKOkx98krMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758310194; c=relaxed/simple;
	bh=PAoSiperSRp1T49DGzrgaI9R88qr52QtBWkpJUplZs0=;
	h=To:Subject:From:Message-Id:Date; b=TqoINW91jw2dBlh52NTUjJaOWRpQ4HRhBjqNWb4WUQWqrRHtST8TZd7lCnN4py9bzWWhUqE4WOFPTDORQcDZ/dPHuDe9KNGcaIOtWrUqkjlKDOPfsnTRVixnObuRO2IvAspMPD0aP3LotqSxQHTkDEnh1ESV9bXs2IjL4V117Uw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SP9mg4eZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SP9mg4eZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3AB6C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758310193;
	bh=PAoSiperSRp1T49DGzrgaI9R88qr52QtBWkpJUplZs0=;
	h=To:Subject:From:Date:From;
	b=SP9mg4eZxW11NeTfRTIvKLgoY4vn5993OunQXLUKaWJ8uUbf9AbTIKUaBCFNKuMmI
	 L00XvfrkfSxmVnzfNEryaTt73b3yto/EEWkMV3UU0oqESCt8UbrscF+UdeFZv/S0gC
	 KBTxYRuq3cl7zVsIRJxmkq3W7pNh2BD8X5zKzVKU+615Cdr9FxgOM7wpSctLoxQzBS
	 Lon5X+9fcP/SnLJsdFATC887LvLoxhQf28kfPQV9qlv8AYrtKmOhbS6mf+TKl1S4Ms
	 bqvxVL6uTXzEufc0RYl++o64DaIrep+uBufrqSNQ4MMv4Tw2ZNMyz+q9sokuCAgZkb
	 GK04l3kczmOEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 993B0CAC59A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175831019361.17193.9296949601129925635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74175c285a7ca6729e581ade06d990862f09c41e33e490ab3d26f7a47ab7fa0a
Date: Fri, 19 Sep 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758310193
