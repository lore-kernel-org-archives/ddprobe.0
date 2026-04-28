Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7D203FB7C0
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 10:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777373253; cv=none; b=C+IER4/TF1r8lOGtYVOg1v50SDmcJ6YS0U2COr74e2AmGVMQpKvSKgQIOaryR+DougGe8tv1Y3upebQuCdUOmx6dGmi7NcKV4Pyg7oClAQmKE57qZ9hCEfsRqGQa9PllbgUmjm+/X8mXxWHoF7ZCnk7Twhe/zOqDula3os5vWDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777373253; c=relaxed/simple;
	bh=u41NWugvqwR+EChGCFHmnos2E4+LB+F9tEDs1Z7OrQ0=;
	h=To:Subject:From:Message-Id:Date; b=n04BQMqXZbAQfleAzR+Zpxquh7DHnQYFVK77Rm8anwDwa3Fxix/m5G3brR/+dx1Oa5vSt4znsMFK5y6yfJwFcjEGefpL7Au98qkiURbBklJcCOec7H0ZpUSqovuFYKcUxSBxPaJt7e/ssXIQTcAsttU/r1Fncl4vaBF2c51id5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lJPGb/Bv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lJPGb/Bv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAFCCC2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 10:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777373253;
	bh=u41NWugvqwR+EChGCFHmnos2E4+LB+F9tEDs1Z7OrQ0=;
	h=To:Subject:From:Date:From;
	b=lJPGb/BvkmzjogBSPXz5Iuuz2nRSqbKYAjXVt0vZGiXH/mIuQv1kGtoySofamy6Pt
	 tWcFPQpHOfKmpknZX8wSXTy4z2tGZxOufr8y8bbtLDovx8yZXABL8wUYi+if3RAlI1
	 KpZqnKS+/QJ+/rQ1RCgYReCV2+oW0e1TsmuKCugERO5Ov6XfcH01DTHzB2IVjnPR91
	 dteWhkO/HsU/Kosm9fYgiE7bp/69QQRk4rVYn4ik8QDcr4gqAXJy2zuXdV4kPuqbKN
	 ImxAS6c89a5rgnvkfie6tNmmboZ8eoHp0b4jovO3QPRkEGBYiH+lBFcw2Z/kBgAFVt
	 Joty3sut8TstA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9633FF8868
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 10:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177737325368.16989.5983859424070922231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bce0a8d844115b5b9539713910cfb8d7076c3c6e96dc5bfe939479b8419f0dc8
Date: Tue, 28 Apr 2026 10:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777373253
