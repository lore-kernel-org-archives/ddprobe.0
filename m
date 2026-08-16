Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 524D6318EF4
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786911034; cv=none; b=hs4mADPDeNEplOn89Leni9Yd6i6czN5xl2KP6GtHgF3v06gxiS+dP+pS8sptrvLyV93fBHFgiN+2qXOdEziPEvCqQ5doeyWRes+ObvQU4osC0PswtaU7gogwIpRDOiZFn//uHshZoA4n6uSbHRK4/aUIVtTb/DjLFvB6OnoQKZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786911034; c=relaxed/simple;
	bh=y/EsgHeOIIRChgT3goOA6kp7LU722VHtyr2rMJjeoTQ=;
	h=To:Subject:From:Message-Id:Date; b=medsfSQqzMJlIawHA6EgU+Cx6BnRKH0DFgTu6F4dIn6wm5Ty24uwJD8YBuzXznSXjOUfBvCeDHUFwsXJQZQRqplOft/cF7G6axNXAN0LDO+4PAl9PsMZf0L3RvGeH20LZ9HU4HxvrzaifXjjc0Ru1nP5LhvLmzXaLT8bAZN2lik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QUixFHPI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QUixFHPI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D585DC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786911033;
	bh=y/EsgHeOIIRChgT3goOA6kp7LU722VHtyr2rMJjeoTQ=;
	h=To:Subject:From:Date:From;
	b=QUixFHPIgA0keFRKw91v/ATsjdMwEFlJ77mo5JYPGl2Q87pv5Ln29BOHN9Qfxsv/s
	 BdsIOIHEy7c4De5fv5mcF6ZrW0m23R6YiOlE502BMAvZoQQCsZNl0m5ozDKIH2wKmO
	 nVCYdZQ3XXexKy5BTFgI9tHzijvCdSTnCXQwCRONqxtLG8bj2HU17OlPGJ46/JS3Zt
	 b2NFuqhSW7TfSBnrhjXiWeY+Sb/Y8Dt7lzT6st6alUPViVHN877ZiSpxasVZXL0gp9
	 q+0mKEh0HWwUk9/bFnIuOyNmPRi4HQUyCRtGTgO6RYRNXr3p8GsxehBR7U4kYQaiQ6
	 PQ0v0peS/IlVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2916C5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178691103369.17691.499961268299249968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a617cf51fbc46b5589ab30708e7129d00ecd6cd52681924ef7ea4194e5ddf932
Date: Sun, 16 Aug 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786911033
