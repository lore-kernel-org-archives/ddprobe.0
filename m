Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C02CB3B186
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760296793; cv=none; b=HcXaMERyAfYOFlf4Gw8hn9O2pG3zVl+t+yxztN+MjC2oTGrcqBkUM/oDRfUtb7t/12z92Lltfh2yR8ais0VPF8jFjLp/bUIO8rcqDC8nPgqg4JLFVjWx6fEYzGgN8x3t6jQELpUadMI8H/YpoF4pEaMzRadKZcdx5kOMBs3QZlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760296793; c=relaxed/simple;
	bh=7pexiqjw8aiPNj35bxxPS3VcYoujZDHO/jFb51yGRIw=;
	h=To:Subject:From:Message-Id:Date; b=ATKfToNXXJDoX7zMMzHc2LglZXYEIygrlCbopallmzoe3FM3eK9e7WEeDyaDnlZDiljmj577xrS5ePKmUktbfL7L+bL8Z4R3fkfA7hD22kU5ufZ2SYya2/k+BYPqLBrM1+teJrpG0VKdRwdwLzz2NOEjrUyPBbPGRxQgT/V1VxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LVqqxx9R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LVqqxx9R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D02EC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760296793;
	bh=7pexiqjw8aiPNj35bxxPS3VcYoujZDHO/jFb51yGRIw=;
	h=To:Subject:From:Date:From;
	b=LVqqxx9R7SKjhQuXsvHbYr080s61YTBD/QHluSXd9MrESTCK6Wt6qy+cuDNJThA/o
	 bybfFAMULPRFeNnzpvY9mH7qMbZX1IAdgYj9Y2mjNVxvsXkrWunI7Vn2mavzkRohgS
	 SKrROCGlf2Rm5c3vJEIqjRf3PdGmiVZhS39dt+KNDuFRrBbUk4L44n+5eaUrUhStW8
	 MYIjLJk+9GGenDGnToJXTFQizrRmUuyvhcMfk+H0vIZDUx4tsWnEJsa+Z+v/XjUX3y
	 kgxEUE32ye2T/zXqDus9AmpY+fnYgT2/Zx4kUYRLkABXLC1NizHhnS9nyga3/NUPiU
	 DQM4IqGRqdjiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE6CCCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176029679357.16063.239195352742146316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ffc06aba093feb9214a8100e8b161d9ecb331cea76537373124ffb0a6feb736
Date: Sun, 12 Oct 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760296793
