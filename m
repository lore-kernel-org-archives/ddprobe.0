Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BCC8463B61
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785850834; cv=none; b=lQpwiO0C43MXuEkhCvVnYb0m37u8b+gUMMwVyRr4DgTBqQumYTa61uIrv7Agqgwj4hbUO2fJBsP3dX/XDqKKLNOUOhryU/F/y/MTYHEtLHF7iaTlZ+0mjyzKCiD0wGvYHT4VA1tUmf43ysJuKvKz7UgcyI/2a8oHT9o0TvYfCcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785850834; c=relaxed/simple;
	bh=QSAKbfWYJQvYZxMFrAhURGK1UkSVraBmkaO5/XdUyV8=;
	h=To:Subject:From:Message-Id:Date; b=mBYXnKC7/jYlssONzZEuxPRqmwIkKfroobHPzGMbqhzWSCx6xSJHV26CRqh7Z/Nk7fFjrShFAUGxRHMVH1ukWMcDmbxcsZKEIAhHbjqPxhECHxswCvcEGMEVngJQSFg89tblV6KHXfo1BNgiSI0Ao1QpPyD7fP4fWDqeU1+4g3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qAyysQg2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qAyysQg2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD3BDC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785850833;
	bh=QSAKbfWYJQvYZxMFrAhURGK1UkSVraBmkaO5/XdUyV8=;
	h=To:Subject:From:Date:From;
	b=qAyysQg2vXSePfjRhkjH0jGv4pVd5odYoDU4Vr2cy7yOdf00gcgbQdjSEXXS0TwSf
	 yzrALezdmX4DUEAr/Hm/Xz0Nvk5ONXtoWrwORFVW916G9kl4mGwEFWnfK9ryqz2uPc
	 Q/AJ/4vzErjrLWVuR0DjbZ+hzFQ5prUqMEayyvwUFGUzWD99lSj3CdCqSPF5QFK1jd
	 p9p8DhXCQHrSZSvQUt9AobgfqZqNsSKYWU1/wJVJe3BOwTeR8dJP02BJ2S+UU40xuF
	 b8bXdeH85v5gaptL410ErfLjqhYaHmqtUj8CpORW7iLu8+uWz+GDRTK4TrXqPtfE5H
	 jP8hC1kj4NwxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CABC55184
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178585083368.3366.9340558620633525348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f948f208f90a5bc435c8b12ac46a8390e399f5994a34a6b5696aeaf9162fe2a2
Date: Tue, 04 Aug 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785850833
