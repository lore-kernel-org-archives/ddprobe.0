Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37940628
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 16:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714236743; cv=none; b=KWALIH9B9vtsu6pet4XieFx5da1UzYgiIQZ6FWbNPuQlAugXfDCaVSAJfKdqxXc4SyKhLtQFUOsUNCmzbdl9knYLLucK2GGKteBZFnxpwSsDuqbkOZ2sNEi9R9cvA/AgTQq6kK6UHhccNVOCTRHKkJDUMgKz6+lF8y5+wCanfUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714236743; c=relaxed/simple;
	bh=ZxKitrLd6vmMydyYq8GA1GXp5OmelSKmZOQ3XoBHOpI=;
	h=To:Subject:From:Message-Id:Date; b=MdHoflc7M3jqZhWkro/4S7j++UtFk9VN/yQ9OWGNUgXTf3dIJVrjOwdmuu90Kc3XFcsSBFnJMuwxrpPqGpNI2zhjPT96jj24NfkLvs1+OL/KnjVK/Ljm2AxJ2OBy9qT46IHoTFg5MxL2m3aCL3o+Cic0EWLotl6zaxHqgublKjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P7If1410; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P7If1410"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDB11C113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 16:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714236742;
	bh=ZxKitrLd6vmMydyYq8GA1GXp5OmelSKmZOQ3XoBHOpI=;
	h=To:Subject:From:Date:From;
	b=P7If1410kfFg16ZXT+ImTjmnxKeMwBsKRrvOqx2Vj7r+FNWT8QNDMvCMBm/52aMIL
	 b+LJ/Rx9lcrk8vo8DRgHxcLAoyo7u9uskAVM4uzbdZ37hKqd7zcLxQ6zK/oo2D/cYb
	 tcWHWKhsTFqM58IpvMiTWovKBkZ+EysJsp54OfjSEMrYK+HKprQJE6rEhdBBXNw/Nn
	 RLIsHJixCRF7r9if1Y22mB6XRs4peO3s6Ac/2dIWdubxFTBBnLAtRX3mEEktvJWlVt
	 UyAGO1ytoijCEFb+O9gF2ABxsUNAXbkkYKaJeevcmrobikjsCfw4xmIaZaJ6ydQVjN
	 nHd2h9kpdToRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAD56C4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 16:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171423674275.4160.1118502202102695049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e8a50870dae288f4e12dd63af8b05a7cd1dbb35a430aa7b4de4329d4f6f46e9
Date: Sat, 27 Apr 2024 16:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714236742
