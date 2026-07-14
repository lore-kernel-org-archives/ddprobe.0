Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A2C442BC4E
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 21:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784064514; cv=none; b=EyE9zI7Qzzpc/TDX55tu9VCOuu2y0Yr7NoUa+LfVqY5mpj7tG1ICecyqstE88CLkrawN26N0WOjTOzLk91hC/2IqrfeuIqVX9t5Fzr/+v4F90ZjSf613XVL6BNcin8OH1VUnpvU7bEgalm0Z83QcPBx9uzOxM9ndBmQs5/dPbF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784064514; c=relaxed/simple;
	bh=KwBCbg26YxQFDo7g0BgzrwHPdXT83PZStgPUnQgu2uA=;
	h=To:Subject:From:Message-Id:Date; b=As/Y+Z0JTdLAYWbGrpwFIMylcYpdj2KDSH7hQv9zmk2lzLGuPCo4UURjNYbIpbXPXqykLTMao5TR8mlp+6XZnoOWyTbithTd0vGMWjfyS65T7DZkbK8QQeyMsAK6Cznz5ldmfE/D55lctlyC3FoPJNelBC2ngZTSF8C0Dd+6Lkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j3S4krVA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j3S4krVA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC7A7C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 21:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784064513;
	bh=KwBCbg26YxQFDo7g0BgzrwHPdXT83PZStgPUnQgu2uA=;
	h=To:Subject:From:Date:From;
	b=j3S4krVAqnClUrDr/41Lzq83go2Kyd9+V3vV6s5eNOu9azJz3Mg2HufNelZlnMYzd
	 rWVEkJMxbSQLZ74wpdptNkczIC6M4qkzlkvuhj383iMfMKCfcunsZPo4fszmJlMo08
	 HZPprGAX2FyvJ94KTm3g1BL7ZSBtCrztENT40YBtDg/+8tydW/GZgt3q/8mtvYfzmX
	 ZVUK3qjaxGa4oyYa03F4P2BVGbfiYOyln2aLNAUdTkA4YClKVCZRJf/erTd5k3ZXA/
	 eYAlAdNZAojEcBiNRuvjvKvEftfLgL2q6PXhs9wGcLi5um6RihtdOnc0Wy7cJXbu5H
	 O37zPy8Nn0R+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B66DBC43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 21:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178406451373.9640.1430894429339155796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b20840ecb2b6c493d6bcb28e8f02872f0429680f67ee4d84d3b77b1f50f872e1
Date: Tue, 14 Jul 2026 21:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784064513
