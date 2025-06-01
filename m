Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FFB518E1F
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748759394; cv=none; b=iLQTYh4mLS6BjJgPuMHhj1r3J2xjrjwJB0kPDHpkwjFbwnS0R+oVWo0e/Iwu6xfZ875f3WkkVq3cwyGnarNX32rw0OMjvzRcSOVMk/Jt4mJ54RxIK7UwhO8nM9Lyf+M6ZuQg01dpMR26Z4M0DfZVwzxD2PvG+p/W19O7f0s9+ew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748759394; c=relaxed/simple;
	bh=Nbc833Zf7+K08imvFghfTRLu/fEc7Yld/B7nTco5+FQ=;
	h=To:Subject:From:Message-Id:Date; b=BrzXAygfBtlRsTDnIoQ5Q4MdCCmzWmM1kxi4DnTRvpcN03+3mPXnsx8Rp7rqlil0Qf2N2vEjnNz+u2TO9yyWT91IxvV4t6kcgY3yFNqIhmJci6c9DqtCnYFgWxLVHHjY+Oza58vShLuNlrC7XiDyokVHNSBq1heVNdt6pY2VlRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZqA/xRPy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZqA/xRPy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6176C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748759393;
	bh=Nbc833Zf7+K08imvFghfTRLu/fEc7Yld/B7nTco5+FQ=;
	h=To:Subject:From:Date:From;
	b=ZqA/xRPylr7se5KGeH6xTt7q7Rqi2WKvnLEqCA5JGgcSLQG90bV69JBh+lppjYyBZ
	 tElSEGIXaX9dyV7GpQ2p664utNOFajhGLrTSLmbTzaBbTZ3BZA3ZESlPRoHRpAoy5u
	 YJkln84N6p4qmo8Y7CJJIrLFodrjVVDpQBORx4QtI7QpDw9ytw5vAWt3n+/w7rWsi1
	 aro32J8nxOqATbz+GEGKNpb6HmhkqMfDUwT9VYHTkT5j0CYqrYzkUeZqabPgYUoV7v
	 TlsUwNOKBILsKNDblc5xKMWhX+K8tqYaLg3xGm3tXuh+Iabfp1WpvFTz8LcvaB9PUq
	 FTU5FGiASzA7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B84C54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174875939357.5920.13953761173813244386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9fdb3c81fcf2cc797db28b73aae508b5c98a7d439fa87016e5933fed98ad9c6
Date: Sun, 01 Jun 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748759393
