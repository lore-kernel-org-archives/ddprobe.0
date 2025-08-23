Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E972A1BB
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755953394; cv=none; b=lRomh4kuE2mTcb7Qb3lH4N+VrtVpSn4qk5eyRmFdpIfA++VZ5K3d2/LCs8bTHPiMpHWtIrfN3yrkBLKcgwp5E6eaYarsV8MKhQQUTb0toO0tgHjetUHnpUIsA8OWwm7hDi2q4NI9nDCFApREHr7f61N27v+0pCCFJR2EqIbDCi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755953394; c=relaxed/simple;
	bh=4NbClKhEcW+XprUo4oS+wSg3rCx5TLs9QqIq8ypAvwc=;
	h=To:Subject:From:Message-Id:Date; b=Bzdp8AqLawPur8t0c66Dt4xkc0fde6WHlEQWwotCA/DCS7P0naPHHc/lzxIvoPixDwnqb3UoCROre/3jd5MSc6i4HQR3pPbkwPDFBCGwyipSKJ++sPx1qZqeC073+lTtQqd9U7bJ1sYb7R7+S8ZyGuedTXaoVZ1p5BtRDxed54c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IFQf8PRf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IFQf8PRf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A096DC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755953393;
	bh=4NbClKhEcW+XprUo4oS+wSg3rCx5TLs9QqIq8ypAvwc=;
	h=To:Subject:From:Date:From;
	b=IFQf8PRftIdqWIYQecEHwADwn8R3pzXe493S410E6hzEYeVvD/a4fr0b5/WrUkm4M
	 rKmI3kje0TYNc036YIVuSQl08bZZ6F79lGc3onQyNYksMSkGN2rhk3osNqar7hbVmG
	 fip4szpojOi7OfBGURAMP8hEAgXQt8vvM5ZZK62r5k2Pv3VNOY9fMhetRVtkuue8Xj
	 Beq0TUQxZXJ3KPJwCTYBn8IjTnxJ7E9PaplKIpD6WBPC2QIaQfGCJhtAPvI8VyhwcJ
	 ts7qkj40kI0ryKIvZHtB1LGXzjKjQ5sEsxs9MZQ5wi1XgpLqI6+xIphGWuKltIEDa3
	 /HY/uvj5Be3NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0BBCA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175595339357.21453.16799962857684071621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34cdbd0b957976e7ef55202dca828e00b6ec7d1b6a60b612cf578f4944bb7360
Date: Sat, 23 Aug 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755953393
