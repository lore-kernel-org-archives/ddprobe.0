Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD7D11A9FB5
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759441193; cv=none; b=PK1qCm0l+EmNMNFH5EmsrZv0MsXoXIi6P5nFC00Ry24mFkHZi7HijmEKFA80y9UAen18LjihfipnJnai2Ke7pKvDxMHCdKinTUDF1oGfXyPaoYxvTxIU+xBFwRuDNXqo2Cw9+Orv/2POUYvHXDsy9AOkr2j9ZALITVSZISroDWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759441193; c=relaxed/simple;
	bh=k7GXQF0Vrt4+nWXykdf4ZksN6PT4BeFPGbKKWEESTZs=;
	h=To:Subject:From:Message-Id:Date; b=nDaLW8kersi5X2OFeHX3M0oDuafDBTvCdPPTcu4dksFJee+NfcCVUO/7FeN14FXHZehhRX/4kK+tgplGSoNVAkvfIRatmPaEQwtoYrRwqODbxxFrDHJXYx9M0D5p6nG6Kx2y1p9zjuwOdAtxfPl+yONd/fJlaDk+GJdOB9Q8ZTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KlEM9Vx4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KlEM9Vx4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E914C4CEF9
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759441193;
	bh=k7GXQF0Vrt4+nWXykdf4ZksN6PT4BeFPGbKKWEESTZs=;
	h=To:Subject:From:Date:From;
	b=KlEM9Vx49UBha07fHaDmQQ+J9bDae573dLPAZSkCnLh3p9U/RE9XTUvdJVx7hsH1g
	 FcQXheDEhUNLlvMizkm8tinSWTCGGgw5izVk1jMNrZLF0v/l9gtbfwju0smeM/nB69
	 UbAQ0u4ksiyIyk8u/CsR9DIDluleD48oC53jga235EevcD0RVsFaKmReHcRLx8LHg0
	 mwoXAnzwCw7fsnhbvSwSbF1Eern1V3Qajw6Ca6LdBoVIw8bm030W34zlwSbUcCjvZn
	 wfReDjs1o9AS7TY1bC2stp4A4S+dC+Zcd1vP6J50thVJ6ONuSlBbdrShBQSQQmbdiQ
	 /zv5VcZWwUotw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA4ACAC5B0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175944119358.27622.6724697286291471386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f93e68f664bb99f0a59aee53a02a467baa3e3a6c268c8d48cd33943f19df06d0
Date: Thu, 02 Oct 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759441193
