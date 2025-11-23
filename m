Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E87E61F4CBB
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 20:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763930514; cv=none; b=uAHNf55/7Z9i2XSmshQkW8izUodj7yeBSS9+TsTpqYtHx8rg6tNVPYcegAr6gHV8KqBE4qgLmlvm7mYqNDu3TGNNkWxlC3zOQZJLmHt5k+jyuI/3ihEiLFy8UC5YbZQxAtiLsPeHQ1snFoFrT5N2c74vYPIDUL2ps+wHShTBhKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763930514; c=relaxed/simple;
	bh=emK4iVDelmdstWHnP23vOPYHvLIVFr0fKd66L5blGc4=;
	h=To:Subject:From:Message-Id:Date; b=MXKEJk7V8hvVgcAMbl1neIQb+zEFSMZxKx/bHngSuaYYTonIvSkRDGcmXMRbmjFTx884NUkNLJCAGZ/jGnBUrAR/KDFH6Qyu23T/cPGZ9v6DY7EqIeKTfcHzsU9p9mnyxRFBxKafBpch1GbXOZDunuHgRiEFmP/J9ZQn7hV/8PQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jqjrjNzo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jqjrjNzo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B93B5C113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 20:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763930513;
	bh=emK4iVDelmdstWHnP23vOPYHvLIVFr0fKd66L5blGc4=;
	h=To:Subject:From:Date:From;
	b=jqjrjNzodZvOwkw4h16RO8wefLuG9q4DYAzoArJb/kl3+ZhxjS4lHod6aMM83Jejy
	 a7DFOa/ajduE4MH6eLKKe2687UH3rLhYEFQN6Ak4vfV/9HLld/O9vQbp/0AWIGEg4G
	 CvN4mbcKKZlu74hT2r6i28mnqHucOziUsgYKh2jNJNn3LtpUZyQxFHOlhkjCf3bKlj
	 k3SGxOM/Fxzjwm/JAqvapIEEsADTmbE5mlFGFT67fWKUidEUmG5M8neoaAh13Fwi94
	 5rZIJ44dxuH0PQ0kVvVle1MgYHB7Nx+BvODWg0r9JjBAaB1335RXykgJ5cxqDEoAd+
	 f13oVdvO4onLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980D6CFA46B
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 20:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176393051358.5181.12886005619761952002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 693bf469a1b210153c2eb521e2a13d59d03c2e1fb4f0a13e30d431f8cbf1a3a0
Date: Sun, 23 Nov 2025 20:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763930513
