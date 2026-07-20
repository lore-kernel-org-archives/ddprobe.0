Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6038D42E8C0
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 21:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784583514; cv=none; b=EwJ/BP0BbT39EhFk5tbZ9DFIs4kbm1zNv2nYmGlZBK8JmYKH3L0VVmKf2lQoesFSUaVRl14QuYQwVWNwtXllPCAkbkPXVu9UxfesAQQ4FgJKKtoj/DKhLJ3ehNiY1yVrKEGRwL3yqSXp+5VRQ04Wu8UWebAHCXLlPXk+s6sROhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784583514; c=relaxed/simple;
	bh=EGuOGFu19hDNcYnxJM+fYrrd/Ft2kuv9rg2ILFKCFY8=;
	h=To:Subject:From:Message-Id:Date; b=XZtnuqEa00ubUU7u6L8h2XzxUSO3/MLaWpV78YZZaktdABYnKovdPh2F0v7AGfvj4DY4rP3Bs0yT9DAcdT2n/iF0DAmGaX2HuzX3PGLmmSAXy1VmdflhPJIY3z5C8K1a5TOc4MHlpgh0OpK2EcKYIXaAS2f5q3q+YHRBkAlO85M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z5rDtko7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z5rDtko7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0960C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 21:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784583513;
	bh=EGuOGFu19hDNcYnxJM+fYrrd/Ft2kuv9rg2ILFKCFY8=;
	h=To:Subject:From:Date:From;
	b=Z5rDtko7yelsZIFY18ASNPiv13OiDqHYaob6JbmhjNkxeh1aQeV4o4bEKswkxDxVV
	 o40/EJI9397uFgVBq6/TyqnkD5rv2LDi3Rbw/Lc2pDLNe4ReHNNuTDYeGvVapA2SRE
	 TDrK0sJBWX6fn6VPj3B8a82Igva8Uz9rSATErqwF9j/uKTlT8xVBUfOjxU0HHxURu7
	 P74KnnxyTxfPpEnoRbzuJBmLNggso4ah77LED4YZfOHVsmVhe9mCKEicmxz3pH+WyA
	 Jl0NpYheXfovIbZ1mh9YxI4cNZYzcJQe0CMAgosTVml9fn6kcVALFhV5jdkNWb+jnO
	 nrbdgGa+LON2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA2BC44520
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 21:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178458351369.29622.10080848668104383783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d88d03f9831785237de7d20aa3f56acbe12328f75f36e6b52e3e0496fdb36f9b
Date: Mon, 20 Jul 2026 21:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784583513
