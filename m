Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4933025484F
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742945394; cv=none; b=Wpcz+7WJSbEujOL28QC6Az98+MZcUEuepLjh2qb7AR1MrXBoZ/7fl0nUws6yRJcfLP8Dy5utAuFvjQPTclSfVxRbh5OaYnhMhlQub/NCJ0d9msdTR+/zixPVdgF1dP7hLZkOG58ebq3fXUW3af+zE9eCPVx19YHJF2HB6kNq6Dg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742945394; c=relaxed/simple;
	bh=H0ddIV+YyZ7umk2JZrJLLZmFshKcB5VoyIY5sMynvAI=;
	h=To:Subject:From:Message-Id:Date; b=XCju4qELskuo9powMl0UIlwjGzHxPH0wG1Z+Da/zXEG+dH9OMaZH9+I8/Z3862bri8LHpE7pdhQZV8X9/yEqQ8bAJKgk4venHDUv7zQBIBBTE1ISCeUi06WTlO3FyA+5nfflutbavWTWNK4ZwplfQq6uQb1egjwp9zNi1nii47E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dk3uA9U1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dk3uA9U1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B55FFC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742945393;
	bh=H0ddIV+YyZ7umk2JZrJLLZmFshKcB5VoyIY5sMynvAI=;
	h=To:Subject:From:Date:From;
	b=Dk3uA9U10OASya51LQZOpF93g9aB+GohlQbcmf2smGbkC06a8PkusmoIx5BQkX+zc
	 Bj80axD/OAsaUFuKNSF9fifeVvXhroR05yfI/SVTZ4qJpaiemNNnHWxlfPK0iRNar+
	 GjP8iDw9nixQwMUujrX0pqbbzfwjK11Gd2Paq9XMphEev5y6VGCsuY0pvMbCmt1hku
	 quIR2sPufwE7UeZuSevZy9ehfu1kUzf2RnY2/7XcyqiBH+ikmYFvGXdGFItuJWd0oa
	 yqvxX57nE+v1Fd+j9Gb6saaikLn6/thmys+6YdxkJRPZlN5YcSytUt/wCBp/eB65Pa
	 K3Lubh/ffuqEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2E3DC36005
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174294539364.20703.12655814037786531116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a652d3d115aeea1cf067dad7bc2ff6b24963b2e39e9b2d29cf154e97d5ec8b1
Date: Tue, 25 Mar 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742945393
