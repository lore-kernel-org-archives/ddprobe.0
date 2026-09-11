Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5167D4A1DFF
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789143634; cv=none; b=jmIemY5jWvojFLZYmUI23NVfHJs3Aj2NwlXvLxoQHO3faRgpL5+miKaOBY52N5T1RUSiNp91XkqTbbKYYbF0Z++QAUlVWbl6TlMm8s0rxyPM7UTN43cNksSM+f28UXMyN7ORwK2USnMuhbFk2L9Tznv0zVeqegXCHSBIr8Hmntg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789143634; c=relaxed/simple;
	bh=wsorBDXYCyML/rEP4O8Yv4CTETUukYhN6zzL9KJFpuY=;
	h=To:Subject:From:Message-Id:Date; b=Ei4F6Bh1xbPX4SR2Vbs+PnSf7gvKqngBBmJFiAgAYUoFxECivg73Z0KJhs/E0c0S8/JtLVnxPYicrwsYleqWeP7MT+ezYM4SWzMNCwrjtP+u1mTrn/VpFL/rb7Kylb5gbm9KhvePDx4S8gBs6nTX/4Y8uK/LzwT/JISZA8vFj/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hZEGKZcr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hZEGKZcr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1B78C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789143633;
	bh=wsorBDXYCyML/rEP4O8Yv4CTETUukYhN6zzL9KJFpuY=;
	h=To:Subject:From:Date:From;
	b=hZEGKZcr1G666vto761yIRwgtN2ZqEgU1CPRyFs/vfPy2BGXUPkPfOFr/pr9WBrkp
	 7XoWFhzFY2wouDk8bvQBVJ9XhsuEo/542NuiNp6RKaHgL5GVhq1zMxms8GsY4Mnapl
	 9MY1W6x9lDsHJxfr+rD4TphGEHGyFCEDsCA1CpVt4nc90lB0UtYF2UToxISmzmQjxU
	 TctSaVbSHVlxGh7P5WjeApIBEoQSDOpPyBo2qhGBDwZwE8m1Rx3WWpvnm7GECWSpWw
	 hKEYzCWZOYgd+E1HZHgFRftMi7dF+lijcGFzvgGeFkR1CAzXmUhsmHlQgN1MGyVJj5
	 0+tEj+asP2pXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFC6C88E53
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178914363369.29176.6277493787551273259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba91e6f881659910de3c03edf1c0dbbd5279b4a89f3a05e7eddceb961896cfac
Date: Fri, 11 Sep 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789143633
