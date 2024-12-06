Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EC97200CD
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733450154; cv=none; b=eHLoh9PaEBMMAjRImTxMmRrbVqEt3D2VQR8o6EEQf+lMhZ/z/CBWmrWdgbnjcs8IhfATwmisLGCKUTLBNUC+V9hB6xJ/4lYeU8LA/f58GtWYp7UHyqHrAPec5JUMXbIZNpGd6YN4aBPCEwK2wdLA8vbGuyN/WdVvyU61roVtPTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733450154; c=relaxed/simple;
	bh=4iQYOs+9DY5U3p/Qa0ElYXxuynKK3USwkdzjIV3gpJQ=;
	h=To:Subject:From:Message-Id:Date; b=R+rpTaWfJAfwv/Fzg9vove7/tfSfyzJqUMsg0WP2OTDc9UPz3P5iuUkz81qxFdWKMthQuPSLR3qg9Wm8PSOwXdkTY/XRNA+CNkyqM7nU/FVlO7at5xAr0lnl/yaP4+x6C8RmLjor5VcalhPCIdw9q+FWaiH3JD57+8HDHJ7GGZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CVGhASkt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CVGhASkt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A625FC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733450153;
	bh=4iQYOs+9DY5U3p/Qa0ElYXxuynKK3USwkdzjIV3gpJQ=;
	h=To:Subject:From:Date:From;
	b=CVGhASkt/Ts61hYLfFBwfWZTr8qRnpYXNhIeG/ykRPdH1gb5hQ10pvLq6aELXvekD
	 UJxzPj1E1YI6MFvpb4mzLIZq0KHLpppEiI3XYUPeHWK/GjMUNSkeYZQrPbu9hTne3b
	 iR4v12wFbhfDW/Lsz/RZJnkuIZPJSjZeCaMqJmGHk+cdBx4QRYvvjAFQLDY85K296h
	 hTFMeJQiTH3+n+IwPCuDfg0ItxCO0m1G/AwnHZtoon4RwkSckh+OR4FEsyFmWptnGn
	 kerV4UHosNR4ymIH2u6Hpxvm0NopRgv2XyIUemSNLO/sw7rjAxLMnbLqIL0LmTLlo8
	 m7PONCmylt8+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9188BE7716E
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173345015358.25974.17948808621997160159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e39d3bdd99aba6af0371147cebec08151031311f784c7188b2f3a7dffcf4b7b4
Date: Fri, 06 Dec 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733450153
