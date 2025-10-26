Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0E918DF9D
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761442194; cv=none; b=TfgAmHaRlKS5eK1bv6W21K3gU3/pXJJ1XemfrQQbfxmsCfnMOJhtk/SMwpMwO+kU7koSOiQTx1TSCuh1/eLLUdQber/YkflGmv+EJKomRKWepZwfJbbTaMT7u9TDQ72IFIF7OO/5aDmYh5HfD05mGg+GPPMfdpMM4ae03NAOjQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761442194; c=relaxed/simple;
	bh=AJmkA8icAYPX0wTZck9Wa4PWRJdD2diG8mjspnndXbg=;
	h=To:Subject:From:Message-Id:Date; b=OCKFJkFCvJB1VTfQMTxI/RaQ04fvjLYsN3Ck10Sq4XAQuWvEzCWmYC/wzxB+cP3B93yZYucKn/BB2r0nnNxEQ/AvbCS4i8uZL8NMbRoH2/EjgsyqbjVO7RhQkaxMxy/jM53snZfKMZFJmsIHvGEXhheABwtBO6bv6PuC33yoF9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p8ocSINo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p8ocSINo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3B6C4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761442193;
	bh=AJmkA8icAYPX0wTZck9Wa4PWRJdD2diG8mjspnndXbg=;
	h=To:Subject:From:Date:From;
	b=p8ocSINo0ic8xO2PwIDxV8rZUnB4aJcSDLGuBf7aZRNOyEuoArA4PS+lXxa1dRUHJ
	 bEuMxWysBwTHimgLxfmjBZfpRKqh/I/bXpH5g9iyWUqdSuVQgnx88J6Pok11oD5zzv
	 qGvmu6YCaAyDKQnAsVBrDev+zKd2NXe92j/CAZFzuWRKZh1Dop6aZErcHB/FIP4hqc
	 8rQRcjlLSE49aC3FpmPUOKqZ6Dy0+NkPUoTdgX9JO4cfnNfXgyHTgbOuc/y3cpK6vD
	 qn3NYesWjbZLJskNgOF2bQDz8llLt/KfkvZykowUnoYcuDyhnq2QEV/pmpft2LTtPI
	 bJ7bTDbxzv2sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97DFCCCD1BF
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176144219358.1490.2178172162894111319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d53c9cd51cba5aeb1478fef4f52433be4363e29401ad4b70e9b686cf0d52dcf6
Date: Sun, 26 Oct 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761442193
