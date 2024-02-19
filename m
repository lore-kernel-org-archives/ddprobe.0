Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F9911CD2A
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 05:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708321697; cv=none; b=OZ+rSfM0fZ9JKRl4Dkbq4SqcSzv00QcGvrB12OOYDjBb90BjfwhNZ12NK7sLxYEG6AxYaJhUh4wcyPHJ4GjrrOKHiEa7GBHO60Ue9LOsJj3TWgVwVbxLL7mO2lYHPWrHyUWrQ/KEiJ8lfMDUhTi3XErZwJWxqQjJnhg/G5qK4fU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708321697; c=relaxed/simple;
	bh=nKZAzTagVMZQcgjvGsNd6v9Cz8p2EiaU2e0hQtqqNNU=;
	h=To:Subject:From:Message-Id:Date; b=LEzuZPwx2malKz3Cniu3OHV/bdhnA63h6wnjN8Ic+gs57nONtLh27UX8I2sNJQSE609RSwcdQc6o066XtylSYaFkzZ1Q4VwwVU2RqTPRJI94c6G3ZBiWhGInpLv0JvoaqljrxRj9ijdtGE6EYYpAhDbUEqaowd/owwFCSElwoSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aiJd17nV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aiJd17nV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75AD3C433C7
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 05:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708321696;
	bh=nKZAzTagVMZQcgjvGsNd6v9Cz8p2EiaU2e0hQtqqNNU=;
	h=To:Subject:From:Date:From;
	b=aiJd17nVTR2yO5E0qBWZZGWm6uWdqJ975h8FkUp3rgvi0n9VvweueJBwbNUcRdXK6
	 /Ei0oAhw9i8J2n6WJw+9tZvmZEkp+ihtemsFPq3K7NWtaM8U45GmH4uWLpDjLNwoEx
	 1ijBPrw54bNMT+SPW9nY7nJhGwkcRWepZLU5tCVhkH+UOvGNK73VxadVVw6QtFFafk
	 e01jFkNRMGhVe+GbFMg4ezCCB9otQ5hyEIBXkaJq8QSbTKC/OrM0kNN8F3Sxdt+gCv
	 mhglxPAqCos2xLMg1q4pggDYtiV7jFPf7/XqqPVd/3KoVepsocOYHPoFqs3GVIKqRy
	 ijqUhb37R86Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B3F9C48BC3
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 05:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170832169636.32693.9328200622165465136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 129c9130ee5b898d23311182d37318ff72c805dbc39de729cd0e091f57f97e48
Date: Mon, 19 Feb 2024 05:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708321696
