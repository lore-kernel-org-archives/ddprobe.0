Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228AB265CA8
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 23:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767741834; cv=none; b=mNfSGTz5Pah3hfyoaHyNpqRWrzr7omUQgEV7nWPAy+3a7HOIEJV/BBSyKcDTptE1DmWmnfc4mD1OyvBorprNmvDRYKSF+//r13alOaw2/5Bt3qH6appgbbR3fDVTy55TNEf1EsVAdHp276mFFsOd93xEV93TTDap9BvFOToQFz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767741834; c=relaxed/simple;
	bh=tLG/958pJNJd1fYIfJLGmwZPIZ3zoXxIMIcYXSZB8FA=;
	h=To:Subject:From:Message-Id:Date; b=AdOK3tHIHjrgr7Lwj1a7HbSKIXOEGc12SfN+Bw52aKUtGeOuUsNrL3lBMXmfZKApaYjEooo+JUrwxLal+aCn+NRsa8Lo0qoSWYtdGJs4GmnT5b6f7BYy2omA8ukPJJ7KfmJc6hcW8t/FbaR+wT64Abt9I03WhonF69qrMJsM/mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EvSnDf44; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EvSnDf44"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D18DC116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 23:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767741833;
	bh=tLG/958pJNJd1fYIfJLGmwZPIZ3zoXxIMIcYXSZB8FA=;
	h=To:Subject:From:Date:From;
	b=EvSnDf44QfCBKbn0eU4z4/hMsGwNtBgKM7qkATCGxZJsj4oCxhfA3If19HipjnJli
	 NrGi1N1C9Fy1eJE3SjHaJqwE7tToyJJxe2+NehFZXpne2expEZvYwCABYR/KrHYK5U
	 vRgRqgLNvXVB+2hgKyW4wJf+3MGgsajoVvFmuzkzVV4kpfPdhNf6HCxIPPWxkYkZ6B
	 a/9auRSXw5NvUkV6dPQfdr4wr5ZQzREAYtFTEueVrwp5uBILACsAhEqPldY8Mtjia4
	 bbhpvCuKirm2SirO+sx8Y9DQ37JRmGyA/NhiGVudvV64c3f9zdoEA5on+zzC5D7vxf
	 pJNM4Sz5rES+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F248CEFD0C
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 23:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176774183357.10983.10779821335892656682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ba5057fce69c0ba2276cea54a909bfdcaf997b8e84ae8683cf3e3309524dd5b
Date: Tue, 06 Jan 2026 23:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767741833
