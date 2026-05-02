Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 174C634DCF3
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 17:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777744654; cv=none; b=AIq1TA0i6n6JNWalTVhO8tPsB4UsVryZA+EtR5EDfNV0qSfaGNRZo/2Ulvq7ZPLnFl/Cndcy0lnMuLA0seqPRwPZ0NfnLs+rDqDE4BI9ui7/YcOda77bEiZ67ml49jtceGBBFPvHKgNFgtGntkRQ1FQ/ly3cTi8T4QUGy0vNmos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777744654; c=relaxed/simple;
	bh=LWZOuIBbN6/ORdaC+kyA+/JfnbOoDTPvo4IhEBACVdQ=;
	h=To:Subject:From:Message-Id:Date; b=Z1UBiarrTrcZdaTnJNmD60+xbU2Xv9ZHB00x+F2DaK3Ab3kVr/vmY5j9SOI+Oj0cxVUwjfIapli3kFuXELBX0D2tj7WSq6SgeyvKj26X04CUjBncYWe0ezRy3CoOFSLU2kzognlwFoaupTE5cUwN1TLO7IsCHj4bzzIEBWKO5w4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NgIel9ub; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NgIel9ub"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7E45C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 17:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777744653;
	bh=LWZOuIBbN6/ORdaC+kyA+/JfnbOoDTPvo4IhEBACVdQ=;
	h=To:Subject:From:Date:From;
	b=NgIel9ub5Ml6vtszboS2P5cC83u75yQCeYdX+cJWrEQJUhM6fD7SyHigFuBCkXoCu
	 cIwDASow6Lv+Qb63W9LYe0SARAMPjuXyK+5AUZWnfTdcPvyfuHvmTpNnw8eYkgbgnS
	 fEYnxyReKaEidlAcoQa7Owid+ZYsNMfQizLLSW3yVkRHcSVnA6Pyzj1GSGYkFKfWD2
	 HO2knqeD9MQADA2XsHEBQvwUuA7bx4lD0qQCLISwVDv63Hg22P+FpVx8Pen5LnPj3Z
	 bArgPX3LGO2I1aPv3XjbxMSJ2XUbyAT70xAxjHMtvs1CIxHTcVYQNrn5j8I/e6ZNla
	 DNIPOb7PDNmMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B70CD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 17:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177774465368.14059.2564202585239935969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51bd6a8042edf34c4476a877da769e91726b922ba1c1be5886518af02213bbf1
Date: Sat, 02 May 2026 17:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777744653
