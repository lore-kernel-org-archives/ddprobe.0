Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAF4D33554C
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 15:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770479633; cv=none; b=lfkoouAbkDE+6eDLfrj4lcg4QDN1iDM3UsvIyZ1bXzwb94hnshuMG+/N9gAMIRQJx+hRuawzaoESBDJkfyIrxkb3NHmr/YpLbZE+IhbW+Q4iwA00vGFX8I8/ggz3OUcBW8nzJUToQaFM4aruB7NIvFv48o3SJCiJ3KKlmXOZ8sc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770479633; c=relaxed/simple;
	bh=AeHDexlKstBRsg6TLCwwEmZJGTYUVSq/2y2i5LeGNj0=;
	h=To:Subject:From:Message-Id:Date; b=GX+i5/SS+KYz83g5+eSQ6nRTkaDJdiXYCRJ+7URwwNYfvCoqipi489qpvpamRO/cVprvH/KxnHEbDdiMkzTmM0HUM7DxYFmKyRmn+8/19ChgrIqFBasddVOvTeZRlwBoZzZb/UUWbRbxrGTxNlDi93J/iOKfrDF5roaE8VXzFlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZlUjB4Ub; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZlUjB4Ub"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF90C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 15:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770479633;
	bh=AeHDexlKstBRsg6TLCwwEmZJGTYUVSq/2y2i5LeGNj0=;
	h=To:Subject:From:Date:From;
	b=ZlUjB4UblZGLHZDccc0urJE9Yo6h0+rEjD26swaibpv+9pPPldmrDr9rcEadP01/0
	 4JZKmyO36Di6MbsZY7Gj7JJbJpOONrWzFNUGldJEnuF69C2vh7OlG+m8Gvj/CkY8Kc
	 x/M9tO9Cimq7vBSP5IWJZFkKMh5O+zuRPx7ATkZAji/f7INDYeJ8HBrZWOSricuOUP
	 OfOYxEBEVMdBARWo3hOA+DOKZ5GyYnv+PemRrFgL9dEODJyQzukMeGUKYCnygq6GpL
	 pdn/As16k5F4R11d3mjnmB3OQzO5wDb6qx2dQkSQ4gZ6M5O31xUOEiT6Avnbq6zhFM
	 SB2c3TdxZnaxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C61EE0AE0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 15:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177047963361.25131.12197642805044377926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70252e0be9fa3f1dace72a8a0e448d520b4a11aa71a513b11cf8e96255003982
Date: Sat, 07 Feb 2026 15:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770479633
