Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 463F937F011
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 12:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783426114; cv=none; b=MRo3u3IbpWQRswooPjg3tykpZYP70MVJEoMVtgJt9x1T9LyEd9zT71B5kVUaT44mCvaXuUZG3M+N9K5afICblLHXr+YzPS90S2lf+XVWnnQXmidAVqJz0zL7iNAMALBLu17qXPpjs/Q8h4Ns6kHgqx1zg9xLTVUfruMrzxDvIAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783426114; c=relaxed/simple;
	bh=P4Z3uXLPzkPnLRCnadL5ge5YoAEEtdO0AuUPEJxUAks=;
	h=To:Subject:From:Message-Id:Date; b=K7iiZvo5+J5gTI2/DEXF8+aWp2q43N/3LauW3RKoIlf2HkLshaL095isokYXe2YyIdtZ0tjLI5lQAyTc03E3Fqe4NfWSMOzC/LMNHm5PgZVekYjauS+Q0nA5EyWsjXWX1tzyH1Pr+0xPcWvxhAvphyj/5IG2Cs4hBdSxsvd18qw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e4qd2jhg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e4qd2jhg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE26C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 12:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783426113;
	bh=P4Z3uXLPzkPnLRCnadL5ge5YoAEEtdO0AuUPEJxUAks=;
	h=To:Subject:From:Date:From;
	b=e4qd2jhg7sxWVt7hW6OqhzFp8CmoCx+YKnepTt1IWhGexdTok561vsNKXgiGdf7mL
	 DMtALXWLD+Q1zACP0MVwnIgTpp/QErONAjSqvnJhO1b/Ma+QEVG+ZI9mDHi/It4Dg+
	 d5+0lJXBXbfSh9vvlxqhwbX84vjSoGiIg5oVVcm5CF6buEDT09YzpKnVdcLkY53RHZ
	 03wro5rGg6J7phFaP1WZ/zm6htJHiU/YXfrZ+0vfU2qvov9kWusi2ba9L4C0LlCtBF
	 15JFdUz6xsorvoK5noxaO7NwX06oPvzgF5b7FPBy/OiXP/uDy8mCqtI22CyODY7dKZ
	 OuI5SKIkTesOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BA3C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 12:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178342611368.24736.6459277286186694504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f16627bcfdb76f190276bc5f9fc6c89206060b1ad2321374a1aefe07bd48cd5a
Date: Tue, 07 Jul 2026 12:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783426113
