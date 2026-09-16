Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47A8A37104C
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789537234; cv=none; b=PpP6GPJlijS+j0OM0+KME7I/9ygAJwRWLLdCAUwGpeUDl7mV74q6RxCMsOqeEvj4zkXRybsrMgU6WfIrjigFTv6JuJFxJjHBAPk/mwyqbmGKWyIbP1IlPpwdLdJdNuu26WYe7S7iAjblmmUmIPwDiu5EXw9GL++I8notRfP5FsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789537234; c=relaxed/simple;
	bh=xR4PWLNP9omOEQAKBjBtnYu5yduuludDWHOqv5LkdBU=;
	h=To:Subject:From:Message-Id:Date; b=Ad9V58TH1uhueVF7+d3ouuyWh8YMQt0hLf5P5Lp3rhpQhbBH15j8sKuRoiPno6xO0PTqPjTdXDYR13igHii88keOybEnqPj2Bphqekhn6rqsGGaBHEQUWDnKuZwl3r7VLIqb+Xwed7ySJkyAfly62CrZmx0lzD24e4IhjPGwzzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FjfyktoZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FjfyktoZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0FA9C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789537233;
	bh=xR4PWLNP9omOEQAKBjBtnYu5yduuludDWHOqv5LkdBU=;
	h=To:Subject:From:Date:From;
	b=FjfyktoZCWg4htHHM4J28EA36xlQyMm6gPYQKmwOK07zmC0hidUh/LLt4WGnGrMFf
	 1NHNCD0CYd3c4UZwrcqAu7LMJ9ei33V/RTV/LbJkegtJ6GlnccMzMhcURYpxFQu1LD
	 WHWhUMKosjDI5R34DZ2VCX+zs/jCOuAyXvbYkf0w6zhnoqbR0zXJI4G+RaGfaeDPaW
	 E82dJZFjkbGYsTqn9sVItmuht2CDlsJIADAoifEKhWKkbqFR94HB5kn3fpN1UgxV2b
	 Z9xvsuAuhdppBxq5lhQmM040NH2KoqwrFG3gGUiUzBQZDAWMDGJqp60Uf5bC+sqP4G
	 MQGoB15KG51eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA938C88E5C
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178953723368.29065.4204337036146131101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82fc7a87b2c712228a0b33da510b0e416c94ec27e839ab64c54f96c6504b7acc
Date: Wed, 16 Sep 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789537233
