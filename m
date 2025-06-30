Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 266E3283C91
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751284194; cv=none; b=aT/Xg6LzaBfafLnQQcdaQ5mkhs9uq+ZFg5QyxmRiAtVaOls2Qi3p6IXBjM3oICzNHJ446fzVT/vQ5qwZ0y8Rc7916s0VY3/7R3GjWadEhyOk84XhpnS4NeXL7HeAJsS9z8/zBSFLvh3iFZ7QtkXPMQhAp4k4+HdghYkeh00VZVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751284194; c=relaxed/simple;
	bh=yX4PHVtLrSnkJgKiXUakASXmL/FqsilVIf5c0D2uSxo=;
	h=To:Subject:From:Message-Id:Date; b=or5mdqiNc3I/HcBj1tRPE9CfB2vqsc/cURusq6zb6+tpzGDEGk2pTyjlVAqv0R9Zm22A8UOG8+EJ/rS904MvKOuPethlL3wPrPdeYqKYBXLqWRvi9WSYVZzJcstn/fMM/vVj8+NkpbbVtFKv8yDBUQ3adOyYzELMtjBJpQFMgqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mlA/peq6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mlA/peq6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D5DC4CEEF
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751284193;
	bh=yX4PHVtLrSnkJgKiXUakASXmL/FqsilVIf5c0D2uSxo=;
	h=To:Subject:From:Date:From;
	b=mlA/peq6RP5ajVudl0HPb6B+FMWZNKWUEFqB7oT7ApRv51fgvXcGcYjRZYpwzEhte
	 vlmNiHiuELLnVtbqIRjd93Ps0iTYyzvLA1ueMzoEbvgpC3bkNKS1ox18ERB0gD+ZtQ
	 etYS5uR+T68xGSuTvnxWL0gUA7TldqmH5J8g2PcTtDXHU20/tiWf1u80EKuGq4vKD6
	 N4ZSpB3S+/pjgntDnOk1MzDLy3GrkNXZvCcDPZb+qPxJsFrvIkGqIEoqRcmhKofcTB
	 O/csndY+TfcuscdI+p6b8JNGPCKXYPh+cPezVWX2CPzJHgI0Lpu9FJSgislCKXRAXe
	 kI9muzcBoTQxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919E3C7EE39
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175128419358.18399.9512852006826634972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ccdd209b7b8ab76bd4b19774928424038ce93bb92b8918bd5f3a0566aa01e0c
Date: Mon, 30 Jun 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751284193
