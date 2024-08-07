Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B9C1CB304
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723022154; cv=none; b=ArdE5HuQBlJR/NLvjUBgGcEsC+EvB1Ur5bb6Kg3HZlJM1CbrmGjbMuJwxO7dwIOR47ai3S+VVBl8kJT4CKOnd3QFQMLrP3lpoyMNDRrVQVijqnYIkvDR9/Pp9kqSPYat6v11AquR1fs9P973l3z9bzN2MoMdPo+7aeE7Gr4I1ZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723022154; c=relaxed/simple;
	bh=vNXp+j6L95396nagw76+OCRmcMxinKNh60mWeFhglHE=;
	h=To:Subject:From:Message-Id:Date; b=Qm8qJtIsv20VvSvyaIBkxemAsP4GJ/9mzinx3d4b4ncUyYVzDwA8rZeee+lTP/SD+yvjmK9eeejcLq2JeO+gGrvjKTN8hwXa3JzV/4wyUyuOPvrlKn723PJXnR3Nzdt0Hu09iOXDgeKdIaE62+fedH4hB1CPJXDqVOVPFSaOQUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hvd8EL/e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hvd8EL/e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95F6C4AF0B
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723022153;
	bh=vNXp+j6L95396nagw76+OCRmcMxinKNh60mWeFhglHE=;
	h=To:Subject:From:Date:From;
	b=hvd8EL/eV0wrafLS0yR+mBA9zCbFiyJWsmOGxu4EZ7e/m1Xk7L8Whpu2kQGwSU7jV
	 vOv2v8d0ALbyWBzTgU7wmXGnZ4RaqzczDhtziCtxM8eFRf9MqK28tqROBrkNDJQAfE
	 D0LjkS2ero3ppfL9jmRH7FWlXkwoGD5jn22nIz4n9MQWGKqmICeiVd771W88RCZeds
	 kzOkmhgmDKpkjzTx3fWvqjdLFXZtX1KGlASN/8vNuR5PYu+/jBc2Ti4Hn39ybeYjS4
	 JpRz0XkPYxaJAtq0OathRtY1mrv66yldZJKtbBsXxmn8/vB6uC/1GQqdES1dNh/9tf
	 tPbzPXn16QgBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98ABAC52D6F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172302215361.27864.5465094602999362037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 096f6a22eaa5dc670b2fec3552fb15884ba5eb562624139d2bea111315eb6c88
Date: Wed, 07 Aug 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723022153
