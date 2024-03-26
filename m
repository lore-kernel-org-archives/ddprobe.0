Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6F3F12AAF3
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 20:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711485496; cv=none; b=Mm9BpPTo0yiyzOA33Qe7qYCYjsiOKT/Ml4OgyosNT96pcnw3vWhlxO1O3I6W00TtE8IhEYQBTc9COaTCAvd6Yo9MU9ii4B0frvxRRjVKJdkKr7lqc7+L0CXBaPQNvoKVXGfgM7GD/Kktz3vYATLbPh7pKtmufOp8m6zYDUfGJeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711485496; c=relaxed/simple;
	bh=tZGuZhiqkYPuU29KvRLeNJtRYeauQv1Hx3jVIXmyG0k=;
	h=To:Subject:From:Message-Id:Date; b=CLqOUO14k0t1UE9gesr5oW3D6Zx8h/1Caz1Wvym9w8G2/RrADCixdUR43Xo17bZM44T+QiJfgRkB/VnPVEQknjmIG5korYOPMb0IGQ74jFfEvSUEBKraCbzc0CsYab6kkpe00CKnpeS31vJpCp+XNq+n+auq0fAcI2hTHySQANg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pg+NfEdL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pg+NfEdL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75B04C433F1
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 20:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711485496;
	bh=tZGuZhiqkYPuU29KvRLeNJtRYeauQv1Hx3jVIXmyG0k=;
	h=To:Subject:From:Date:From;
	b=Pg+NfEdLLgMs9/wGh0O5jxjqIGnekjctPXNd7rc+G/vfkhoYw2YcigEfweUYQqQ22
	 C3aQ1c6hKxJ8+9wB2c14SD/GkQ4/tQK/PKqKPfWw3bM/nqP71h70P9WMBEzoqYO2wM
	 Xu1fYWlpSzESTwwUPkzJ0cLBEQj4/qGD+nAJBQRnWJFW8q0xLHt8FpyxSk9bhoy6tB
	 2NOkXl9WYUiaUljYLuXfrKUWyMvIwcSUhR7ynGjSGobv7cWWQ1hQNainNUHjQphjB5
	 WC5EOT8zBDe1qJ0wSQBsjraq3Vhg3a+nKGjVMU8cMao8gECYAQ5TZwqOJVtqggDsrI
	 2a3vZZnU1Y8gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 618B8C54E67
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 20:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171148549638.15737.9228877832609514000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 835c217b09ffd351d4b0bb2e17eb9fe8e8286a428b20e6b519467e7884247880
Date: Tue, 26 Mar 2024 20:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711485496
