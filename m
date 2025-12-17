Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4098C34D93B
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 15:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765983834; cv=none; b=JhNxanIVjCLqwXiImXhzHYYFd/gAWDX1DX1KlW0U/p8TDI/QaPJ/3ZmEj5JWezd4XWCIm4X8u0U1Oi8PC5KdFW4wd7s24HKUYEb7LYRYKtYJixYn3aAW8RwiL6IlS+nVZSltEKWKKBJifMne+gjBjrk73v5sCOeXo/kEeP9kl/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765983834; c=relaxed/simple;
	bh=7pdcc5qwRAxcGzdr6+AQrFnFlBas9aasSFK1I8/Jo1I=;
	h=To:Subject:From:Message-Id:Date; b=dTv/6rp7VPxOqfobwIb16DXYWXzxfd0AT6cjDcNaeL6THRfwUMI/b/yKLJC+EuWEGJV3ijQqXmO8ikZ1UZnrawQEeUylFmH+Tp4ODZTXa1MTFOkid57fP6wjZ5AS0iMDdo3C0eBjvmfRidYG4i+qCzQbt90QlD3PVDt/Z/+sy5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GrnOdfw4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GrnOdfw4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B299AC116B1
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 15:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765983833;
	bh=7pdcc5qwRAxcGzdr6+AQrFnFlBas9aasSFK1I8/Jo1I=;
	h=To:Subject:From:Date:From;
	b=GrnOdfw4tyxmVzzA+LkmMnQ4FESnqgIIlb2xydzDqyt2T4TOfd1ylgqi6+Wk+Vwpd
	 TkAyKwiIPS6hlglZLKub33DmQbi/C8eQ3InRWlQmVkHpidY0J7b0SXcJ8KulUzE8PU
	 28w69l+dJKeTpwvxjwS3oH5Ng+qsglgqRRr2hgr9KGhia0oNyCtfugfMP3evalMBj0
	 eyw4/r4P7oj8jsUSOq6HrxZslP79f3uO/dIwehFqY8ninVYR58zdM5u83B8nE/r4cK
	 CE6uVMRSqA5uBQWSvQWyT+QTS88iQvsdh772S+ZgkHw2Ifg5asUKSTWwxTqpfddgzS
	 sS5UE9e+RPZEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E0D9D65C58
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 15:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176598383363.22104.589784782248720646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f9293991d7b20e55b4018b048dbf327ea042059aa5982af00197ee8562dd4e3
Date: Wed, 17 Dec 2025 15:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765983833
