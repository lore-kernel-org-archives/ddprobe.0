Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365B3212D63
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743997194; cv=none; b=eAN72dzhSSGVGbnBN1i+1wGyHjsh2l/hRQID0nM/QMKrpAfDXoVvmRuQqXvGOYo0uADaQgsJu9x+YxSAMqFwI+55bG4Ow5H4NA5XzBeFiRaXrl8D16d9txDJv+ZDk2zveb+M0KuRDemc3ZhhazfzjFggQ0MuOEmU4vK/ebi8ows=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743997194; c=relaxed/simple;
	bh=MaaZXKmVAnayq8NmIAE71CBaVBsauX6VdidGiKWXdhQ=;
	h=To:Subject:From:Message-Id:Date; b=kK12U58RAKgYN5QFxH4gMXbx3E8b8RLjk72Dx507Reb8HRdtnDZi7GBoUTfGY/DSiD9l5mz5tUndw2diuxDYMn0d5uCV7YBRdZtK0qTjbrFfJAg5mPaCcGtDVCF4/IftokVH7bGMtYXYL9CM/m/00xPUvXvGI2k6DkbvxyyiPA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fvVTZ2R8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fvVTZ2R8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAACCC4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743997193;
	bh=MaaZXKmVAnayq8NmIAE71CBaVBsauX6VdidGiKWXdhQ=;
	h=To:Subject:From:Date:From;
	b=fvVTZ2R8Dn05WJ/+dWm8dwNf6PY/FIoAEhthdktd3Ef2bUWzeNGez7P7Drfzi7g1h
	 gJZ9jQxuw+eQkQXIR+fR/BrUJMT6hHLnRLLCUQVZlxZ3pnkhz48/EWrXUZ0R+rjUiP
	 LjSEjmdLXiMjhEUU4T06rmSv6MUK1ovQJmDB7ngG4iNgRTxViIkn6bwNzm8ODMOmlH
	 4DRHjiV9ff0+OoTWsyJJbu7s1j8BD5u/eH/fKgrVNQbnxeG23NCZsyJ2fai4wmbzwk
	 YCJ37bGPIvW8FNouAErHfBI0iiMiCu/42KU9XIvOa0Pk+DVVhvzRWzBAKDKvKXyh11
	 D8a2mllMMeK5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C06C36002
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174399719358.14402.15933775337315350897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b0a95a9f74a264a29fa751f89d93fe09796264cbc954e9c33b467b9bddd587d
Date: Mon, 07 Apr 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743997193
