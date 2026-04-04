Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12797264619
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 23:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775345134; cv=none; b=muY+Zl7NULK75P9G3JhUL60moMSmOiG0lornDqEiCkD4wvBMo6zFEj2cNmGGYr0F993wOiGJUGOcM4B6gYOw94DQ4kr6kIwltnlHYY24kh8fVPk+kaEAffA4dUD3jcKk4XaIIbRA0jsKGV1OqU62bkTKCEd1Cbi0tE7RlQLOUTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775345134; c=relaxed/simple;
	bh=gBdSRqzHsWR7albm59xu1F5WQ1zEPxSJyeNZd/6ZYFI=;
	h=To:Subject:From:Message-Id:Date; b=S5SXxDp96OJVqGsG8x8cC/ys7/sp6E2e50kL05eCayH9Iahh254jB/8IiUgwyRN8gxrMPDd9d4YDdMTMbQbCDX4/oQv3ZNtwsE5a0d2mSXQix2LRcFee31/XJ1UFLePhYGCeArI+eRpu3aRZQMPgxoLcBtagvCjCIc4B82kvzEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YfPLOrzL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YfPLOrzL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDC64C19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 23:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775345133;
	bh=gBdSRqzHsWR7albm59xu1F5WQ1zEPxSJyeNZd/6ZYFI=;
	h=To:Subject:From:Date:From;
	b=YfPLOrzLxO/1n+PK6V/rUnwhw1abYjuho+c2rrAFPXo/W8t7TqvitbGeFnHSaOdBB
	 F4yun5MwKrhHHumkKRvz7i582TbCGefEXXgsNTNhVWdbMU25kCFn2Y4wCkyCZhGwIc
	 cMFpP8vAB2xDnPatVLiQRjLV9UZ37F2BUCsFsklfF4LalZCAUJyOamcKCTKQB49cj3
	 s/dS6SyZ8ArIkoLuIlS1qEJFYBaNFsoCvTFlW34lGuEQQHODFU1z3StO89gxs5SnFw
	 XJwu1lAxOylplQHhfHosSW4iM9Kct57kqghUgC9/zepPvLEgxgmsgK6pGJCj+ynsCZ
	 YwVK8Mt0AYTbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B0EE63FF9
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 23:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177534513368.21129.14830306148921735760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 968f13e8665c11bff1d22c72cd193cbaaea5f3bd30fc3955c6dba767941cd806
Date: Sat, 04 Apr 2026 23:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775345133
