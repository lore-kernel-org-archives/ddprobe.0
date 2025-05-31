Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2272904
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748674194; cv=none; b=tO8+PJcCnRscbkDosBEiloAWauv0Zg1iKd3Ku015HDneuGyHfKvJDuXDs0N9CvRwGDXi9hgNTntlB7/GCXQcDyKmgCuLviMUve3am9IfwbjEnpLkM7yzlLdboJyDRwR9kble8VcxscUscCOeNtohDLPrMYEA53T0ZTMDIvcFuUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748674194; c=relaxed/simple;
	bh=mWDB5rOXwvM4ZzyqsHDWmfiMcPoz35tuiWyirZXw9zc=;
	h=To:Subject:From:Message-Id:Date; b=HXQ8BiCZ7W8rgH618uXiD/B4dkm858rmNBDipgPS9+BSJwnfeX8/pkGCObSmHpSvU/I6FgwZLzCosFZwoCFcIM5afJo+7m5Qaa2AgBhdEZpH6Z8UjsK7YfR3DrDOMGyreLGAe3jgM2oyClEWvrL1gUGOZr7tgOJqisBm0xek0Os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XqQopw2a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XqQopw2a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C07C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748674193;
	bh=mWDB5rOXwvM4ZzyqsHDWmfiMcPoz35tuiWyirZXw9zc=;
	h=To:Subject:From:Date:From;
	b=XqQopw2awbyztRm1crBUKyxWYrzMzl09kPPowX3Kp4ubx/mojzogNpsWi6J1hvbhA
	 s2Gjh6kBOjCOX9owb/kovgmAm3rJKGBr5e3plVcI2uAPqRydX9SHmJ76MCrFLOQEJu
	 2W0FY0tQLrRNlyIEtDUDD5YdDTgtbbBkLxhtLtEAUczJi/XgzZbgsOnzoKmDo/v8pT
	 LpdxBGRQ/bF5/yw/4bzly0FL37d4QgCr3Wth8OvjghEOOJDyhWcp6jkFTDTbxFlZTV
	 f83N8yjAbfojRMlDZdjh2UfcfZshJv/L1vtNH1An9ZcgE8Qdw8L4rJ1s7Rt2w1ckpA
	 GB1EBe0TRADOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E79C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174867419357.11654.7156648172331841025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a9acdb16294f5abac4430c1726e85bfd43e017e85653073344f6c71ebdd348a
Date: Sat, 31 May 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748674193
