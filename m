Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E63F6F06D
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 07:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717832843; cv=none; b=ETGHxXG2lgexgiWg0t/nAw4fYWuNmP7eKhcFZX+57X3EQQHhSx4CvoRkamJl+Ns6lvh76gRmUdT6D/wl5EGb3eq+Z+DzKfxoWkPcYiDv4mDOVNkdfLmavLyR/sFVDub4CIa08JtKnu97+19PMF5S7FgiO0SQQCNLPvCSAxFL4dE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717832843; c=relaxed/simple;
	bh=V0lzq0bvGAV5/VxPqAHrpSsFWLKs+ryvzlRypZqYRVU=;
	h=To:Subject:From:Message-Id:Date; b=PQZYkguXOw6PB910q9h/DinWfSjbLdTuhYNGYjKheNHebytvMUr06nBtMqfXw6wmKydkxW47Vr1o954V7/BN3e0gsx1dv149EeSLpTQtmz0RzyMWR197jZ6IIMIR+scHeN4Yj19r1PmbtVxee/hgWUfPtEdLAbqtlHol1JCQis4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LSVvpcod; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LSVvpcod"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC807C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 07:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717832842;
	bh=V0lzq0bvGAV5/VxPqAHrpSsFWLKs+ryvzlRypZqYRVU=;
	h=To:Subject:From:Date:From;
	b=LSVvpcod0wLgrvqxejUa7fKneH+cfuqvv4obhJTWLP7VjjixiO5bG1lXOZ7XVaJnM
	 FuO9rZSG0GXKcmaGprK+rn96Z/9C6ApCYw2Qag+7ajKWH/6R8i1oLZa7/VdVOxsCTO
	 rvviuiPFithr8XALlBJrm6ZVsuHVZ0pB7hf/p14UyEMB9nwlWMlzD4aZsI+cBbo52C
	 dX95LQJltyLkl8MW8Frad3oa0AIVqR+ke6iIKLuVMT+eedfaG2EtHX+GqAGYpeiUX7
	 +jZcyy6iEjmHVG6JKbZGlwAi5M4rHhCAdTb1LGS0V/H8sogLWCBg8yPEvY/Wah1K2d
	 mjl8U2A7G2imw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5C15C27C55
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 07:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171783284280.27332.2119013439886456440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b1f5a195fc2e0687ddfad596bc7e4fb34318ce18dce3b0498b855f87463344b
Date: Sat, 08 Jun 2024 07:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717832842
