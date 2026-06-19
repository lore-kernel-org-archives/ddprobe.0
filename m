Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46EF433439A
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 18:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781893594; cv=none; b=rdQ45X0JlxBpPI+FQd8c+F3+Cx4qLBWdMzinF4/qH/8HYfwp7jIgIQeLziw9dN9t5jCyIEt4bmk0tj7JopyRGz4+5ZutrUIGcQVjg2h5OLTj6iyIPvHloG+aUb7VFRI9HK9Y26kGvt+lJR84rbuNLqc7HLHnEL/SygcW4vgLpQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781893594; c=relaxed/simple;
	bh=V0VaazY0op+1JaXZEleNdxSISm8Sdo9DHoFBnjiXwJc=;
	h=To:Subject:From:Message-Id:Date; b=rUK8gt2miRutSgbo8xrDF4f45iQQipGDAQsRH/nW7195l3JM/2Xwq7vF+nc9o2vPeFGX1/GqQkMXW4M2Izqy/1Ot7GSUy0B78q/L6qiKbdJ7ES0X4PeIWh+7TiLeapCcnhe82ZK6tnEe6P+Oxees+yPcbYL20s8T6Rt3As55ehU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ETvtLVTV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ETvtLVTV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF69DC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 18:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781893593;
	bh=V0VaazY0op+1JaXZEleNdxSISm8Sdo9DHoFBnjiXwJc=;
	h=To:Subject:From:Date:From;
	b=ETvtLVTVYkePGZ2FP/CuVPdPCdIR0P/XeFYm4938OITyTGZdlDbOIwnkPK9TWPIHf
	 Jt4jb18n/tVMrEzByENLjCeHoAaxvAUfe32K/8xqydJ2HmpHqgmwRAclRskSUw6kAm
	 5qG/zr3ZCokINkAJTqqvEq06FdDdHqntoV/lwEjX5s+9OR5fkIWsYVrbhcSjUXD2zM
	 koXD5F/KZhyP9BlrTpbkBz6sCMAPdj/Fn1ihi7vmYb2JpT9ub8V1ipVMp8nviRpI8O
	 WE5WFH3EEkWqLivKbA8D0jez5L1d69fs30/lqZAmNlYRZeBNt2svi5WQUZ2X0KK2Er
	 kJ/LYra/HUNAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1814CD4F26
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 18:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178189359369.8606.111604432052327493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95d28979e4d72562c8e5962b6b45b0cb5f68a6aa1ea8345dea0a7ac51c6ca063
Date: Fri, 19 Jun 2026 18:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781893593
