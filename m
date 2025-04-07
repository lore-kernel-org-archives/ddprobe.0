Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD1931DD0E7
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744036193; cv=none; b=aRqrqP6j+eM2eEjx0IrymTlITu6ixBPdHihymsHQDTRDT8yPQoMbhDLZID4dtFj/KuLX1y8+F1HeR1Q0Xb1E3t15Uvxd1o47QhW+Iskv6UmJFrYQl87gD67810Ux4maAhTdLiNVf94fgMRFlIX03tYiK/MLJy6Ux2pGNGcoQmr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744036193; c=relaxed/simple;
	bh=fr9oaxFzi2MCuOx9FIjLjp8JQt1XWIbSg+40QS6ovh4=;
	h=To:Subject:From:Message-Id:Date; b=rZoKkUJV5DycufSWsG9XrB237B0nuvnIytacKAf4rLoObEwCmLxMswt/troRgm/a6AAE7f+bmEd8u/q6cg+NV+/KDTO5k6RoxOpE1hBA4CFeubWkAuyPX2P9h+emBOrA9g9t5mi1aQMPfM7hP0Ir8SC4OKQjK9F4iaGakOxXklA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tHSpsSzu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tHSpsSzu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACFF3C4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744036193;
	bh=fr9oaxFzi2MCuOx9FIjLjp8JQt1XWIbSg+40QS6ovh4=;
	h=To:Subject:From:Date:From;
	b=tHSpsSzulS75YspwYu+5SQZrMqdSptZxKiNNQv97BR3T51ZXzAFPMNIHc7TeH2iEc
	 pqhTKkx06g46IKwTDeayD/xq6KSIVtCylOc+jN2ovOAZyFfxxa+49X3aGHN+T818Mx
	 yiURyeuM24NDg772zwFPQq64MnZ2XlKY4AUtgB4UvNyi5Ks44bLfmRfCw98mL/WNtE
	 giWIgYBtYMX20t3JdMIuIN5gMM2vVpHynMgD4JJSM5XVxYFmyvwyO73qWfnM8wZnRa
	 NupHRtYoknEY56L9M7RqKJ6Ywr+1LvPhM9i7nugvvs7POtQCAy/NZaju2h7Tl+EafM
	 KimkegvX99a4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B2C1C36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174403619361.13956.11996295826102576950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 093b4df002020e82a46d0fab2726ebf8ccade510babf091edb1f6a08954e4108
Date: Mon, 07 Apr 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744036193
