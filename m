Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D95C19DF66
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728485754; cv=none; b=Gb0yF0KUEBfx96M4DrknQfpn23scd2vcXarxgxd8aUUMDmWevtrSBBnIqjYbVHlQ007s4ZPhDqYr4obxRuegLvWDffknofW0KZ5ftz5CX8MtcFwYC3wUwKddNFxzwtJohpQhjevZ8Z7SCvWtSYhIhzztfrWOntLxI4jNdFSifL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728485754; c=relaxed/simple;
	bh=zTqWFwkhCKJwWDMiCu3P9Xo6l5jjDsUkXBI2SgSKmmo=;
	h=To:Subject:From:Message-Id:Date; b=Y6Oyrr8YLF9C9yq1+MWcYRm4yz4TCLrfLntBJm7xGe/1Bz24QpriQtKEzyfDBkG9aQvp4wrH00Jt7vCM/J1TogMYsI1Qdv8TsOhwygB6DVbijcQd/RkjNZlknEw5REokXlZGn4zklUIGBvSGjOTnSHdqI/TM9SLuPgStuMoRDk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dddv/+Ud; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dddv/+Ud"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF69C4CEC3
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728485753;
	bh=zTqWFwkhCKJwWDMiCu3P9Xo6l5jjDsUkXBI2SgSKmmo=;
	h=To:Subject:From:Date:From;
	b=dddv/+UdVSfy7Fjh8uqUhq8Y4cx2YpHd3jplu6eGaridxZQO+N/dI11aEpGwFpgfh
	 7dazeKtY++FPj4VXDu+yx/dWRiMnaWKgEF3EpQJ1n1tomTE1d/Z/fe1Qra4AOMnCd+
	 Z58O58KzakbWSqP7zlCDEotWCpGUxN2LqmkXXb8ODQr3pyqvXgylYBqYCDp6uKd0KC
	 BuzlGP/Jx77RpGBbYPOlOjPZgNXytRobTVKVHZnWFzOkmqkJzEXZd808sxkuObnKWU
	 66NBGQ/AAoyty5F6O9aQ4fEKpCUQDcTFAJFs/mLmtZmPOFxK8xQnhfGSjMbSvcy6gw
	 5HJAln/GXD8mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC2ECEDDA4
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172848575369.23709.3762987660905794008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5aa4d4061c3dab61f85f3cee832cd46266ba3a5503fef15363e4226510dc156
Date: Wed, 09 Oct 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728485753
