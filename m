Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B3312AD25
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762496394; cv=none; b=WBiiN+ifeasNZWfu9esmisPHZkS7T5TWe1cTTJHJSXgftworLh8x3CMAW+eeod8TuTIhum+HNIFuYL2h0iIXArIryzrqqXf5aFMZI88vfqnKVPABtC07JokgtW7BUx69sutECpvuoNPZNwf7vZ5Vft+b3J+p8+Rj6N+RJhWivro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762496394; c=relaxed/simple;
	bh=fV37sXgM7fTXwf2NIY+HLfgpuC0IfYWltlKqum+oB3k=;
	h=To:Subject:From:Message-Id:Date; b=u1thiwMh9Vyl5ANy54yUiUz5+2RoUC2AMMD1QWbaSgtEUGHpj8RdaxVi7sIgn3T6SDHh1qbDZ8lBnVFpDAPTV55ToW6fpW76PFsEfD4zJqG/kln9lDL4l3XzfkFPoBx4yB6vMFo1vES7cqjjKfZfmOsIfW8gApJ1gEgnaAR53iw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rA9ZQ2V7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rA9ZQ2V7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4161C16AAE
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762496393;
	bh=fV37sXgM7fTXwf2NIY+HLfgpuC0IfYWltlKqum+oB3k=;
	h=To:Subject:From:Date:From;
	b=rA9ZQ2V7752Q7o7bypQnu4amXhyvHIEmtiPepIzpLxtQOzMwH0idkwjOvBBqiAHYz
	 7w4U3eAiodHeRgxPn9JGsf/8uY8JCrMEcSKNFg9Ah51yXSoSJGNXfxWmLmrEhH/t+F
	 czGGlWuD0kzmSrWQXa5AECBRMX4XOtQuTJmfiRTHUuk/EsqbRUqD9nl90faso0jsUq
	 8xJvqmQLFP3dq8asAYWVixywDsrkrVP5P4B5vis1qCL7t15jYarngZMyI+CbRV8Gxs
	 7tV//6s/JeygwVY4vqhJ6/NFdjkFgWKY6ZlaEGVwUDx+1hH2ERUaFl8OoWPwz6Twvx
	 Z4V18gFzenQLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B714ACCF9E3
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176249639371.27184.9890213240296519098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c7d15df9534d2e736a414d7ba746a8839f7018b83cb489044b09af14c23f1ae
Date: Fri, 07 Nov 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762496393
