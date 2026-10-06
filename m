Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A33549C4C9
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791299434; cv=none; b=Cf/NsiE/jExsBoS6cwwtBxOmB7bcsqQ4ZHRZsTNe5X0opUnbmGw38qOHUbK/1wCtF/BN2uL2l3of6tJqB0ys4ORAc2o53T5SivLo9ZW2y4Jvd4kDecZNHT9kXaUeQyxjpx5fXSai1JrknVl9CJGUqrLZYENEi8FyVqAOHa7lbyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791299434; c=relaxed/simple;
	bh=bt54UR3l97iEga2yKbmkkE3KNb7Ht36pmPOC/S6I/MU=;
	h=To:Subject:From:Message-Id:Date; b=X+ri1Fw/r1NCJ94E2w216Ieyd7a+nCS/kT3iy6zK888pwPP554GwimY5hhYDhI/7K95ngtW6nCIzeA189xuwO8rgDa64K0aecaBbWN+YK2ur3OWPEpfaEk5dO0iyAWvb24hHsRdzFlJla1WCRlIM60IlvjVyZnyiFm9NxB52zS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b5cRfSeK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b5cRfSeK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A9BC4AF60
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791299433;
	bh=bt54UR3l97iEga2yKbmkkE3KNb7Ht36pmPOC/S6I/MU=;
	h=To:Subject:From:Date:From;
	b=b5cRfSeKPtM86H8bUB5K+0drv8bGcnnaQ0gX/dhQTPcCGejzFWCrfQWcwCcseeXa5
	 SHEfN2Rgm4iSh4b26MM5p0Ofuk8ScGhC/U3kv9Aa7k44NlQmceCMlT5gOMbLMmAer6
	 uj7smSpOH5dEV1ZKALJlv0e0oNV0kmAILeXR2c1SoDGdfLPWCMd3THyRL+ofDFweIB
	 UAvscLbjlK+fUPwGW0VzyymiAn9wNVrkkiGsg5f3KfXo/afjkUNGoPXRklv90MttoR
	 VspGTITe8JgFZ/5Cq3tzDR0+HgR7GLO62dy2lqBASNOjacClAsCPDy9+U/qC4bf+VL
	 /iHRXduHQi9Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE5ECA5FED
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179129943369.26094.10926262905656922329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8a76ec0a3603fc81fd9fea3c9f5d36b48431186e4f81311032027df597086cb
Date: Tue, 06 Oct 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791299433
