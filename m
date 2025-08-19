Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14C7130FF10
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755629394; cv=none; b=C6NDVG+liEbvcc/UAoQXelquECvYmZw7DJMMvsB1CxuKpj2TeBVWJYP74xfUMMD/VZUqfHvqDqzaqMUf94p8/tXiO3lASUd/msCppFNMIV5+pgni3aA3lL+Q/k1NgphmxETKVMh4WoNpPd1JYSaZeU5GKgQCS5CyJauuYy6PLcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755629394; c=relaxed/simple;
	bh=zF+ydeF+EQbR/XZSzojbp5v/xPLwC/3vbk/lNtJdNgk=;
	h=To:Subject:From:Message-Id:Date; b=PS9I5f4rVB8iC3QEOWZFIv+43o8qSXJpapdMUs01Cb41fV0dIAgbwznDOPO7SVRaqRl12RY6//Me8ktqQdcgw/yx2j/d/FvzgaOWcb2d7PIHSGUzB3enFwlLr48DIDkJzU3wXduQKwvevQxv2goKDhhyaAQ8cQaRaA3G1dtSLBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=scDiQKAI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="scDiQKAI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D03DC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755629393;
	bh=zF+ydeF+EQbR/XZSzojbp5v/xPLwC/3vbk/lNtJdNgk=;
	h=To:Subject:From:Date:From;
	b=scDiQKAIhwvyeYPV2Yn66aH6E0JNTeWTyJM6J56eZ2canVEIYyaYyvm1gHey38hIZ
	 lwUrd9yQntl+jEjqbuD7E3+Z05wUFGrgx8ShLAvrOlY64Haa3yDGqHJIoANihOdB5H
	 18YcPq9IRACutV92jgJklkeykoWJXdNLvzJKCzRf3uda/jac0HYtCAGtWgEXkiCOMb
	 6x4Rp1W2inM53XaXWmtJSm/LYFSdBlviwOu8RhGITMFZgMeGleHD8a4WBcPQ9Nhgvz
	 hIvNnvLOp4uGSE1gPDklntKlBdACOH7OZTqkEp8SI9qP3G2QxJBq6kdQBZxUzZjOy3
	 4chJOHpVOL05Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDA1CA0EEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175562939357.18167.11593022587934837990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8bcccc6b2cc4003e827a1fa423cd71a4a73a3d05a7d74dd8a214584f1f6406d
Date: Tue, 19 Aug 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755629393
