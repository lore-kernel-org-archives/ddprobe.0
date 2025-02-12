Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B003C1D63C0
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 09:10:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739351454; cv=none; b=FynZk0s47xQVaaaJlcNrLu1032c3fg0vHFd+QmJpdH2pB80vra40kpik/40LB0I67ALfqPoa95X08IpaE5hWKaBN7G+VzB+OyGrZ7dUxTLYMkaijk20zlEH+OWbbgxqfY36ZEdvNKW092GTcq+vSSdLYfP3e5el1N1kykseVUDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739351454; c=relaxed/simple;
	bh=dpj3FmPv4tEfJzwMKr4/fQcQPSqt95T296t7hKn+fuI=;
	h=To:Subject:From:Message-Id:Date; b=II8y1Y90kY/PGg7UHEY/9n67bHX4q5/AOrD7JAAITJv4spHsRaMb9DzFj8JDhz+utXVucUWduzccZFoXaaaLRiPySMKI++K8JS1oBMtokCXu8wgLa5W2p9uEzu6VUS85DWidCHAReBh4Rk27Z00ffU33dURIqTmkweQpZIcczzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ppNVqGsE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ppNVqGsE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1AE44C4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 09:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739351454;
	bh=dpj3FmPv4tEfJzwMKr4/fQcQPSqt95T296t7hKn+fuI=;
	h=To:Subject:From:Date:From;
	b=ppNVqGsEEr2SInDjrvHv/boBWoTyJB8tgEcGhifjFVrCiK2/iIjUhbj03WNCEQNIl
	 S23D032K+d/b+dY1OSo+bH8AvoODKBQG/8qdzci3S8ft+eytMtKuFpP/8q4psVdvAZ
	 dvV/NrxE6j1UJIT7Szp/wsn05WdsEFL/QO1pAjIdkAVH2HggMd5/Rfyw0DUrRywnwC
	 1Z4E7eGMyrl6PG3+DTDQQ3Uq6Y5nOJf/vz/LYtMmxmrxTXKkwHD/v3Yqpf9Qazr5kE
	 PDQJZm8c0DTsmvb74PklmsVDxnRZDCtGt8MVXG3CctgBeaGWyxMW6+U/Grf8uEHOei
	 MIWDr2+b7Hd/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC93EC02198
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 09:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173935145374.18985.3504428822849799855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d840435ef75d9a015df07051655d1cd17458b9da4a75751a736b74974e2892a
Date: Wed, 12 Feb 2025 09:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739351453
