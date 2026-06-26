Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CBEF35BDA4
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 15:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782487654; cv=none; b=ehgDDQvkQX5do8OhOT5A3qVRDlJwY8TSuQ8UtiU2fmvAF2d5GIRPVYfE9cHiAbcZiGqW6wdNwUExNNbDD18WCLOMKsC1cEM0QA4xbDFgmXvB80SRnZgJtaLxucrl47nOAWt7c0i274Ef3dYTiIJsUhPT5h5xJRTSdemZRHr3/Nw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782487654; c=relaxed/simple;
	bh=6VHU+Qap6+xDqtjq/RDpdv0JNJOKtpIC1LubNaBd85w=;
	h=To:Subject:From:Message-Id:Date; b=O2bSCJuX9LWT7zBJ0IjDF4egNVnzBHpfrLax7RLtXEzwObtg4l005MoGdNUr/Av/0kA1UmvlM0TktuSPLYUuK7TOjnxQYlNnDHSuMAuIc7AMFMoI67jKhMtAe77gMrUz2tj0nJ2s7M+8iHPZDJTFiezz4Y3IjIPzSqGn3Lx0/CU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H2VArNFm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H2VArNFm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5D91C19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 15:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782487653;
	bh=6VHU+Qap6+xDqtjq/RDpdv0JNJOKtpIC1LubNaBd85w=;
	h=To:Subject:From:Date:From;
	b=H2VArNFmVnWOfVVTxD00mffrl+LLv5Q+nSTnYO+Rb4iEunepuo1fzwd5bQpf9y//h
	 j9mxBZxylB1QU9UO3YTQzcGkQIb3GtvBldRnPVwisDgR2qRIOPeRBKcw3D8itTOm5V
	 YCxfoucbrWehsllEVvgDnAJ1l+Fx3qvbLrmIJWhz4hajZ2rYtpjoKl9qJ4ISXdXb4S
	 O8hM+nckiAXK25seYpy7hMgtjXo2Q8sLzh64NG4LUwxCz3uPCfhpcG/2gG1ve4ed/O
	 TQ76kVUMNYX9IVOZJmCUep3kQeZiwEZsCylN6rg++5yKuEN0bDAQreazHVI5kkmiPT
	 GiERUqiGh5b7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B13D5C43458
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 15:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178248765371.27602.1411647046768884873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae1eca1f40c20361cda4f00bbb6ebfcfe69dc2bb3b5f4a9876bccba89f517b6a
Date: Fri, 26 Jun 2026 15:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782487653
