Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F091156992
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 23:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713222563; cv=none; b=PlftResi6gk9ANVkAM7z05RF57yyV+VPFLObjQM2e+QPOUEF9wcApTWde/AypdfFqCch6KAlgkd8GMJC1FuTMT4H8ksM4AltPUOhMMXDnAIJM15KnOcsxPZacmOAEbKPw1kyCwBM7wwdes1A1VD44XkrtQr1AfmanqKWMThLr3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713222563; c=relaxed/simple;
	bh=N4wW3deelbVgZMHxKflQEux2j7YLsJPhHL2JyextL2I=;
	h=To:Subject:From:Message-Id:Date; b=XUvnezwYlg78wwsXb7bQcAlBllXaF27zSjswccowyWTo+Wes3K2LNuPMvgQmHgN7unCf+bHRcbuN08OMboCA+Rm61rKTW14Gj6NJI7U1IywA9gyjU1vv/MGP+WY/Mu+2U21BVoFKN5TOEJn4PqM1nxSPrlmZzp4+duFfH8VN1V8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bUJZemh/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bUJZemh/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5A70C2BD11
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 23:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713222562;
	bh=N4wW3deelbVgZMHxKflQEux2j7YLsJPhHL2JyextL2I=;
	h=To:Subject:From:Date:From;
	b=bUJZemh/e5u35FpjIjfPqkWUP2mnnKY0ifiukdh//9+H83am4Bccini/PS2bCucLm
	 Wq6K1V/rjqft0Pud2G6jQG+/nu+2JM7Pvheu2Oxvi2eV33R12EX3eQfcO8kJhJAeGJ
	 6KkMRzUmFJmwhtyej/m4oe7dxN5YJ2cV29n21AgIeAQsnZrB0MqgHWVhFyOlF4LryU
	 YRLDCxSdST18nomPzw7ufsiXCBIzf1c9fp0xaRH5FsQ767aJYMERhPlvt39m2bwBEw
	 EklJ6h1MYSukBbmMOxm6vUqtUE1VAyNc1YzHE7jp+y5ffWMsjNKG3Y/fRHjzikCgAB
	 hbfaJ0P/3WCCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCA19C4345F
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 23:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171322256275.10547.16656862289988653277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ee89bed567bebc181f78d2913c3db44663044422cd9fe94b7ad7ad618f5f328
Date: Mon, 15 Apr 2024 23:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713222562
