Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42FBB4334C4
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786638034; cv=none; b=TWgetPl5efgXmDlL5w+nmOkqQhtmYSOyseiREFjtBGetWmN1GlTdqiQkN9wX5NNor5Ni6QZZVzRo6kFA8MRSa5ecBGQFceA8mZk6DyS9bGeY0V4LWjtFisgr4mc4I7UceuT6T7DsUBXrZzMY/c5xykptXHRKYr5+vNTTYmHteog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786638034; c=relaxed/simple;
	bh=EVd28G7BF9llLc0Y/5zU3KcXofj2SpIL6+lmabPcKrc=;
	h=To:Subject:From:Message-Id:Date; b=YUBKIcdCEDskJ4mgqt2b7j9t2ZF7VCGGabFdxm7mesN+/DkmkWU/ikhWea/PxsVg2MU8oP99eN8inkL0itSCW0NRNDuBnZpZbvZmqVfpXaa+s5fPFjGFLsPfYQWakXYm/H2jRn4+pGJ5meTTzNZQmAeNC7Fc9ezetxByDNgcNZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B4Yyksys; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B4Yyksys"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE70C2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786638033;
	bh=EVd28G7BF9llLc0Y/5zU3KcXofj2SpIL6+lmabPcKrc=;
	h=To:Subject:From:Date:From;
	b=B4YyksysidyLBiNkcHORF9PmJBSoPQL3l8WSytTlvZbMaNE4kRnwF+DTNhzC3go6V
	 H7bEUpZrGR9D+b7U0mKZ3AtvuRT8iSqHko44qIQHuYV7pcMkChFO9YXPiqjjSyxB8R
	 ML7N3Izhq4IQHZhLDFQw+YxJ7FZUMwguVV0A9wyM8G/We6Hjc1v2k8nRJEi3KZ6ZVF
	 Y1HZFwmffCDQgMa1B8puhWuaRnl8oy8tXzKzETtioo4U2MkmmYLy5ljwWuui/gl69J
	 TPu/GOogUcTq7fQnahWzGBRwVY/QkufXuMzS9fOGNBn+0kx30746STR7vDHMoHumDJ
	 XBOQnJHak4HZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B2DC5B572
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178663803368.9033.16943832538730091319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef56b514e25d2179cf6d1fdcd369646012533e52ac777086ec9349b1f572f733
Date: Thu, 13 Aug 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786638033
