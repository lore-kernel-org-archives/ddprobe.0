Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FEE51487E1
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 14:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719238943; cv=none; b=H+6N3NGS4Q95b2xOKFZXHCbnd2Qx8GGblIbFk3nmQj92KACy04jFrSUMDP5lSnmESgnHTuci/0F4metaWF93c/rqVQadfcI0I0ks8umb1+d2qwU7gLLt603MV1xgWmgPchtKEThUFXp7IwsHJyN2XnrJHc/bHOyQrIDLF1RLinI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719238943; c=relaxed/simple;
	bh=Vbq/YqaZOp22sjCPUqdgrcrz2QTGnburCQX8TmCzcMU=;
	h=To:Subject:From:Message-Id:Date; b=izN/qUmTh36F5BO+bqgyTKhOhmKx7XSMxEyW5hgGaCNZiwO8blgwHM4UYjPE5B966HTydiPlf7sxqMrnNVDaQKhvJ6W/ABHnZ2Qzg0rhwauNVyB1rQFsiQyUPa43/3wcRa21VYco/cSL8FyEBZ+RYIlYmeN49kKHaPPkTq/mdtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GSFyJ0kP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GSFyJ0kP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3454C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 14:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719238942;
	bh=Vbq/YqaZOp22sjCPUqdgrcrz2QTGnburCQX8TmCzcMU=;
	h=To:Subject:From:Date:From;
	b=GSFyJ0kPQ/Uvw+iY3yBdV+a0xZP35vRfE7gsdSy19Wvbt0PXd3Qa8/8Qsk48seDu2
	 Ewb/miu54KTkWxGuuSNqmAa8gvF1CatUlU50yHHCpJbgalSaUQ34uazwA6qFCFFiwc
	 B6HJjKSp1sN7zsePFkOobwvF+pK7r4bKYoSSHkHCNnRDbuiexB1RleHhJdb1Yj8YMe
	 nU0yQaLQgQ4cDfOANRxcEOl/yb+p7346szdw60dUxFgUdKpw6ytHqfR5v6AqDpkW+E
	 alyffl0YWzWps+2GNJ0Zyxt3UID1aEWh+WyVSSbMuQaHMvvH3i+ae9YfJQU+9Wex81
	 B6ng0Yu58g6rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C15F8C2BD09
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 14:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171923894277.9009.11739092071803865890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14c5bfa930769d123afd431b67ebaad8cc1898deba8963457548d4accdf89683
Date: Mon, 24 Jun 2024 14:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719238942
