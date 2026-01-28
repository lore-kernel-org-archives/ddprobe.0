Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E5AD2505AA
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 18:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769623434; cv=none; b=k6iaA9U7Yn+fo7SDw2DHe/N2wZR4/CX9hqKEQLUbTO53/15pbYqa01NXXuFn/ajTgua4inbK8inKzRolWLVQ0iTDry+jeyCdgTiTvY8VAjS2ZwXbD9vkPfG8+EO9zkhEyrAeHzfemBHDUvhHS2Xgz7KiUMoiHpIC+QFNks7aL+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769623434; c=relaxed/simple;
	bh=OPbi0ocOratPHiZd8MN8VzaXcCNrf+Hi4ooBBT3jEJM=;
	h=To:Subject:From:Message-Id:Date; b=KLKaw0GR1Nz6JkO//IEDRtreRi3Dt2Mns03RFwJKkqf8RKtNtrHTQeWIDd9pfTc36WCJ/eFruKG0jKq+g2euuiqtHTzQIIPrt8sZRHGD6dPZntu3qMZQJ6+ILdtYQ3/mw6TG6waGYaqX1XsoT57kY2vFVGbKcB2vgoq/IcZKqCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t/OD2iOl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t/OD2iOl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49FBC116C6
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 18:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769623433;
	bh=OPbi0ocOratPHiZd8MN8VzaXcCNrf+Hi4ooBBT3jEJM=;
	h=To:Subject:From:Date:From;
	b=t/OD2iOlv7L1O2cVUdnxyWMy9JOMNQjQnj+FPCDuWbMClGYnZ5+D1iQZcXESqyLy7
	 XXubakE38CQcXTr0W8iwCOSc2IyTEbO/hm0rKb0YpSLGuYXa02fKWuai3j527P0Dlp
	 vl/ct7Jp+UnmwpOaqGCHG314h07bLNvdcVRbUaOYrzNPmckj+Z2dEu0OegeGzGXQ+0
	 SJooi+X7FfncvOFK4UJD0mrw0565ao1y5O4bsPE7EMtpwPgX3qAHHX1P2S3prUX8lA
	 F5Pn+hqlWYJuv66zhBGrAQAMCeV/LfLztNNav8IalWX/EP3yJ6u+FFAU28Mqt6DCAv
	 k5DLID65o7+Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B09D46BEB
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 18:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176962343360.13954.15125128291234112288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80639907ac62fc91c236cc24fe841ba67fd93394d8d79676e14e4a0f8fa72f82
Date: Wed, 28 Jan 2026 18:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769623433
