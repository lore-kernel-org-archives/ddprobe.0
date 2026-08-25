Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4C92F7F1C
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787688034; cv=none; b=kF78Eoz+fVnTkL45wI8OzeWB9nNM+79C1Uh901b74e2GTabEEMdFlHnZ/rVcSrg1K8pubNPLdK/sFE4v/ZPwBK2NrHBgDCHED/d5utJZ942igLtpAwEd0B4ypNTqZ00H1Pk+j1oW5WBd2eDL1eh/kOeBWeqI0gLmytyaOgPfSDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787688034; c=relaxed/simple;
	bh=9mTr3Si3AhbEFO/tE8h1F4bNymg3Q7nUw1ptGD8Hkh8=;
	h=To:Subject:From:Message-Id:Date; b=m8hfe/BCW4V46hwzvjKTrArFEy5oTdqbIoKkFkPH/NL1YX5BSZu1jUA2gYMf5gf7ZPs4+Ck/1kxeBl9jTzP8Q6c7HZd8ByU+KX2xea4MholtHBZsNA4j6UAW5k/MZci+734Hl2gk164VRV92kITGrAgNr/PJSqCOFvpCSkby7bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pujAVJqL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pujAVJqL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFFAAC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787688033;
	bh=9mTr3Si3AhbEFO/tE8h1F4bNymg3Q7nUw1ptGD8Hkh8=;
	h=To:Subject:From:Date:From;
	b=pujAVJqLWKirf9GgyW572VC/JLc5ToU2CPo9glEvMHgRDRtEp58t5MSNSHhaFIsod
	 iBwklfFmJkWY51nsp7lojB1wo7pkLXIyTyP2SZROqPTLPakZYz813GkJS/EasbnqEH
	 7ht8AX0eigDJfZtgqYgec9SIgz8tl3E+dy6a7mD9iXXC1PTfDkaoXzA03pC6qDYlWx
	 NYM/hNES3RaqJvEX5fAlUu6naSbQAZar0WuCb1b4qOESrz/cEtRAL6LfWTAqX0keIA
	 jjUXxdUiH+cpeIK3V4iFBHWK+zlHeIE5cVQNsFpszlABGxi9J6pbVzBXkKQTubPcKu
	 4qgWQbj8hMfOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B83E7C61DB9
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178768803372.28496.1889646771585275813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de924b396b23f3c8914fe8847d864a46af72b95eb5636d5b8c04e4dcd62c97ad
Date: Tue, 25 Aug 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787688033
