Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD6635203C
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779230434; cv=none; b=ZPIsHvISeGNFpqfrai7Fm7rvgls6U/wo5ZpIPzT2/eDlzYHEUrJA7kzCkFUabOgEZxxBYQLIYYnfkeAoqLX8eR2GQAgfsYjpFRnqeR9ePNcvpzivIt0QSzVfA9FhL4YSLPd8VYZDYBGRzcF784Ha89wxL+YT8ZTXcRKOQpYmOUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779230434; c=relaxed/simple;
	bh=Kr9ZJZXsKcaKC4xxZQCrICoWmvLybyaW3higvaT6Y10=;
	h=To:Subject:From:Message-Id:Date; b=oYmM6hZSaGMFzYV7Ue7V/+XF7N9clOQpLPOL09NCSN4HvuTbV1q2s6amDjXiZm0wghoKMRmLgH+RmEMFdN4im7qvem8dNpr6TTSWk9OSEkqNqGH6afwhoFxPNXaVoCeiLAtUQPcyhrSlozPfGhcs1YxycQEn0k4CT1Qr/dnI4/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rpjgvyUV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rpjgvyUV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0CC7C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779230433;
	bh=Kr9ZJZXsKcaKC4xxZQCrICoWmvLybyaW3higvaT6Y10=;
	h=To:Subject:From:Date:From;
	b=rpjgvyUVOh0b5o1ITQeHKYy2rDCKecXSa+PtrsrF7z1dTB0kZ+K5ImHUN76fwysY5
	 Vdm6+zDDymyjU8xYb0Lo9GmoY9qiSgjca4y3zfEwLRSnHWzSn24A0EXhYmgEqBd4xY
	 wlkg9s4ROWIj53X3qRBQmUBqpC82/B60A7pzVB29YtzQYwZmNrBNAWF8EK8WHXW6/g
	 rq3Ljhct4TZdhCC488GjUNSFt5C5QtVoKebLeiN6kmmyF/wGtu8PkkwMTpDn/3Ehrw
	 iDxeu6InXn1Yykxtu51T8bo8+ZtacOgtSyhbg5IKEp3PqI/Va3q/pJqAEsSunTL5Wu
	 ULlqqt9KsLnDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7C02CD4F5B
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177923043374.17334.15775800990365524019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8da463558962e4758746720897c8100731a71a35eacb412913583d95fe5bdffc
Date: Tue, 19 May 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779230433
