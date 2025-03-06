Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 457FE10E9
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 00:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741219734; cv=none; b=Gs5Urp5v5JzprB2Ghzd2t8SRX0TpUz2sKnceq4SegYt6CDkOryT7w7hbcoAKwQRVnHXgjnvbl+Sb2RjejziA0EL3bIfWCu488aRzqqo+gyqdU2uiUrgImrZtOZXlxwtxFdIaEMemJTKsdptfmJ54phmJTb+mNBRhYWdXvwy4e5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741219734; c=relaxed/simple;
	bh=BGYFcvhOVXxZeC9RDqKWSkOOe0s2U1J3aR3OFSPyzqE=;
	h=To:Subject:From:Message-Id:Date; b=Ckag2qiaMaaGi444zELMGGfYFR6EUtKWYLp9f3aiydKYNEvl5F1inkPDa4Q1svLllsgJF8zvkF15Bvv3cvXh2NLQyWbkz+9oSHjsTrkSwypaprA4Xt8y1KgxJYmQMprFiJ0G7RTFVoZmtxGJZ87NKfCWGzJrQMllSadBfbskMPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z1+u3YNa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z1+u3YNa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3AD1C4CED1
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 00:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741219733;
	bh=BGYFcvhOVXxZeC9RDqKWSkOOe0s2U1J3aR3OFSPyzqE=;
	h=To:Subject:From:Date:From;
	b=Z1+u3YNaZxOnQv4HRUGKc1O5rMHHOtg9AfeSMhwHRNaErSqewLVsnqLlIcq/1ocjP
	 GsUSnk80qrUeYahp1vD4AULaSio2f3tOCdxYJ11Mu+mhnqr2xF8ClDJjqMCphD7PW8
	 G6R8cS3/p+EGEcinnK6x+aeeLqKgy1cH/TAo+pL/5EpLzVChE2t/n7KjEgiJtrqOSl
	 M+uxKfWYU/9ohXXKn7XBOIRRQahd/AqeyaXYMmXrR54Wv3SEXMV3R8XOdt811zZXob
	 1GzqBLIJKlwWxHuSddmq5VshBgKgdMfoRciYSoIH47oR6fTvdBtfEQOtwUMxiZgucB
	 MTCpZLblbRJFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BBDCC19F32
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 00:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174121973362.5496.1548896457073624380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1985ac88fa387b1838a639d2edfcfd7eea8090d12571c5ebac3e26db48ffa47c
Date: Thu, 06 Mar 2025 00:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741219733
