Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2493A334688
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761051594; cv=none; b=WXYrpyPihRHQE6dtePVjrVHYeB05exgKl/1XfzPUubCrvIIHX38OQCHtENThZDvLXQVUuh05dsz0yNI/dWNe/iQ8SUJbgSW+wjdht6RPsZdeQJxGzlpoCflXfVx3Nrx+JJMB99+U4Y5a3VgSPAkhOhxHCEHxPMeFyDedwkYUBBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761051594; c=relaxed/simple;
	bh=AfmLa+y2ruUvMs/vGi5yVgVrZZRYUa2Zh6yvxQnuzcg=;
	h=To:Subject:From:Message-Id:Date; b=a3kJTyBYf92FPWLX9hcgPWYpKor7/YmenPY5SHUPpSmtddhT+qjIENZGKRJ+JhYSi+A/4t26kEYZyOYEAZSKEm3iugE5kDdm4Om/4zF0SxjyFRZJs857eDwDjkw8FM1CLSkLmniOyQA5ZO28/612xJE9BPtAaQ5rC7aYTzVQIJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AKPL3pju; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AKPL3pju"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFB4C4CEFF
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761051593;
	bh=AfmLa+y2ruUvMs/vGi5yVgVrZZRYUa2Zh6yvxQnuzcg=;
	h=To:Subject:From:Date:From;
	b=AKPL3pjupbLrlX+7FSjJHFdU6BSJuJOkt2MZMKBRmfXb23Q4ThOyVo3JC32D1vd+q
	 hiCSc2V626xADJw3k/O5xmxDXD8s22hs0d+VvaVnrA6TfF3Sd0/pzxCVA5yYTsq0QF
	 4gCxIlyT6c7yeGAR/Bput67C8xlmNRPZ5OwQN0Azde5uLYHsET2SSUx3rFasNe5tBL
	 NDgQnCQPBuOmmcb2GJEsojDF9ILEQtZgNvHR0p0ogChb8ruop2KHZnCcQSZXDaAR0I
	 3ckLbXINu1E0Gny4evHOTRVvT3PlmeBSBH+4RskOVZUa+PjjJUqifBfRfJN1kA0++f
	 4JYU20+F2zKtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908E1CCD184
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176105159358.5839.5776315007361585048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21c907d7e2a065ce7b0953408296a1bdaa99d2542772e48632d23707d67ef780
Date: Tue, 21 Oct 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761051593
