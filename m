Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 733814EFFB2
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791488434; cv=none; b=F38dkrxXu4Rt0mlXmMwvafF1Ja43mlni3gs75YNzvj52BLzVHyqVYX+3jzXoX2VsKHV1cXyMyBs3lqEmnqIq6+Z+aQiTH+Ya1pPfl/aCH4cEy2eAFS1B8LfFgRN52QJlYndldKtkWjPtclR0BljG3idU02iu0OtYRjAKIpmlFDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791488434; c=relaxed/simple;
	bh=caqCQ1NUVpZ0cXqx3BpxCda/YoSi9GZHDcNwBIYFnfQ=;
	h=To:Subject:From:Message-Id:Date; b=QPz0yIwDQ9yuYCrzdcKYDDZe83qE6kL4E5WNfqPTlwLY52UNbAW4577XOHRh6eDsxBFDss4q5iIs6Kjzh2QEea8ICpgNPID/yPDBIst4S4L7rylSC4WnYoHWgE/c9BD62P/Pz0kcaEWp4GNVI2LY7z8eQ01KuvVGYSPTNMPpGrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RoZyooeq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RoZyooeq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3109C2BCF7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791488433;
	bh=caqCQ1NUVpZ0cXqx3BpxCda/YoSi9GZHDcNwBIYFnfQ=;
	h=To:Subject:From:Date:From;
	b=RoZyooeqQIMP1xWU1KP0I7UTXzWuCugJHTZiRkNfGKtlpsZOQc+Wfi0EbXsi0MyXG
	 Sj+ivr4pHU2KnvIdtqZIuZLQ0b1YMFjj6zYk5jWsva1OFedvYYaRfXMq7OSm1xM+Tq
	 Jffo6/e4Rzt9ErBQdWP899/Is56Nl34PNUfxOlfzakBY0K0JbV0TolfWsl/TE478Ec
	 arzA9GA8T6sme2Le7VuvyAuImM7qvMINHU0B9+jh2tMlGPDb7gcE5CAOrEflHh33hL
	 NDIsxme/1ErQkVEU3dOnUe2B3t3NmuXWxJBVNEYVHPd+OqJdB/FRDc7sxOQieBA8hY
	 H5bnICkQ3om/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB02ECA600D
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179148843369.14486.12558265806278467752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3697d9710dbf9b22d798a2799c7bf09eb4d43e56992e635d5da4f7bf258bd82e
Date: Thu, 08 Oct 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791488433
