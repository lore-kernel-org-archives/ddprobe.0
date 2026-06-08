Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D9C36B06F
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 11:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780919074; cv=none; b=Pf8+rrPL+bWhC+wc3OCK8zALW7wH3iFyNE/cuzuI5c016fccjYEqz9b0kk1RRxY3YaUB2EnU443rw9b4Qpz0jn9meJQEXybYfYGSzyz7A10WfSqoWCegs+NO1oMY6i1O6uv+7Iz2ogVajY5lnTaAokClELtU+nSt1PLYCkDwHNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780919074; c=relaxed/simple;
	bh=QLq5YrZes7+dwREkvT+E3XOuPxesaIjDjI8UF5t3HZE=;
	h=To:Subject:From:Message-Id:Date; b=JHC2nGaAeXKBLTG0cfkknfGZ7pvaAFfHR/4ccym+aBQKauMtPXSqb5l19Rdrb03erQDzg1ADODKV6XtAIB2EyfDnCh7GvILASu6mZmnIIKxQ3yCqPmwev1UcK2bWi/mWJvF85Rq1eMw6njQExa12ScC59vBWvmeEDWuTeRnx5A0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jDFQ3tOt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jDFQ3tOt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C65D1C2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 11:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780919073;
	bh=QLq5YrZes7+dwREkvT+E3XOuPxesaIjDjI8UF5t3HZE=;
	h=To:Subject:From:Date:From;
	b=jDFQ3tOtiFgJtcm8+yNK/5qheMkMozBfh3iFK8ZjvxEFsvA3FlKc51Uaf0fPZx+td
	 NXVZWQcPOa6KiGD5mp8z+bgaoixRg03LKrMRFJejm9DJ+S0jYp5n++14LGOtNZnH4a
	 eKAF1B/2Dm+5wiLzezkok+qVBuGmX2zBtfA+6S9dmOYctvgJT4eqk+LbGMtLfVhUu4
	 c9xwXl/1bLiS00r1S5c6shz7a5fgJJXc/5KHOIsp5mpzPIzMYLBn257dsjhtx2WCyi
	 w+1He5//QU51hwBeOhgHEb1FiGSXPGAaVhf/N3iwxfW41uNQe9JN4WpXjIWgNUd1VZ
	 hIgPytt3bNekA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A884ECD8C9F
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 11:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178091907368.16900.15457410752635746183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31d0ba146a13278336226fc4198283d34933f5d5e39f2122dc728a238a37f809
Date: Mon, 08 Jun 2026 11:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780919073
