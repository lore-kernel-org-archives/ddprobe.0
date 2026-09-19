Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46CCE36CDF2
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789833034; cv=none; b=P9OadBopZkDk/WEPAKqPRo1w4O5mJHJof4d1iB88yY08Dyl/31JZGQCIC5RxpgHMxsoQzIcwkYCi2X+k8uIvT4uXgdlv/1BU/lUr5jUoMTqlDESaNaCQT9tUaCqpcsMaOkJhgBJCuU0V3qgwwj4CyPJ1+jUx4OLaBHV9il1hmD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789833034; c=relaxed/simple;
	bh=Ouv8r/JQabM94NNPRxcTi7O9aGTuLp1XcabwdgUHwfI=;
	h=To:Subject:From:Message-Id:Date; b=Eyo/8T2Xu1if+GjOU775kyfgQ1EHGPeTQDKyCmkX70ddci9cGHkMxUyVPZtHPkLqkbCHpTamzZ44QalcWzNV8d+c5pUDtfNK4GzlP0YbWXhU2KlXB1HvK3d2XL+9hlTlHT04phB9LuDZ1HE4Io9SNo2Faywz2Sl9KXa2FkYXIec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EJusBIgx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EJusBIgx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D93E9C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789833033;
	bh=Ouv8r/JQabM94NNPRxcTi7O9aGTuLp1XcabwdgUHwfI=;
	h=To:Subject:From:Date:From;
	b=EJusBIgxqVZdspVD+4b+AhVBtbfif9P+S4tl09YizZbvezNmaHDFtXWjhDt9OQ7k1
	 xDxoGHRfv85nnBzj8qQ4hWahh3rO3Fr/Mko1BkOs6pR2NPNcyPgkODMxOHcot+m5Y3
	 0fhCYwOsVRH3p0Rz/HrqxCscVpZITC4xHIH2rzeiAfGMe4MvzN25VnATZ59qcybti5
	 UgN0b/WdiuEzTysRWvtDK4gWHxRqCjYNvViuB9C5POtkDFm1DawYgd6LIeiRmoDNrf
	 BOuJbU0loxq/88VOY/IZOFT2I3NL7hnbMmAZeW0NcdUIRjUJhOZy5OhrwPtamUTWbb
	 Nc6MUNzohZe5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFA7C982D8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178983303368.31781.15756038732718356019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04653947788b4909362b90e1e8033bc2533e4059bc128109c9f259c06fa63d46
Date: Sat, 19 Sep 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789833033
