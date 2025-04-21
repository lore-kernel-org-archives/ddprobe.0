Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E1B11E51EE
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745259594; cv=none; b=gLKooDXGw3dSkLw6Q4X2lzWt6VEmFpccuTKjdsT8t23AflQitn8fOtP2DYD8LI2sCV5Ik85/kHKTf4ljwUx55z8+giv75KIlRrwH2s7+MvMXuXTdVTiqP36q3ngYO0qfY90x2JJF2222ouxy/lYIsYwYDh3xV0JtXkJOmFvum0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745259594; c=relaxed/simple;
	bh=P+D9p4R20x5/iWMpu6vdkIWTwVOxLuESvdYWCSMMCHY=;
	h=To:Subject:From:Message-Id:Date; b=JrWWMq12c8NZN9vbDAOuBrBnRJP5zA1tv0hLDfaSX1OEBf8AtoMdB3G6PeMChbhBH9yfLZUOFcbuAuEYLJzpGKMkGDMBqMLqbZp/4rce25WMdEKXt46lEw/mbEzX45mv7fQOyWnWtZTIszyOll8DTS0HY3FIDCT9ItF4bnMe5TI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YIg3kcLa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YIg3kcLa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B883EC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745259593;
	bh=P+D9p4R20x5/iWMpu6vdkIWTwVOxLuESvdYWCSMMCHY=;
	h=To:Subject:From:Date:From;
	b=YIg3kcLaLqf+giXFk8BMuUVCp6+v9UhP4jmPiA4m/eiPtP+zhUhrwgnNNBdw3fEa3
	 nTF5sRvMq9wA/tQ8MrYtEg00adyvIBGtFaBd+VziYp6azNF3hV9GksyWUFHdztyJUz
	 /F+mnuJNDaJSlW9QL09F8I/adgGCB6Dj2YmzGBKGebVh9iNJbrZZ2dymGSs4IHnMOm
	 z95IZmfojIwJi0pU1+CTyg2rjbiIBpxQahYJSCoh8akycAjzf2RVdHgOhECmolbPQR
	 RzcKAuSL2gUfn3BaBknCeL4c5bq8zoLNj0+eza5MN0Xsxdo1aMetlV+fkeQl2S+maC
	 0prt/Xd2CRakQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A16E0C369D3
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174525959365.28603.4967953911201079793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9043194463a8d97463982625606ab47dc8179ac4256862b6130f8010dd52350d
Date: Mon, 21 Apr 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745259593
