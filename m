Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352BF79C4
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745726994; cv=none; b=dKwJqVGGxoYMK5DPEW/w19M8FuKRc3pL+5V+vyKYz2XCsRNF88EVDasJ4UYI0khatfJqn8qNok2YndBHPW8o4tpC9JKlV3/QwdJihKOCNZveUYignTTJKWVUUOdFxkgkrLU7a9fnoY70fqE9Nd+LHHTNEUTob5dmD6yIwdVy7KQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745726994; c=relaxed/simple;
	bh=D8Je+fiHF8oG5lMvgjVNVeF7/pyZ26sP/x/hhaacCRw=;
	h=To:Subject:From:Message-Id:Date; b=hni/kgW01dghJkmlTxCmJ/ov/R3Qzt5848LbvhlTasWC6lvlkcn4Xk7unPR4YoaE5Bbf0OAEaa2HU0uAwpHSCdW4+ud0+W2joeHM1qS346RLevr36a/Y8VbWS9zCXGYvn2ewJAGTa6LjJKhT4pe3a1SG26765goVNJHy0bGokns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hoVe71Eu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hoVe71Eu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5673C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745726993;
	bh=D8Je+fiHF8oG5lMvgjVNVeF7/pyZ26sP/x/hhaacCRw=;
	h=To:Subject:From:Date:From;
	b=hoVe71EuTQY5cueztOLroUy4cOvBVwx6oQBJJMhk/idO/uzodGBTl5NH1t/q553IR
	 kytGONFNrszR8L3rXXIE5FX/7OlmzBudvYfj/dHn+OOk0Z/F/IsB5KbRFeFEhQYnCm
	 om07EkrN2E4Tf95YN+HlZWswIf/ZErZ8t6lC0Q6Vpza81LmeFAG3MTrNRlCoMcsnTw
	 awC9gVqgcJWMnIhVevj4+fJ/CvBGVwrZa73OTri2zDphu024vmKFXdKCVCv1wORiIZ
	 jtAAAJr+d2kxenHSmz5C37eBznXGBy/1dJFKCmW+jvZ4zpoKQd/w5eGQty9lw0rbVr
	 +yjjLrsV5pJJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91073C369AB
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174572699357.31326.235226153826162017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96ab6066f4e36e42e0cc969703c4cf69c1f1f768f5c84fef3f627580e76053c2
Date: Sun, 27 Apr 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745726993
