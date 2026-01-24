Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EADB1AAE17
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 14:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769263434; cv=none; b=UmVHcXgHhfcJmbaqfZ31q6tIdC0Hr/AW2IRzZjPKBIMuvM+XAoPsNLQw8WYJcVgv+8WfFI6DVhQAt95hFa7wEtkhuRi0ucBcjzuv8nxJneC4YHH7kJC5WPcUTXBQbJLMlt0xdsZgVNtgCLR39Uf6EdwWdLCZOU10Ha3GAWNR1PU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769263434; c=relaxed/simple;
	bh=ufN4gAUXo+XiikWCrSUSTaKL5joDjyBNMB5vI1FrZDI=;
	h=To:Subject:From:Message-Id:Date; b=PZNqFbGBPNCJA6ttryoyEDR0Uyrta4nqspNFZoQEsnBPUUzIAxOFJH2frzxexIM6Yi5hfyDoqePG/tgzSZ/K2+kSG9uvrehCbtudqRhPGyJTEExqGxQ3eJm8oEpO6sE4S1nc7R/PnzHxnLBB4hjMrao9IdiOLEbw1ywAhcj9kpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ysk6TEve; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ysk6TEve"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5DF7C116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769263433;
	bh=ufN4gAUXo+XiikWCrSUSTaKL5joDjyBNMB5vI1FrZDI=;
	h=To:Subject:From:Date:From;
	b=Ysk6TEve3a7FjVLQ+LtehWPHRXprEO0Cp+errG3CjGKH03T4LIWFAa/G5Q/tXsQir
	 4BrCNJJ9dHFDeMGVjmGBQ/qPyigmCUUR9OFldzKylotfTofJuLNj9GlFz5B0HMEu/n
	 HWwq0aPV5cnERyRU8pFkjy83HfIfQlB48KgJk2cE1dCFKW7cvPfl6Qutci81sonYpd
	 ut1p0XUauRG4rFYiKNCi/6CY/W/6z7iuKI2ki06oZUhf/Kwfv+TxQRCM4fFTt3xxfk
	 CKe2gIyYs3xMfSidVQ3yJGtLIgNQNd8YiPsxQyMv5QdXBBYJdG1V9scCyzjZn745Rj
	 uqKbc8CgLgLPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A019CD715E5
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 14:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176926343362.9885.3061193507828093015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50781a9e9c54d5e7e3fc7865fc5e2caedf562ccf63a636432ab8623003559abb
Date: Sat, 24 Jan 2026 14:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769263433
