Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45FAFBA38
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 23:07:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717628843; cv=none; b=E7zEPVgC3SWfIR3Bk+BYGNpycHlSxKZFORQv6VASVMd23gaqkAPbsHp4ohHyXOyOObmwsHEZVZtGifmiZg6xdeXLx5FuoitvZMvA+XIzgDEbvKDKWnAvV6aTU+4cQwIQGHbu/1kDlF6iKgn5jRw/0MRD4prZe3+ZrJKvpY7j2GE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717628843; c=relaxed/simple;
	bh=fAJ4GZ48ar0xvoCuMkdM9WGDDaGKls/NUmagWjmYmok=;
	h=To:Subject:From:Message-Id:Date; b=u6GMLNOoKad7VQZcL8TWTFYg2XZ+NoH4myXMBMC4ekrBj1CiDT0XMd8sD/zOJM+NvaP9tU6yih/FV1rupkf8jJ1nzNyFx2Ghh4XvbkyGt67GB75dnJrp8DVT7A5Hvr8iCjUamM18MZZjleOawgyM2g7lYhwQI4EiCLwpUWcMB7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bulNyIRG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bulNyIRG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D21BAC2BD11
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 23:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717628842;
	bh=fAJ4GZ48ar0xvoCuMkdM9WGDDaGKls/NUmagWjmYmok=;
	h=To:Subject:From:Date:From;
	b=bulNyIRGisQyamOcWICIQwiWx2I7tVCjjfvFBRPuEPfkpslHG9XFGt4KCCoNbBwyG
	 o+qdkQan+awIYJs3pIihbtuLXg4DoOGl4jRIy0EhUk2mMX+OvAMRcRmwoKPc/aYBpa
	 4z8HQWrIhu0UGp3OZsPGpMkG8mLKcJEgGpIqLZoj9We4WIMnjNHuYB0poev0Gh6Z/n
	 7dynoyADaapA6qJx2qTc6iZVFlxsgJbIAIv8rPEGuDwBuu7NmMgjhLLRXxHLLfG58w
	 tD2wQ0MIPCWSDIGScRM914+A8xRYso5eYmYTLyblF06z++LXWDZP13hG37Vkzt6/SE
	 /rJjzd9yJrelQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC7DEC25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 23:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171762884276.21082.4270729564827762741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f21d7ede085fd699758856dd24ac3ea1a286f7361e414a9a3bed956c7918a82
Date: Wed, 05 Jun 2024 23:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717628842
