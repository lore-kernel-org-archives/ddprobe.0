Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DB052BE033
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 06:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783924714; cv=none; b=qkVAciDHpAzAcrPsPWSdGFkqc5giQgYAEpuH1mMkQOqSm4ZDVrV4lMiOK58HqbHRYCwpLpLngko6iPrD6tx6ndckrgwtVP/MikUm0KH01jyR/aGCbw4/zr8A1vKuhRtQDx/hxn3GdkIw1dfkpZHkgd4BDvR9F8Zx9NtPeQYTX+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783924714; c=relaxed/simple;
	bh=4/68oOQ1juG1TMuco8bOjp6IJUz4IUk2H+N94wT9pFE=;
	h=To:Subject:From:Message-Id:Date; b=qZzmpNXApsBlGaPSk5EVnlt3Is/Ffpr9OWnCuCHYl6Fa6d8hDAfgu/+8+Dmjp5s16kh1idEpqH1tfk86I9qItkoW64PunalRgbI5UVoImoPFQiNY1vlfhNRYUfrMOosXmqtk1aQIY4Uxb14Zm04B6k2qygQ75NYhzIga7v5TDRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sAEwOoTz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sAEwOoTz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD718C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 06:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783924713;
	bh=4/68oOQ1juG1TMuco8bOjp6IJUz4IUk2H+N94wT9pFE=;
	h=To:Subject:From:Date:From;
	b=sAEwOoTz2L1FQQvPPrxv3gbX2RKP+I8C1mVZBqUJj00AAX3HpVoZnEMYBpkpsLJW8
	 kPgMk8T1fnSP2aMHZN9V0KlEvV9h2ZpNNQEm8HWPtuRtHXHXThZxdl8h6bYGFcUr/+
	 y3ZxQPpFX+Nkdj+7Ix/lZm3Dby680SIXIjhH9IJRzS0Zsu3ZfIe1XQdd/Qn0MiItlh
	 AdgaOTy20CKHFcsWV65MJFlCYwI8zKYEnSceFNMnYiyoo+nPzri/1d0/H4Fdw3s7ro
	 cnPF6mYa1IwkS2+4b3Jgax8Vz1a823FStNVW0fOdWf0arFM/YXHSuSI8dtJx6sW8AC
	 3IziSlf1usozg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97E9C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 06:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178392471368.27743.15720385002528799561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16e50b337735316206c1d86b9b100429a3dffcce5b1af9f64779ef39474ea109
Date: Mon, 13 Jul 2026 06:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783924713
