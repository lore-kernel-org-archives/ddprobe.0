Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3648F19D087
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 07:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741763934; cv=none; b=JZ0KiNTroIdvT5siBcvbE2V/XQSSu3n0U5QVVnb9Awb5Kr6XOtX0w5eurwjxd5qoDKsDMLQDJYe5OMnu1q5H27WEctunKWMhKqSNPja0mZqH+7dO3O9U20jzlt/XqC6T5jYe1wsLcsTjHiDIxm9PtYtMTlHxdLl33q9Nha7c9zs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741763934; c=relaxed/simple;
	bh=bSAOUQXLW4Ax8TzkJjeY/SrXYghS3O4A0p3kSFQQJJ0=;
	h=To:Subject:From:Message-Id:Date; b=ivSnd8EX48iSJGZLHH2MJZfpPwEoQhmL6UCNOf3dnnqUtOn5TQwoGGaYN1KSbWLFh97EItYTZepcUKbLaJ/pNJC7+E2i7l1U5seHF33C9zWihfLuaZdMIoQdMsWwh+9TtumFltAmYZHRlJtjECz0rGgdcUYP5rwaKzf30u8wFkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DhcMDFgU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DhcMDFgU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD584C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 07:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741763933;
	bh=bSAOUQXLW4Ax8TzkJjeY/SrXYghS3O4A0p3kSFQQJJ0=;
	h=To:Subject:From:Date:From;
	b=DhcMDFgUMLDXuVZvz407k3N6XTmaOKRcPmRgy0uBq/FNiPK1vEY+IiY+4iMy1Snh1
	 DudymNMrilzqFBYxYlisy5I51cwAUEd+41bvAmq7nXQpvne0nRr+FxZ8AB1AemRnO4
	 x53Ap9fejjoucM4991JkPioQ/2d2vcvJQ5yVU2zbmv5N5mjguR6dTEOoSIFVaKihKJ
	 Q0xaEs0xBsaivangTTslOUhnKi0Jgw2ij45RGSoklcsMvPN99QQRO8WkIvknZSY/7c
	 LJSxpRMGacWU6BkTrN3a+FyaXI4zmqklxEBFc7dzKCLSWnkRxzJUgnqvzVgrMCLq0b
	 rpj01j9LYNsSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92817C28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 07:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174176393359.13147.3063227918113616672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 450f64a06fbbbc414da6092eed00a614d0fd22921c14accd1aad041ebdcf93ba
Date: Wed, 12 Mar 2025 07:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741763933
