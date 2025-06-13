Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DFF9153BE8
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749832194; cv=none; b=IXJ4S/O7iVZ8r2Y/5sRw19iseFtnm6QXpCU3HMlJG1865kCmZknX1RGXJ2xlUrelSUffMTBZSqQllgJQFPZU9otuc3NkCsX/WsSza/fc9949A2ok+nmNkl7TgDcGcu+20xP7GrDalbleOEsK2rhTLmBHqG5rxAzI/wlEcb4CAeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749832194; c=relaxed/simple;
	bh=s1Hh+/DLL/xmZR4TUzuUDa4I71ZdOCCA6g6YGgdPNwY=;
	h=To:Subject:From:Message-Id:Date; b=JmvM4UZ0wxsNPaSxh24DMGqrWcdf82xG2tkG+a1t8Y/v7Ce9A6rPDLGTue2SvsIdcyIxtCqZvbezbUdmAcQCb6g1d6YVioXaAVxiT4t56NdxzXIZ9xtFqHxIAtPWdr1hIB+XofLkyLTmkwlrzjyyvkdimfmwCMfmNw1II0mdEIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O/t/I8Tg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O/t/I8Tg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A183AC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749832193;
	bh=s1Hh+/DLL/xmZR4TUzuUDa4I71ZdOCCA6g6YGgdPNwY=;
	h=To:Subject:From:Date:From;
	b=O/t/I8TgG+VhHNgAyZ0LdNlRtQqhu5M2duCVrVproak5rmYU1SfAT8DfsKXj22bgz
	 aMBIBA6WzyYZvisvC3mYlUy68u+X+tsSw4iDV/cqNWkn+YnVja8X/FfQEVmZhnHSsc
	 oOIHjdLTjxbVkWarvffSyuo4QyRoToBj247W/gN2kLl367jFzQEDf8+ClCvVPyG38d
	 ALx5rqAAmsMiiQjzUMQ0k/O4BXRT9uLlBY9MoECkyOF6ebkYtarRuD2wafUMbXCPc9
	 XZ0qhSgK0Rua/5Nn4Bxklk7LLq2GKX9ElZDOwZvVehZtsG1/Q2obnD27wj7DcYg0yG
	 +kdgL7P4iGKuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDA2C71148
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174983219358.21858.14934970184394189643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db965a6755e8913af73a922135a04841329cadf835b7942431792900435cdce1
Date: Fri, 13 Jun 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749832193
