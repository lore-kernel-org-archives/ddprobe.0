Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54E5A2E40D
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 21:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714686143; cv=none; b=roTSjrV1PdXKeWJHqbksFeapk5brJczOcubBmpWwxiAlCYnrxx3AlETyxppppanZzoNXBhPAE+Jm7cykFs3b38gZD+tXrp/l+Y5X5Opl3L3Slr/exdw9BCsxHUbrsDKYC3t0IDv2c/sMFeuLCYZKZm8CVBuZgR1RUZpRZt/hDAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714686143; c=relaxed/simple;
	bh=eZPKqZOTW+YkiuuwjfteahJaxZM6OtAesud3Rp7qhbE=;
	h=To:Subject:From:Message-Id:Date; b=ZXraygpeNW7Fb0Qqo4dWk+ziPZbndivempnJbTRbmT8++yNLFFJAjswCRtTBHOLFCrss6WJDgJQQ9WJ3asWyEGjJkASaIHNQd6tYwFjdlwbyZY6UUCvUQNwLBYNB/v0H1+NO191q2oUcjDd6F7JqkTfDm/GvFrHw8dC/K72v6+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XZ7OXwiZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XZ7OXwiZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA0B6C4AF18
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 21:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714686143;
	bh=eZPKqZOTW+YkiuuwjfteahJaxZM6OtAesud3Rp7qhbE=;
	h=To:Subject:From:Date:From;
	b=XZ7OXwiZ/9N998vmlkllGAL5xh9jSamdp9e3KrHPLfLwOYLW381nhXi8b53xRI/Gb
	 K0HuadOL1IE6Re3rMoliizpt4EmCDzsgjgzh7/IL1cIhVpRlfaC3W/I2e3OnnuFMvC
	 ira50YYkIq66eIFTB5SLqxcIUP5vEVtnGsEUp3naxLtFR4BPKLsM2dhGUZ9ptIGlcz
	 swi7OqO/CktcAgGv8mBwHaYoBizwajuhIhJzGXYH1PXqtBBVOt5xJluqbm4DJR/L2U
	 N1faL9SqPw4EVcZdhcwPZZFB3Rm2to5NdqKvTO8m2ZDPlzCajv8gLARHbYtlM8vDCy
	 8Qw5HnCNzNbGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA947C4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 21:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171468614282.5576.8381793757553717927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98c0a3b6ca7406ef4c0ffbedfc374784fbb1b89e5a3ffbed5a038b40e795884b
Date: Thu, 02 May 2024 21:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714686142
