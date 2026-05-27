Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 361843451B3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 12:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779885754; cv=none; b=u7kAOfxjMF01PEAC057Yf1HZQCqTFeme1dB3agTE8dINNErqMjzhgfRtlViTM+1qiX7d2iao2dwVyzX74342v1NuxOdjv/+W6derPFeASWrYGxALoBNg+W/wCx4eWPU0gSEPccTgmV0Y+BjoKFBhj88bZr1rGLchzNGeXl+w16I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779885754; c=relaxed/simple;
	bh=4TlNRreCoppWHuldkdhu/1gxO86jcXCwASkuqI4x8q0=;
	h=To:Subject:From:Message-Id:Date; b=Tvs0M1b/rMNXTxzKiKG7jei7PjHf+Ay4d6+ujSYxFI1q/P0i6jXmkatIOEPrFb7OXqSPSrz6ySlby8uVNG5YSFaERlt5wPwjWHK4ZH+XKJIS502howM8UIoDcosiu4n0Ly0WOupE2uGgc2wdh6O5qLzLRhh/foXBo/alJ8sYgvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RizslYq3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RizslYq3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA54DC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 12:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779885753;
	bh=4TlNRreCoppWHuldkdhu/1gxO86jcXCwASkuqI4x8q0=;
	h=To:Subject:From:Date:From;
	b=RizslYq3zWvb7InnxsimxQHEMD2NJSei78T3xTdJY9JP2Q/hYT8F6q6SwJ/6r++Fl
	 gY5o4rrKXLAUyI/2i/pUt3F+9EFtPGLW9TTCyiLVywubz3RgW5gRdRF9gGAjNL18sd
	 pXI6EgD8LFvDH0Xh/QEljLhxibpouZOgh8AlEmZHHk5YPz5CHQLeQmfZpu1gPK/Ptg
	 fUNp5uPRAZGlAi2paXKLybN4vPg8s2dkBO72rQk33Kamo+gC5hdZpESnru6hephBhk
	 c8zoCBBIi3ahRDAHv9CmU6fV8GRwQ/PiAWAMKuAIdrbdPEZnvgrWDaMS1Og7+hgQUF
	 y4LFBDDCDHc8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB9ECD5BD0
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 12:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177988575368.11903.2527815029920421248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ac081aa41d703b6e6c2b8664559be983ae012221d508221ea931e84b42392c0
Date: Wed, 27 May 2026 12:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779885753
