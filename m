Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23FA12D8DC3
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 08:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769933634; cv=none; b=b1Pmol0R0mSxzdcI1IQzdKXi1eGzNZgXgeJAIBBy56LaOvLFbd0yCEV8EYKcetTD0w6/yHFBsT1I2HIOTnULk99qZnBbQUej8VgtYU+Aeci6B+2tSKUEyFpbXHIZET8vSxx2JSFg1H98pjJyRPgtohlITR+S8sCojK72otIiKrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769933634; c=relaxed/simple;
	bh=5/GEzhaL9pw4Qwgmtvhkb6Y+vBRgGDpLynxPtuxDSas=;
	h=To:Subject:From:Message-Id:Date; b=FzUOsXjxO0ZSCzfJAgCM1R5RxK0CPJonfxuybVVT7k1ufTZYWUxi8dWJL8nwjZk0X8iJ6NHbrpVx1KjJox4EuAVNYETA2UoLiMJcyCe2O7m7qjytWk4VGJb1r2IhTLBuBgWus/GdhyLieaIA4tV2K7ycwPlBmz+NeDBwXDt9Agc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R1TnQ+ps; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R1TnQ+ps"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFB13C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 08:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769933633;
	bh=5/GEzhaL9pw4Qwgmtvhkb6Y+vBRgGDpLynxPtuxDSas=;
	h=To:Subject:From:Date:From;
	b=R1TnQ+pso4qnzzeUr1Gcwf9KFssH9+T3+Ilx6u910TO9sLQUpuHs9ehIMdcf24Rbc
	 46JdRAXaCFLKZ5j45cVdPy9bPzlfWtkiGt2t6kBpEAOM7YYEiudBMGC0vXF2fAHdX+
	 6rgHySbbl1PzYiNcblnwNXa7ryQeLZA526t83cwIBnDCua6qwbuGR+1rE7miXZ+Ovs
	 HbWo24vIVev/SOBrsp1qa0gS0Lp7wNTMsEKER2zI8fYM+Nel8rpfISCEJ22837C4f1
	 +sV5T0ym9mqgIv365yapMokboFJ9T/I8kO8cdP/XHajJxABpVQ4bg2tf6WZ9SLINXw
	 TEKtdsrTNFzqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EAA8E7C70D
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 08:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176993363361.25927.2639554462114080577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c841797a9eb6faaf2ec9856a61b4283920a9c59326c48f55cd622c535106521
Date: Sun, 01 Feb 2026 08:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769933633
