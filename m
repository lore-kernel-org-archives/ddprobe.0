Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311AB253B43
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745836194; cv=none; b=HO89HzsTWgd32X5B8O+B3RZawswXlnfwDHNxcJTv6gXZKQ/epJ7VQJRDfo9v/c55exZ53Ixq5s//0sn18fs/qrEFVnz6gmF4v/kW5Rir+btD3m2SCuGUEhGM0Se98JYh0csS6PauYIJV/OyJSmzC8ZayQPSAVhsBkLwUOFiwNz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745836194; c=relaxed/simple;
	bh=+YOZfY+z4dAQX1WAqs3bDxhP1H/2dNUm40Srfu+CR9c=;
	h=To:Subject:From:Message-Id:Date; b=fFNMR/NC99fJUqQMR+fLKSTh8AT8kdIRjwI8ZRNsyC+C41mOty4bPI5pTkM4Q7H6bacBUpOpQv/LOHXoikwSkNg3AEheo6o1pWXpo6pvO9i8ZSiO3q4vcGs6/olXTnCZ///GENEukhW1Nnh6NzpJ46pe66RuTU7Q1RQwll+sUlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bS/KQyB3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bS/KQyB3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F45C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745836193;
	bh=+YOZfY+z4dAQX1WAqs3bDxhP1H/2dNUm40Srfu+CR9c=;
	h=To:Subject:From:Date:From;
	b=bS/KQyB3bgRvUd2mGMdrafazaeTR5eu+XNBD+agLB+kaMFf9clITy5E7kFmkfZ+sf
	 DMo9lrnSNEuFiYL5Rxm3RJZU9jzAzdb6t1BYKcUaTkZYHDzJpVmwiWQI7xt7chmm6C
	 o4LTXC6FTSpB/z3A4u4HbciZnSF72fRUokIh/iOjt9kNHhLacAAfEBomY0bxp/taPs
	 wT8vJ+ZpEtZnfFyK5GzFDgNi5ulR4ILdjdJBdxd5PU+vfho29Ba60FEtnLX0d+sqwH
	 JN3o2qS1kEB1UyIWjfVigSLn7rbOWAbIQBGHgoHImagknElroYCtjreGcPdW4A+8zq
	 9KDQUz2dY2NXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8B2C369D3
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174583619357.27629.17609968327013656979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2fa9fe09a7a9b0c90f65471c14beb8d3260383e76f746becde75b7b74a20be9
Date: Mon, 28 Apr 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745836193
