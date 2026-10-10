Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69E49A59
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791593434; cv=none; b=psdbqrfg4X73sDBZuZGDEhbDqOmXrOx09g5ZeyumJ5hBGDC7IYbBM8J6RcfckspNgGPBAdhSkALYqSO62bs1l0cGsW73J3f+f8ZncNpolyowgGHkO0o6+I+yjJXir5mvo9Nzdr64UhZ1LtPNvd7YR4PSIcZ9zzYJSdyOq3oj6Co=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791593434; c=relaxed/simple;
	bh=4sF7wKQRguw9JSlQMxXx+zCoZ4gWizBnxh8RyDhTYK4=;
	h=To:Subject:From:Message-Id:Date; b=Zcf7hrEci9sZkfyM22KEC0xbS8Z8E/aMrxIZWZWtzl3lrk06RVM0MzQvVIACBCCcb1GN7IR+CV3gbCQ2uU7O+LJPz4PSDeJU30egSbreK3VNy/hqRGXS9JZTLJRpMaS9ir2ZluU3m8AZqTIc2+NoHtXnnTjjr2FOfxLho7beRUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nc5qnYrn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nc5qnYrn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D528EC2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791593433;
	bh=4sF7wKQRguw9JSlQMxXx+zCoZ4gWizBnxh8RyDhTYK4=;
	h=To:Subject:From:Date:From;
	b=nc5qnYrn7FQtplKNC3rxQQa4nU3pKyVmLmReKEOT6dHCGN8i4AxfVI2OzpkiH+SV7
	 OCMHki5Lc8QsRTk+FkcWKMcnil9DgmtJAJKtayiyEKtS+K4vrXBwIgrOzLW1OC0IpM
	 80s+G/dHChmOIrEyOnSOgLiXk2RSM67CDvNtbsFFE6To6ehQwxBESJMoh14qp1o25u
	 qp7gp/oxHkRzVtBBVVxIieNQqkFulqXO4XGmwlIRH/S+ywKYRQ2/UZbMrWmnBrjDXH
	 DyKizlSM9Rm21hwsJypvT0bz2UAzli19nHJlLCdyTsTcd+85/OspBYseG/OgAUE78A
	 fxYqjYvn5bEmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD215CA601E
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179159343368.8717.8553338073638395548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aabee5f8a6734991b328acefefc50662e5ab5c91bd4249e8d5a954ed897bd9e2
Date: Sat, 10 Oct 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791593433
