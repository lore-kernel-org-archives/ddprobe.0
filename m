Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31DF840DFB5
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 03:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775965054; cv=none; b=k50xJwNCmBwQX5divDX8Vjbo5O+GmzO0kAX4u3NRA3FR/wj8CBzGh0Ks9aQ6h0HUAK2YAh7fUdQL8hJ17i70M6Z/yh2TD5KPR7LWeW8lfDkGTaNs8sZn+WvEJhj2kwiOBOFK+oWO1FPZMGwCx+atsgtttvk2yIZ1h7TcQmQQvlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775965054; c=relaxed/simple;
	bh=pvW6Eoy31gIMWLInTmAgh3LQnKpBYUBOz4M0V/J8Ss0=;
	h=To:Subject:From:Message-Id:Date; b=ERpanw4Iqoy3VW3eb9k/pIHMgpO74qDSGrraHwVxXek+02GEmXMTt5ubT5i7jK1+l8AqQuhsY6qJq7PA6kVbKs6DuD/kcXFXjZ24PBOZHSPJ7vVX72mSo17AOUJkxv6SXB766YmzZE6NnPgrpxN5mT6fHeTenLCbCYblAmUMDnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qhlBL6YX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qhlBL6YX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C14FAC19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 03:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775965053;
	bh=pvW6Eoy31gIMWLInTmAgh3LQnKpBYUBOz4M0V/J8Ss0=;
	h=To:Subject:From:Date:From;
	b=qhlBL6YX+/gUxFlpbWANV9wALXb4Puf6kNTmnMC55QwFkTLNXvRdohPUL+FhsYiam
	 E+KbwxQjo/ClJ2v+2A6QmayHvNiYt+AZmXS3a87XlZ4lbPUUdgb5kxjOnFD9ec4lRK
	 eCdo9YCclV8YQ76QEei0VTYY8KADZsV0gZ7dIZLov8y6dlKy51He24pK6fLQolzfBx
	 PiArlxQCvUyFkGlw+/RDtdRkTiOkz0eTR9BOS0Z2kRZYWmuFyb7a1o4vIAYpcQdeBq
	 Zal4Lnb16GwanJTb0HyS0F0ipe2iADTiDmXxUa773W87cpu1Ua+ximbx703llTSLd6
	 lxciwxEtx82Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF74DF3ED63
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 03:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177596505368.2568.17134854492154840579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9498eadeebf92e5f8330dccaf7f23a0ec4710f9f1e704f0eb5e9df549b636fc2
Date: Sun, 12 Apr 2026 03:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775965053
