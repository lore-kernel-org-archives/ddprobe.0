Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 102E724397A
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 17:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768240434; cv=none; b=sF03dUoUinYS1p4sZ4ihpm2WATGlGdpRG8LOs6KMDXRapK3rwCBifSO1VOHS5Fw7I+fSXlZzlBo/iPNXkOiheKU3UazhZpZFJj4sFMVaSCGKI+A9ZzTo77GjZ5KK+B+cVZhF3U93wEh8fnFS+4q4uM+Gjlah4R/356HdkYIXyPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768240434; c=relaxed/simple;
	bh=DDylsmHOnBvFWh+fo7unKk+ZiGyy/kLA29MSRRQVfg8=;
	h=To:Subject:From:Message-Id:Date; b=af9cHQttg7tv3VLCy3sXtU32A5u+KDdzo1YBBQ3Io+8AiUHWKTF1krXoPkOKKK36KRwEamG2HPKcJZzUxRyJh2TE1FALIF14I1cD+8XiWJJ6nRQCy9yky86BJG/DtP8k6nocIprqTvy6w8lxSO5D8dbbZ4Lt88XTfbNR/uA7Xno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RXyA81Vu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RXyA81Vu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2088C16AAE
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 17:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768240433;
	bh=DDylsmHOnBvFWh+fo7unKk+ZiGyy/kLA29MSRRQVfg8=;
	h=To:Subject:From:Date:From;
	b=RXyA81Vuu5VgRTDAvQRQs+AHgtK51uxwEdsvIHddXc8F9gw6tDnoppd1F2+TONQXU
	 PA5UKUBXg3UNdhEXUX/+jk0W6U0bvSRVjFABb0VYvekuHY7Km4D6vzmLVdJJEa85T6
	 OW9m8e+oxJuBUWPlk/bb/dKQtmh4utqcjkB8qgFEV7Kcc+C6vARUC5Z/iCTvs0HkE/
	 RWzPMMZ27abpZfNiuDn+0NOJQYiXic82hd0JTSSFBQ/mN/uLh/xfY40tFdbSgcXJ+j
	 NGnTWnO+4Rod43BLU0uNpICYlpKMl0aUQLvnDask27u3hLn1aoEUXZA+f/D67htG/9
	 CcnOQqUySXNmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F12CF45B2
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 17:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176824043359.23162.262615755394298063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 178d90714d17fb0e7ab2ef320a647658c73e42c6c7df1f4ff767a15ad15796ba
Date: Mon, 12 Jan 2026 17:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768240433
