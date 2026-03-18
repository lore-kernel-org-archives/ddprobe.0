Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1608A13B5AE
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 02:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773800094; cv=none; b=fNUgNUfUSgWNVYXHGJx3Uy/3ZA65RnRTM+urNTNzzOyta+PvxKDnxevfdKyva8SwiEKbC7qSxGC+ssi2d8JWsZcADp/dtpHj6KxVtIVY2LsTh7wrdkL5KwdeFIaJzNWJjOo1y+5cw1W1Y0zw1GggZJJ+dKKV3cGPii9Vn58PZuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773800094; c=relaxed/simple;
	bh=eVOp7HDBwCxrIW7DWz+u4obeEGhXy2gCrwd1U/p3ynM=;
	h=To:Subject:From:Message-Id:Date; b=jARqSk0iZc0EtJhUtrXv7VWTWQ+1wSP2ohN6HrdViIZeBIgCY05N+i0Pj1k/cv9TCHPNdd8LWaMcOIU5hvZ1E5EhUzR6nDawAAcdcYagmCfr85AagfXsx5C/pWo/tXlzidKT0taMNJFBLNoNXjyyqNelFvafi1KPclUy4RLS8D0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lhNBLYQu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lhNBLYQu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF24AC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 02:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773800093;
	bh=eVOp7HDBwCxrIW7DWz+u4obeEGhXy2gCrwd1U/p3ynM=;
	h=To:Subject:From:Date:From;
	b=lhNBLYQuZXMtQqx6jPj0S5O3t7pSEH+g6qw97LMqm7glfPPkaNNyU/uiRS9mweQhE
	 YjjZhESmypQcWrfZbpB9ilq5jzaDez8URC2vez234nBlJCwofmEAs/6iR0Opo3Gdt+
	 uavHO1OaOZstpolnvhHhJszi8yqQxqgLVNi4Eqa/idnFwkq6keIBiDKVt1LncTiLFW
	 72Xwd8TsL6nZUrjsXRWuYpEAjhLPBfUtsgecgO7DgCIOx3RugdNXw2+GBqMNljnVuc
	 RI/xjBlinifPjF8S5VtrTWYdavMFwGfqbWaMSUnGf8O9EnEX5WuiAq3ag00hTOUrLb
	 r2ntsXJOuoMbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B79F10854CD
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 02:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177380009360.12501.9443307562111201900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00870340fdf53aeb40a58157625180c137eebb8291392b01c2db6644379a5b08
Date: Wed, 18 Mar 2026 02:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773800093
