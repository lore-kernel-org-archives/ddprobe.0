Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD15723DE86
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733840154; cv=none; b=JxsotZAoSW3Lw6ZKWB3cp3NggLTAgelCAKNOhur6ohTgac42Z+rlJgaBzlX57dzMNswPklWlGnGnWOpnNaaafF3Ogqe0GSdGTMhGS5LqP2/q9G63Y3SvxFdNg7dRRbsnBM51BkGBze4n203jgosngtdtsJvqlrN+NAnFPg4y1S8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733840154; c=relaxed/simple;
	bh=oOS7LJ2AI+/Ac8zmVU+6F1UalnXAHgMeeX0+/qfd5T8=;
	h=To:Subject:From:Message-Id:Date; b=RTrhUfi27oCvn3Xht4K/ejn66uq+2Yet0COXBO+PkHdR5kb4jNghvEWzucA40HhqgpnOGel1RIWIMZdR8dwGuE8PLrZX2MBLSFwdJsjqeGMJGNQKyp2HfqcK60BUASrTLTedfEp7MTsEVXj5el9NQx6r+chSvJmAnnpL3Irqow0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YGaKWxbL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YGaKWxbL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBD39C4CED6
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733840153;
	bh=oOS7LJ2AI+/Ac8zmVU+6F1UalnXAHgMeeX0+/qfd5T8=;
	h=To:Subject:From:Date:From;
	b=YGaKWxbLIybIsV2m1JZZ3gwp0XLvOW3pVUw0GcX76CAYd2QVFTNYEEuKrdfWpgm2I
	 vQJve9nhw4OfPqCTaJDtAnxz6FvwQ2gc+qaeWXtUo2ULEiwBVksUSkDUGJ+pD1YRwT
	 uNPfRV8yQ6Py1ASEEmw3an5vTCkGGo4FsMJwjyMsCr0B5Gt2XCEfG5dAxYozaSNT0J
	 VIyVl1KQ7xFIQrQICKDkY/bpvNp2kHKjvhiXiPiUNV3u4ajP96MPAf4Qx5xCSd8Sib
	 yPDjsrsAMqKZZGgHoGlwiSTAVAwlrbfT40mhk60tftbx9w7Z1SlRGm7anfor8ejK8X
	 ujrObrWN3umWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4B78E7717F
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173384015366.20982.16693864313016617423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f808aefb59210391dc7c7c0875cc6c69bbcd64c10efa618f2bf033f0410adb3a
Date: Tue, 10 Dec 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733840153
