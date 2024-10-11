Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B3A1CF7D0
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728684354; cv=none; b=N2r8k/9wnXf2+q3astSk5iFV22OgL/8KvjDXZla5qD9nXK0tEMkq/I6ZsvTVxxepq03gc8FDdSyiLKR+4HYF2V0FnYNzE2Q0udHgsBur6W5aKfVs1BcuKGkbuBvxN/eDtQqXn3Qrs+ORJGDP4bm1jzod2MJP7AEqJAQCyVmNOAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728684354; c=relaxed/simple;
	bh=Uf+Y7M0Gm+4P5/ajuqFl2NVD3ASsoWAAGcqd9aTy7n0=;
	h=To:Subject:From:Message-Id:Date; b=cKNpjqPibBGnLDhesjJ9bA0ylYP2X/C/iiGJ285iej0fnFVP7BZ2e+HArvbn/fR1LPx9d9dEYH35we/eIdAt/LElmfTBpk1QDaPRgyM+42QyumLPL3R/gmTO31LQGUC7Xd0fC/8MrXCZ5dNY8iNgXxqhaoZTv54gK/P7hkSqBIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NUZkGrMx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NUZkGrMx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89DEC4CECC
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728684353;
	bh=Uf+Y7M0Gm+4P5/ajuqFl2NVD3ASsoWAAGcqd9aTy7n0=;
	h=To:Subject:From:Date:From;
	b=NUZkGrMxMMdfwlzldFZSoeOlYmNDu/L62tSUiziliNdt7EZbZI4S2UNo17Zs2QxCd
	 HYLfSJ7+elWDTliuz4DMgjuogObE1qunX2IhlZM+LoXnBp87VzznbesfcG1LbG1ifl
	 bkj/5CWuQheC6HDNAdM4OUWS3OJrMnoXf9LEFfRdEny/n5KYkBcIkaIQUtrZLcuYZL
	 XkndRxMfqsWMMKatxpuGJ9TXnG80ZjepR0Yubf9qg+FWhLJMK+UcUhpvRvf/zxEJSm
	 D+GBOdI0cMDigUP2oMdW0mFM8S5fksW05viB1Ga8rk0VLbmSxVvl0qdZzvpkc7Vjln
	 4MsNYWLRochDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C21D1A426
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172868435361.8369.11265578005125903937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 938f030bb14adbe520abb0686e1ff4e6d74fedf49e7b7c2b9a272e50a7dadf0d
Date: Fri, 11 Oct 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728684353
