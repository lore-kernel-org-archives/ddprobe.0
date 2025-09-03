Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2D32EB86D
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756888194; cv=none; b=KPiFJ0rzx3Hf677YpqgHAmFpza+KDX1vVhfr4f25X1x/k/lp2AwhK0/9HuyK5PvYG6Xo1IDSiaxYnBISm68zKd9TLORXOM10X9SBQfWkaxhfMp61ASLXNhXMwt8CjdIezccpbbfC6qj/zapuD9FdVccnHznSaAEoTE6e/lsZ/Xs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756888194; c=relaxed/simple;
	bh=tAxb3SNkvuc9DBxkZjvIL6omzq0Qw0pNYV/I3FN7faE=;
	h=To:Subject:From:Message-Id:Date; b=GCWyzRIOWwHWbPLy1OhITVqVti6BQUCPKLnrZq7fJOGpuKNbnqz/jGPZEKeI22ZUxFQ3Wrgs6ddaLRp4a8kv+RNX58Aaa0ndz6w7zGZub1VkWZAJar96/8mt0FdlfFTLsPuLmKWYj0gb8uYfmHO/KM4DpPU1zesXX7D81pJiVeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lxg3nfN7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lxg3nfN7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41CAC4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756888193;
	bh=tAxb3SNkvuc9DBxkZjvIL6omzq0Qw0pNYV/I3FN7faE=;
	h=To:Subject:From:Date:From;
	b=Lxg3nfN7tPvOrVh3CTCiZ5VXTIj3ShSptX5YGHkZkPiFyckaAL0eQC5g1e9d+h9Mg
	 GwDZwcx6r3kpIip8Ar8qGYHPmOtYdUOeAG1kS+hVzzct0OL2YUlCGWgd5uYuCKe5sd
	 mZhtU+0wq5v9eb2IvK4glVu2jAhQ+A8brxwoJmgqiJcllXXhOXI3zw5045y9rIa+ho
	 bAHWRZ2fGy5iKibFWNHLux03PXPnBcNEPD/dYMkWAxWfIHpzvi2BPZN0VHyZXFPyTT
	 Pb+FKdViTilXqjS0CdRsVSo8nDkcmRMr1R5t8jz98VdqZat63xg+vHrg2VR/78K7Q3
	 YfEFz4F2w3ODg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9048FCA0FF2
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175688819358.23519.15447235791088701974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab26b740612f2b013058fd09a71a5c217b29762fb74ab35399f7b13d4bcd1f70
Date: Wed, 03 Sep 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756888193
