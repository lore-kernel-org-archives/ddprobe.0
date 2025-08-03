Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 180842AD3D
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754212794; cv=none; b=lDjU31WDKMbWiqGC3EjV3Ts198CbnVGaFrTyhbI4BVuF8cQ2dUWXx9yY/HsHOWA7PmypV8f4ZnPD7IlUcnLr1VqIWNMYZHrBAIsa+9dLyK0DUai1rhp3LFTldV0hIXxBbvW5Njz6exazMmBlhHcC1asDdYF+PLbIAYbFEkAu9wQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754212794; c=relaxed/simple;
	bh=pd079kJbI50ZkZSIodCaNgISv5r9htIQMCtmkJmkKqA=;
	h=To:Subject:From:Message-Id:Date; b=IOkD3d/b3twgUUTsk/cLDgvGt3rcf4pkGRH0TEVGnHS+J5y77PLTpAoNbOi5xevFS2untA0SolNg2jkFDvmAZF+Lwf9NBEbaWP262uJZQwv6RwGpyM0H7xpCtD3Xr3bbTHT5c+rP5dOuFA44ZEWjiQZc77xyoukGMoB2UJC+kwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WUVXBJ/v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WUVXBJ/v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4569C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754212793;
	bh=pd079kJbI50ZkZSIodCaNgISv5r9htIQMCtmkJmkKqA=;
	h=To:Subject:From:Date:From;
	b=WUVXBJ/vWlndsSi+J0xt5Z6TAXt5cR65Qb8EXREIfQ7ccXo4PaZ4M31t7PWQgBNae
	 8rmO3x9ndcITvwv0WH9GeX91ZIKPkYwO7CI3VEZojXDUPJWxS7HgG/Fz+yg1cY/p2h
	 tlcOIIARdow7NYTlLWu8zP3yfeXV6f3wBtWIBcIlzpIDgZ0keDyWNKCv7xh49sl/n8
	 eEkkwYMGAdUAgQWTWTaCqASKV6pXqGd2ftughAasAYmI/zjU8M0O/obnaRuD9XlzJp
	 KEjeVxzBJ01g+cfQasFb4LojHtXXTHLfiCedgw/a3zrgvE26j3aVSCFCvgHYCSWJ2D
	 Sefj8+4VFFPnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8DAC87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175421279357.17898.7760345488726591679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6bf9ec40d8da2eef5512553720bb306790f88863a7d994c3e155e4577e9cf84
Date: Sun, 03 Aug 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754212793
