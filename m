Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34EC222F75C
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758655195; cv=none; b=FmB7oBmxdYw/bD2q2LyiBejM3siUKQmygbxlebw0FkPns/dy2DWPjgNUtHUOVMlaazkuVDnv5ImK191nM6n8JbLBR1EdSlNahqNwKjo8JQ1iiyK5Qy0ALWI6S+Nyv/XTYFaDzMXzNZLFijSMYYSpV0PFqBjHz1nO92/JL9QTJkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758655195; c=relaxed/simple;
	bh=M6uR5TRdPLkliSQpeKRe/j3KchfUIaJu38jiFnBkJ2g=;
	h=To:Subject:From:Message-Id:Date; b=NAFEJKwM++MzNeyJ3wSgnCoO4g0gAhsJ943e967bC+YY7WkHr121xqFE/BoxdR3FdBGq0cTLmN/ex9HSQ77yxEqwKzmc0pkAoyWM5Aj3UhCDfCbWfkTev4nqWdOhL/ULz3flYeBcj2BFLv1N2duLeGOXkPL+LAJj0tRDLQkov8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BJK7U5N1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BJK7U5N1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD20AC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758655193;
	bh=M6uR5TRdPLkliSQpeKRe/j3KchfUIaJu38jiFnBkJ2g=;
	h=To:Subject:From:Date:From;
	b=BJK7U5N1Sr7yLtqy5AzoSUkfgXyUdLzfioLQsiKwfrwTa2dFik8peb+3pX3CN+KcS
	 VnkkdTf7bMCK8sIw4kBZDrSvCWwAuDvVVjA1cc1L12LArSe3NV6FWeMuvH02nEN4Y6
	 UTET+Nrr4KDEP/AU40R/T735hrQn9a/fPaTSPSwm6xDKQ/jBmJDp7Dl7fiO9dMuQ7c
	 LXFSBek6/n1WZM/a52d5sb7dNJn+K5vUaFX6DupHbB95YZhE9BQ4u7uZUzqoDyW8s9
	 WiEBzQUy4N6orbSm3M5bqxty1p4p/NrE/RyCc9HhncKJMgXHA4i3+MLJVs3pxC3oAe
	 3oGhRz2QCFbXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E10CAC5AC
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175865519358.22196.17381547177025852868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5821fa062f21eb9741e687b665b776ec0fb41a3f095c2a8ec68af6763209c21c
Date: Tue, 23 Sep 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758655193
