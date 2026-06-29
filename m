Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384593CB8FC
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 23:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782777514; cv=none; b=M8QJyN1TtErxWnpzpdZwboZtTaYoBsWb8fyKdX33SwdPjQ0H+jObSe9QhQ6UypVla1qx/BNKOIqvAwy91gts58Hr5LfQuA49HGwmbSed3OnfJPUoJ4a1E1sALN1/G+Gp19nNtJ8I3l1dcoKpTx2fn3MArLl9L8NTfwQ5gdvIy28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782777514; c=relaxed/simple;
	bh=xuSSqDuB7oqyOrhEO0laYt71Lj4baT1fE4ZhlYCgXmM=;
	h=To:Subject:From:Message-Id:Date; b=QemjeXFU4utjOhpjNI3LX/NB0bOvpOgYNeF8v+6ewM0nv0PbEISobiDysmYu4ES5tl8BWmQcRp285IB7YQeZQJt9/Wq49YY+e3Ve4sKSKZEpHx4zCfJz9I6skwmbUY3NE6wr4zY5g7+YWyE0EV5jQRyIYVy3FfU7ydla0DCZiFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Atcz93xG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Atcz93xG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4853C19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 23:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782777513;
	bh=xuSSqDuB7oqyOrhEO0laYt71Lj4baT1fE4ZhlYCgXmM=;
	h=To:Subject:From:Date:From;
	b=Atcz93xGiuxFJCCVCTMngm/11rePZhj107/46X7Amz//U68Y3HBFXb3p5cKVhPNw9
	 KJfD2JEaKj9FTwdTKtIGUYTnR4ceneRvqEFVSKrVKzjaPaePo/JS6tc3pS68hRdXlH
	 M1D5fZPswbPgZmFuwZi1/az6mWVr90PrBUjlVg7S9W95c7QRPFJQqprxQ+sSwvdBSu
	 g4dz7io1tfDrPW3g1+euCfTtkfq0jCZLGAc9z1Mn0BrHWx1X1xrCcfe+LtuCcDJUlr
	 iY514TkgIfszSh+aPk+m/lhRnP4WxNa/GOs7Hvs6jCbVd4zeKNtUto8jPDdGOJTA5i
	 xQ7DzYBob6UIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD550C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 23:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178277751368.10570.882780630982420956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a40edc75d68a916874772994fe13f8a79ef288b4d14f7223263c1fe07a886b7
Date: Mon, 29 Jun 2026 23:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782777513
