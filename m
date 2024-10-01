Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DAAC3209
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 12:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727784354; cv=none; b=pXALUl4IlezWATcBMVD63J5dzdp4gytHqZUq3ZGZWZwx4wM0dwNoEBgvsvcpCYZPymgsxPBa/DXpsIzv2eqCX9hC6deIEaiykVZJVN+OkEgWXfdr+97r8e/ZfAjbhZWJ/nUKwT8/76Hvpeg+KnmTY/WNF1PbLzzExsoP0veFG8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727784354; c=relaxed/simple;
	bh=OcrdejXFnu/if55+XsNPQxGmShFyV0d7UZjJXEqaXrg=;
	h=To:Subject:From:Message-Id:Date; b=oujoOA4AM4t+pgVYfBg5grEX4b0WMn3GLn+US+TWdA59gy9fi4876OTigE2Ao7+LY+cWIUcOk0FXTR92fQyF0wwWcuGIkLZGVeD3/Csia2zfRLPmElbqlmaCWUy0gn7AEQRF7jMlbJS06QcvjM2j/RHtos/duIYce9fyK07ZRIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mMtYaYR6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mMtYaYR6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0330EC4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 12:05:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727784354;
	bh=OcrdejXFnu/if55+XsNPQxGmShFyV0d7UZjJXEqaXrg=;
	h=To:Subject:From:Date:From;
	b=mMtYaYR681H/2QDZX1zr6wFqbhr/Z/JTM4JNMRyiCMbS539wVbvBZGc41ehDyseJW
	 Dtqld1SIPMRUYHrPH6KUgYEpaSeVO5B8ma+gGY3xuV/Wm9ELrH6+WYnJwa5cv8kJo4
	 BdDgr64pZNXJMnt7GV+fAkAw9y/J4JaydKAoI6Ns0yGpJU6V6jTWzGVSjymNqojWij
	 TdDYL+Vf5PkYLyKMavRUOIBxCbSQKyqLuNK9u6aPS/SlmIudIUgXuRK/x/7tOvXaD4
	 drRfLzMrt3qmEMuFac4PMESSOP4ipVXI/y5BbeVltgah8tTpMMBBr33E3Uem0UskPL
	 1gVryVUZE/rVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0698CE7D19
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172778435382.12991.5286400049146723819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a8448e5aaa9b670f0e1a87998aea014b754d739b06690d56b6de39c189f1715
Date: Tue, 01 Oct 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727784353
