Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC853B5F48
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 21:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783718314; cv=none; b=jVuYIV8ZRJixC/QoYcPIaPzAG8aHUAZ4J3iqianxXdqkfNApw4Bk8tWYmRvUWlh0gNcEzB6fxj3IO3zlbtojLOk+1yF8EhiaJeoEyaGaoxXG42LEZ/DJ3UpfrhPzrMCIvMqeHNYJMiq3YCLXKKiQTUA96CMK1KeBGuUazAjxcZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783718314; c=relaxed/simple;
	bh=X9Nafytwhyy/dXQVxS/po3ZjJdySjYyBPAzfOgAyFnY=;
	h=To:Subject:From:Message-Id:Date; b=dr59zxyoTztGmvPkLqZkyu6YGO64+fzELCPkYJ6eJtOJJUZUN3ZoHqOnT/ue4ZHUK+rg2Csiad+pXkbteVAdK7kNamYJZjvHD4K1F6m1Q0CLwyoe2uM/NjMxzjvqIvpM19bOOUuvW/O3H61P/ocQLRBmCFCJRqyCU8xzVWUx+yI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uYYq7zZu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uYYq7zZu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB9F4C2BCC6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 21:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783718313;
	bh=X9Nafytwhyy/dXQVxS/po3ZjJdySjYyBPAzfOgAyFnY=;
	h=To:Subject:From:Date:From;
	b=uYYq7zZubqSSzFpYMJIa5I/hqZLP3l1R9bGQPnsDnra9XO7Ky5p7ET6APERBTrXwa
	 WrzUlt5NerCNaynkm8i47ddVmGVft+Gui4zCEXsJVrN3ajLlgWIAgdEbh7+NbWQXJm
	 MV1qdO4B0ERZhNiqgdI7GJn3d+u4Z5aG98ZoIhs2Rkh2CrHuWpy0dT0VGMag9Efyqx
	 +cn5eAAIN8XntJsWQPzFgtEZcJX/FM43fL8BpLGRUwDuMCc9NfcTPTnYTErvhF0DgU
	 dm3kPeU07uQrIdrWj7G+bpSJ4uGfUWV5UQjFRT4ylwXAU4GElzpQbK4aGLVo2BvP+t
	 I1D+WW1v4jWgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1F0C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 21:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178371831368.12946.4609162058331255006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b3b08cc7981fbb9fae50e2e6628fff15c4cfba88b8fe5203787b9e2e577df30
Date: Fri, 10 Jul 2026 21:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783718313
