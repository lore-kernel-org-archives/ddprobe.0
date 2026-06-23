Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F0C3C6A43
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 07:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782201394; cv=none; b=syS5uJZaApqCUWsVuTQy9iKnr2RJKMSJqQewqRWZZJjiHvP8dvKmy1/6i5G4zjHUGGOmCLdEYna7h/QVHpDH3wI57bD+8UENlV9tHqUJyA5No9i/oLToKW84ZYWTjZIIchVt7ppXmahq51InFRuUkWcuffl0UH4EmLBOcanspNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782201394; c=relaxed/simple;
	bh=9qaqhhEswBcW/VWj5H98hTOwmvngT+TB7XQA40DBXe8=;
	h=To:Subject:From:Message-Id:Date; b=SWGLuvFuXrQZrAUbZheYUv33NRjOKPkRKO22yXqvwMr0uoqIeABPlIToAs+8P6/sM0NGSRo1XnO4J75quxvZPVuvSoVMq4Xy4wwsTsPVqm8y9raejrb0hY7bUZMbJWAd40RYPmluHLetywHBKV8fbZ0gYT87bYJh48fck6Jerqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MyRcyFD+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MyRcyFD+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6167C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 07:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782201393;
	bh=9qaqhhEswBcW/VWj5H98hTOwmvngT+TB7XQA40DBXe8=;
	h=To:Subject:From:Date:From;
	b=MyRcyFD+iSmTzS6CwrIXHO0XqLw0hlg84/7U//UWz+4kLV2zJAJvi5fAFJxGwdJsc
	 eiMnDf1IWXnxyPn3zYGUAbQi0hOkDj+rJqFisMcfqN4th40EkWBGqYvR9GSSmgBNkC
	 jz5oYyvvoUHW0sw38PQ3dWxzKY+JsdwB/ZbkAHKzGcoXvxcZ/wdvzCq27FMyWADgkr
	 DdG/nKzdQzQYKoRwzcwG4oV/Q60RBFb6+gGEZVR3rixPG9A2fhaYmERXDE3ksj8U1X
	 +g7OPawo+Ty86Qoxz4CgOW7E2CzDMjycgUjZwn1B2srs7q1nuIGTy3ftY4mE4qpqkh
	 KmsNKdfMzv9GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCF0CDB470
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 07:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178220139369.24198.14254193510833856988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b55e2d49c0a3ca50fe8a85490d2bf7969181a4216daf481e3e9b2469f9dc3bd
Date: Tue, 23 Jun 2026 07:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782201393
