Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC6D37F
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 05:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706334497; cv=none; b=CR9N01ofi0nRfGAyEvsh2iW0H4v1RT7L2IbaaB4aSdzXdHzd5hKJSxhuUG1kpzlN1qZXRBbudOlm5965WQ6MtrkeMZffIbe/uzvKUDFzwyHMg1LFTcYhPblFYoVAk6MfORFExGA6m58ANvJyywDeH/QZmbSC7lPbNDsprocgX0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706334497; c=relaxed/simple;
	bh=VSibUSG9CHEYud0Mdw4doA1zOIcQycR67W8P5/hhlp8=;
	h=To:Subject:From:Message-Id:Date; b=mA7dH4JTokvmh4r0y5TQBvP7eLDXsMvRsAgRjfXUgrGs41kspUmLB5kX7N/Os4dwlMGtA/5XI4I+za925Wo8frv83uiVZ+y9i723uilTfffTiYaoL6Te+sSXI5GJWUOC9FS/135YyXhqXNyPDHisfVXzKqImhPad76/VnDcyngg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tTLFsvHM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tTLFsvHM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 881A6C433C7
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 05:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706334496;
	bh=VSibUSG9CHEYud0Mdw4doA1zOIcQycR67W8P5/hhlp8=;
	h=To:Subject:From:Date:From;
	b=tTLFsvHMpGrIldmG0kk/jwCVdt/2lNHOJ4kcJT/1bVwR0ENh7xuNygahPcUPFkakQ
	 2wNgz5q1sxhzdXpruyUwQHOXIOXEJYL0tAndBu7//1WE6Ie9M8H3DHaJGD4VGvQEDY
	 uQuVcvLIV43yEQYEoO5REIM9X8CTGXS0hJvr3fme9i1zFn7IWVxBjMFtnfdPvpHqCA
	 zn3IR7EX7NnMhhuZ49pndXaIxZT0vhkmOEdqF0vE9sWie7De2+FiezMVoaPtwAQ1D7
	 2xXLBn2YI/xLn0spysv9wODK7WJ8G/lIA2qJi8jomUwuBF7D6kriIKJk8H6Yo39FrH
	 dbm48HYLap6ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E852C46CD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 05:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170633449642.23337.13569275362765977439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2240c7b059af68aed2b08a6e06b3616ff82c9ec7b86dd3000951ae67813cfae3
Date: Sat, 27 Jan 2024 05:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706334496
