Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 583D6377A95
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791814234; cv=none; b=jvLebLypED2PJEciTYp0l2DoiQnMOhI2Sf5u2bofcgmhJmOndw2O7VHySItOZ/e2ld1MhEf4NvNgClLqy1FiF06ggR3z5/5WfUWLtwrlFn5MhkW0J3RWDMU3LW+uUs6VmCl9rwFH/s4TSyLJF8E5gkf+MTFToL5FLvwU20Oj2mY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791814234; c=relaxed/simple;
	bh=ZRZavhUA3BY0sNI/bDJdaZtwMgDiCl5qCApjnKciL9c=;
	h=To:Subject:From:Message-Id:Date; b=Eptd5UL+swyicsICiUmL71e3i3lx2CLXkLsfroeMhmFi3rTLVgQICNeLeqqTe3JLoXsjpoX3XSPhxFcI+03sbygIAVIdzXEFbzXGMQmooH1X34QC+D9eeLwUHfqbF+JVOj2GdtmX978w4pswjkRXkMoqjcwXuoiCrFI2M2ENQX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LUCyQEpm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LUCyQEpm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCEACC2BCFA
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791814233;
	bh=ZRZavhUA3BY0sNI/bDJdaZtwMgDiCl5qCApjnKciL9c=;
	h=To:Subject:From:Date:From;
	b=LUCyQEpmPu1L2ktviDzMRsS9/hnWE8o127xE6uMrkOd+GFtTg1RSI2kopeGeCidm5
	 HAEK57eWDax/kdgd20bwzP382Iy4BNuxlGJWNp9yiQAovXdYJc2LBXMv4IT/lCuoUx
	 bWjPCG/T03IVknNVSaZHYHEn8Z1DVDgEjnomF/bPFCUfRwuQBSpuur+6J3wpR3hZif
	 /JL+zHaca7Iz3q9DO4Rjx3C3jAqvQKJU63i0D9YS6RFIel/BPnq0AuaWAgtBDYhGNR
	 wZN137M95Emih9ZfToovNDIaXWXMxW3HrM85FUblLoGdbnnCfoqu1u8wkF+8QyhhYT
	 RDM5tekqdLKiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB02BCA9EC5
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179181423369.3563.13805051054387109043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a1b298d04fdf57f9eaf1e8512718f366eef4e9349c0924e8d455d449241581f
Date: Mon, 12 Oct 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791814233
