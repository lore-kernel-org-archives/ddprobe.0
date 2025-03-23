Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48D361EDA07
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742726394; cv=none; b=asBD+QmLovwhIt5YB156Pe3zAfoU4qVkNcsbFlMrk6dx5w5xInb5BhF+bcgj8ie3NuyfvmZNL/YQJ4AEvwqdSDaKIfowkeC1DYzCgEHZkJ5PJDLUrzWDgnPM4jW+cOUpEr+/G2EkdwIaq3pYo/m0hRkC7CGGzjcbUoGcsTRI1Jo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742726394; c=relaxed/simple;
	bh=ge47CadZQoGs4wsngfNee5rh6VmfkBIfVAoCxjIssJo=;
	h=To:Subject:From:Message-Id:Date; b=PiaRaRAlYVITlYSORQhRvK+JeTrrXOByhH/W3DXucjIwhuYj67yU6QM12JCXoSAoEi7YJ5AUkx2qkfFm5rgwVKCMUNQLypb86p8qfT/HkL4WP5FAuf9xS/0WmRFyzS3M0pXbuV7GobMWFSMISweWJCjtSLbSso3ZPQkQ1kQLuvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BuZZgr0b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BuZZgr0b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85EBC4CEEE
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742726393;
	bh=ge47CadZQoGs4wsngfNee5rh6VmfkBIfVAoCxjIssJo=;
	h=To:Subject:From:Date:From;
	b=BuZZgr0bvTjfHbVUMY5C+aqtLXZB+3zRp/oekW4cGe9qoJuO9vHoXrDutSLVrTJZv
	 u8uDh5bBy6TlSfLomY8xWlXoxRf6BKWfUk/odcw2Vu+jY8eF5HBjXJxOf7ktDPFnuv
	 TSLxNznq7IR5n1vIshkdIb9Iu7bHbfoPdw3BPdGUC8HfDkazN3abMJwrQCCDinu+3o
	 jCjuOwG5jMLqE1KiY1RMIquNFwNsCD1i4VAXJCeC9ww6O7opfWBE8vmteglOJbQX8U
	 POl4iVKGKRdbH/hlW4BLMvkJmm3g9SgNiZG6JG++mSkQbEkUWk1KNzLWyCVL4kytWF
	 ixJAbWXfryHTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940DDC28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174272639359.24426.10582353140526960869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 222776933f1fc28e4baa90704a1939d5bef047fc9fe94f28b3d5f3932613be52
Date: Sun, 23 Mar 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742726393
