Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 583D53E44EB
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786376434; cv=none; b=PGERiopK04dbaXFnkKuhh6LHvDBnggwyl9NoAcpLlpIiBIE9sEidF47hJgpXF3Qd1R0GeXVvHhqg4KZJwglxodRrg0sU4jWQJE7sj6bymUzi5Bw3f07G14z7Bymxjpv0eJ9K7fgSdBX7zEdl+kYA0rd/Mbshx2CHGOn9Zxdkzhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786376434; c=relaxed/simple;
	bh=+DA1XqV16FYZHwHKHNS4qukBuun0fBPJYCaTFOlFZdI=;
	h=To:Subject:From:Message-Id:Date; b=AqsXTj9mRAuVruu491K/nOCKct79tb+g7IUMRTD67EAaUhB+my/c7AvvI7krlr8zUuk3haGTdgWp0A65YJdQ2fU8KRdJsw5EbACKDU8uE6fqRhlvo1YxoUGj067qVp/rSxawN4gTsK55vF9YNfrpexozKDAtUaWgmv4uq/EKa2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fR3FlaSQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fR3FlaSQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDDE6C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786376433;
	bh=+DA1XqV16FYZHwHKHNS4qukBuun0fBPJYCaTFOlFZdI=;
	h=To:Subject:From:Date:From;
	b=fR3FlaSQg64kkfPX8Yc2XI6xDSEWVvdRfWRYINHhnk3VDDm/mtA3x4t/F+WO6YufE
	 7BA0QUlgLyWWWJrE+X5dI3jkuwwkhDkzYSqGYV2B1me2Gvz8oFn0vKyIK+bswiZP+B
	 DgQUaV6r1dUpM4rgONpULCjQSKvlRuXvmfTz3SInFcmW8iGWakbCwYRE6C8Rn+2FUn
	 UX7JNow7Pyk+5Iv886ce7fsZuxj9scFQzsPjUTz0GCkC8QMp7338NxwK7YMxQsYwWc
	 yadP+37TFrFO50oWbdiIQdYl44N1TyMRnAuV4bwpUI0CF62eZ6EeowppOcbpsGsZwU
	 VCGRGkrvYGeKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8937C5AD55
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178637643374.32385.11165738163062400689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0387360abcca7130c70f76d0dcdee5b07eddaf5965cac81f4d8cbad65c32361a
Date: Mon, 10 Aug 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786376433
