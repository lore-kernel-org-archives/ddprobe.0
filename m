Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14C7E329E4E
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761868794; cv=none; b=qx4hahXtApNrDg6LammVEJUpP+x19s3T7E2UwB3RtleYTlLnABGJf/UZM250OD+GZLaCtMh4WQmFA/pdn/iJ781Zku0notNCF1WsMN2mZzTya+w285mIq61GbgDUclJe3dtyEfT/ovVgTUiuoH97p9RGxK22R3kZrw04nolQoAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761868794; c=relaxed/simple;
	bh=ZxBe3tL8PKe17qsVXgSaCHuiJttjFGP1mGz7ga5igGE=;
	h=To:Subject:From:Message-Id:Date; b=FCyyGTPB73wP97q9CRO6zH59lNAPSwFRxkUiPVLdzsHeFshp2Pfe54GIiMaijRLmOpYSuGwGLu5x9yUtv+2s3I009oVtdOAOfmZsGxJnna8WfhlnvBX2wcQhtDnD+Kg5tgxJRDpvCvvGhilxRsptyC2qYmaPObsuZCrNhMnjKko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ukC/9a7O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ukC/9a7O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D533C4CEFF
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761868793;
	bh=ZxBe3tL8PKe17qsVXgSaCHuiJttjFGP1mGz7ga5igGE=;
	h=To:Subject:From:Date:From;
	b=ukC/9a7OdNZpfztjJDZPL7GkaPj4iPiIkoRKNjLp8wiKQMo8Tjvmvhvj99XphZHqi
	 ckrKHCIQknWBs46UWmrPNryBzg5gBROgOQKWNxSZcSVXVDaejgCkhVcRXb1L2FOVNv
	 5aAUGpishA0UVyn5pc/ifZt/qCpM+3ZFUe95f2iTqBzadpfCXnKrBJptJDf/710ha1
	 JYrEBKn2EPKrYnz66aG0SBSryIsr6B5TMxIdmsnVSqOYSbFhKuE8xJfdQ7caUCgzQf
	 IIQV7EeGwCtU9G9vN34qZeOAaktDSVA947+3hbqSHjtFqpXynNc4KRkXLVpvPTLsOW
	 ekCLev0zk7kwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9024FCCF9F0
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176186879358.5663.15611528917440471123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86e17b280737065e2358fbe25246dc291e7ab7044b4c745ebc973766e1e4d761
Date: Thu, 30 Oct 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761868793
