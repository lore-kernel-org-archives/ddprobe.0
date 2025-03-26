Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6DD621ADDE
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743010193; cv=none; b=C3kMN59xzbsKyOl8uhiaYOpO+zaKt9L6lCFjkccgMukKNdO7g1jxTDmLraZYvAEAVxVPKc++zSB732I5cxk8dWb4qRQswGp67MModt0oWs9s4b3RMbWVObSbIei0hQSnO3YlL7GzqbUq3ZvwH3+AP3N458QwLTUgC2wKpTB3sVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743010193; c=relaxed/simple;
	bh=vEoI81lyFM/US/YVRa/dWMCdOjHEpV6wV3nKOZj39zU=;
	h=To:Subject:From:Message-Id:Date; b=VRgA2SMdexw9ps/104nbb+zeZYt83sJtHF1Md7BU98+clmCKzDHSJy2/cIYj+Aj75CMqBLsa4rXZrRhRQQRGHAEzGeAtDN+AUqMHN32FWNf1U2qnkldtIesBbCGaJGgIszhE7gHbGzbR1DBjxtn4FCCvRA5cccULhZlfZk3vtpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pOU0kX/W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pOU0kX/W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9DB6C4CEE8
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743010193;
	bh=vEoI81lyFM/US/YVRa/dWMCdOjHEpV6wV3nKOZj39zU=;
	h=To:Subject:From:Date:From;
	b=pOU0kX/WEkQ9/HqOxM3/N7grckfwS226i1M8xQs8at9OP4d5GDDa7+EVRdXRgpgmm
	 4CBFMjQDX8yZanH17VD++akVj5FwAsjcdUsUVlQFCi97/91KH5IPOxeglz3OHb3hK9
	 GDqlMN9Er/quR97CjJ0VmoKMeNdlOhXCeQsFyLMduIfP30KYgib/yEOPyHYxJ/VvsT
	 Qg3lvCVDL1nCuVQrN2KS+7JbLE3iRt9frD1+0H6bDwdswUfvAau2RcW1dxuC/QWdp8
	 FQZb8H2d7rdSmjJcpJp4L2nRrlZPyZ9NlhZsZiXItjYbbxfKrBp1512eDf8cCiwmOG
	 dsBnQmQA8ik7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A962FC36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174301019367.8068.14033540846422859989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 067db8ca18571ef810b4c5bec9287ed09f9094a6e3f331ac91fcefd13a99192a
Date: Wed, 26 Mar 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743010193
