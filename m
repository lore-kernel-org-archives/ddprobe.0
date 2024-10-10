Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381023D66
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728538554; cv=none; b=GlwuilBDBrXBNmKY84+p+ashHwTNulwUrrbWC7Kx2f+vJ9klmprIx8CavogiTY1vNWAF+07FVGGbM+5ts+prXkZkhkhkGHS0IjFEPpH5MyRkZv34/AhMt+PB2/fL/nF4O9II4U19lLTWxhO7oaU7zBduUyy2G39ZnJUS5h1+4Gg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728538554; c=relaxed/simple;
	bh=StEnSeFn7jomL0EgfiJrBmxXovDZ3gJ46EIR2O+6o58=;
	h=To:Subject:From:Message-Id:Date; b=rmKiLkxE5QYBWoOvVbd4EQOPC4tZO0kTLzLOGG32oV7f2XZpjk9H8K1XvfmKColGlHVC/d0Ml5HZRLSStiKYUDoTEBvbC+Ox5xnYuXFmnmLp8a0t2N0CmlPEWLMzb8OHrnENN4kKSUToL3Jd7GM9W1KZl6QVwT071yvU8679R2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T25XBmn8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T25XBmn8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6B97C4CEC6
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728538553;
	bh=StEnSeFn7jomL0EgfiJrBmxXovDZ3gJ46EIR2O+6o58=;
	h=To:Subject:From:Date:From;
	b=T25XBmn8HIx4IOri4GfG8e5nXpi6/nyKp2Nh5gm+RvKcEbr11tVsSgU4bzD1BVasP
	 4zevtrcj1wn0H0kIGZfVZERLdkAotygSZvfbgyTRBl/kuSW1Te/7l6CBLT0+Cb2Mdq
	 icD7w/fu2Wcb8uRN7XAFgRI/uxj84mnoQLgWcLl0OrTe7ZbtCTviHetGbI+XeVE49K
	 2raWF2xlhm4q1RsNCCWpvMpu/Pw50/tJoJJd4FR/e8b647hUqF4Opj7BAjSSaTn6Wd
	 o72KiMk6vnyF4lR5sc8yEgFtb5sxebTqO2cjbPfBDsb0oIaLVu85YUQey2EH8HuYBj
	 lhnlxZuPgAoNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2EDFCF07A7
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172853855364.981.6263926758140945330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff991768b5049bf6fa3444cf78a501bc516b373341c69cd39384e986268bd4fc
Date: Thu, 10 Oct 2024 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728538553
