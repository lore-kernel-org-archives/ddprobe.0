Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 513D5770EE
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 09:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717147463; cv=none; b=djRagQgnDW3JgISkYZsDMkYDL2erSTpBo/AYYn5FXmSgCrCu9APc1DeyfHUWAYLo5yq4CWh3iH+ejLGMWGIKMlQJSQjg8TWX/McdBKBGLLRlBXaUVAkOjSXVHJ5AmLDOZxw4odlDU6qFwCO9fQNv6uZtcrIH/Zuu8XkkOihzhUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717147463; c=relaxed/simple;
	bh=a4b8tkPScDNaweadXvhnhVqP8469ZgtbL1SoZopKhHE=;
	h=To:Subject:From:Message-Id:Date; b=TJSdsHibiTTBxDaJtU/rGHqoL+RzwNFz34Lxc7IOfaQoTBLKKbpbGa/tuXOKWieXoFGR6kEt8VTGmCbWsU4FJ9y/rL+zqFikxmw7fs+/l2T7uuFGwiaaf0DBfQwJd+GKxQClOWnOClb0XH+UyIHaZsd88EZc5VKv3vZw1jybKTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RTDaLb+B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RTDaLb+B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D94E5C116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 09:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717147462;
	bh=a4b8tkPScDNaweadXvhnhVqP8469ZgtbL1SoZopKhHE=;
	h=To:Subject:From:Date:From;
	b=RTDaLb+B0B9MhFvanZQrl/Nfkps3p9dTyRtRLfwDJqzYUAtJRMm45WlnVqhOyDTrB
	 Z7348OckEdW8IObrKlqXZRprIkgC0phTxCy3pX64GBbLuAbwHDJpTiTPDEuPRUcPdj
	 Qa1bMXrt66A2DaCcXvfV0Dk4ckjNXTqHaPppfjibZFR2HLj9e7iKHhGuUfiU+XCb0X
	 T4oPdGlY6Y5vofeK3INe9Ww/QbCcWuBmkg1kLv/5O75UjgJJU6HP9Yq29O+mMau8y4
	 O4nKF27gKrBIm5tD/kCS0dd3TFN09EoDpNmI706QZmQQLhTd+B7sKuAVwvE06JRuw8
	 +zV2bcrqkkRlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5C83C25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 09:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171714746277.23616.1406506996491068263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58854124c0406d5f7bf4eccde564d0fbcd14a264e73c622a0e1e017ba7132b22
Date: Fri, 31 May 2024 09:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717147462
