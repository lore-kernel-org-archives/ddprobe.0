Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2748D3B4EB3
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 14:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777817854; cv=none; b=oWAgx64w7d0MZNDYKSa2lypJWqidE3ixCSP9dmaUnjfuVFeyyLdUIhpyPFsgKrWR5428wgddLMXam9zb4x/MN89ocjEwWmkQbIvO5fQ703q5Y3qV04ZaR34+1Abv9E9r4ep1v7RNpnpgfvB6lRRufMEgQK5NmUH4bT1TXYr9Njs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777817854; c=relaxed/simple;
	bh=t2x6Ih8a03REorUbtg43KWCcSH6hBCNTUZfwdCr46Ac=;
	h=To:Subject:From:Message-Id:Date; b=FzJyCYqO498c8u9D4z5/xi9HYVfs9C5REK3IDYoVLtOuwEQv4ltrGdRBlitBpVL/uo3WGFEinpNL3JG+SyAA7fBqTW/GuKzaVSKljXUf1F+SFnOvuC/iULS9tXpPWXGlCcXk3iYsXoQRsPWli8Sih6uUEMoXRUEKDUajA0rdoKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VEJtrY+c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VEJtrY+c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE696C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 14:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777817853;
	bh=t2x6Ih8a03REorUbtg43KWCcSH6hBCNTUZfwdCr46Ac=;
	h=To:Subject:From:Date:From;
	b=VEJtrY+cxlyubfSOOZFsO2DWB2ccHSygWIELGW6csZ7ktqMsf8vd5Py3Qxh8XorTe
	 3VDfnrPpZgg7WSyNv1Zq8nrXAFLmsylXvlJdYY0vOoOBi9KgT7fRQ82Ra3n6OIXLfm
	 Rqp1HJLmt/rxfTpq4kvK3ebT2q/u7sfQbylc2SitSonDEmNc3OioMixttDMXKBYhL/
	 Yui6hf974n8bOEjvhXJCddgLOgxEmqlvdziYWM/UQUSUIMs+PiqyrPBexZdy9xorZc
	 HRrAX0I8cfUy/3rrhFhERyppN0icyAmYn4gTmGPcsajIEZnEWqjsgkV7Qsm6xyJyhP
	 igRLR6TUH8lAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B092ECD3424
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 14:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177781785368.14347.8218603270513295316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa2d63cc7ba5f68b5652ebed992ee30bc5f79d226d7184297859c1d39d804735
Date: Sun, 03 May 2026 14:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777817853
