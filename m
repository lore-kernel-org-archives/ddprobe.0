Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19D8330ACE3
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 14:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768143234; cv=none; b=m2PS7OevMudLFoxnuqE9ZEEgypl5YBF+HyNC/6H/hpkwmoS15cyst+KKPRzEAQia8NsKlE/wQ8Kcepep/i/1bBEL7q0x/D8xyvYSyeSRtNUgJ37pfqp9RL7MjixotdPxa0irCqQu2fo03D0XGnrBZ3lLiumUmOa2MQf+hmBofGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768143234; c=relaxed/simple;
	bh=zP9Ox2nsvrYeNIZp3egSNyrPE7pNTaOF/bHYLgNOUDo=;
	h=To:Subject:From:Message-Id:Date; b=NEhHQgpNckw0Rw6H0zWGTBvMGAQI6FttZCuzvqIvAvt6GQaVNis/dL5jZWRkTJqoZOALg1OZ/G8yU4pHhz16zieoqTBdKycDuOa8q8mFdzEKGoHNCfFqhBmUaECXgGgc4Q/mzEsWe9geoqhUlQyG3VOGsmqRIX7JpMLw7GnO1uU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D3Hs/gxx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D3Hs/gxx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B03C0C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 14:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768143233;
	bh=zP9Ox2nsvrYeNIZp3egSNyrPE7pNTaOF/bHYLgNOUDo=;
	h=To:Subject:From:Date:From;
	b=D3Hs/gxxyeWCZIX0VfvvU9CSwiOEnLLTHm2T04VftTAsiC7s3BVjRCKdSZzS2PPQf
	 bFtKvuME+8AhiBsx7qCOuPdXIh7wDlBTdQ6fKvuw+3dHTmUFZZ8xjWr4uuohgNaaqQ
	 2kyyPh4WEs8BlnXqZVHvKuzWC4XXia19/PW0ygh7xEzcjMDVv4V4RCpPtH59Cqot9l
	 CAjN2J2JmhLeIi2YRcve0dcjsHSbhFJovyGsBhc2QuFrl6kIX66CEGjmO+moal8MMX
	 aSpl++8zYRXRh69w+Qe5PTvAF1Eb9dB+j4A7MabcAw1EL17zmYPOb44A/LPAQj/m1d
	 W7ruh4z7ATtDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B94AD2502F
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 14:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176814323359.23118.7526885362433162343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8dea30f4978909066891410d5997a61145f85bd6713bbf0383cf7449a5be678
Date: Sun, 11 Jan 2026 14:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768143233
