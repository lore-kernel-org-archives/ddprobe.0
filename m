Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2355A2D780A
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 22:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768601034; cv=none; b=arALIDhPzEp75bAUMAB6BNhm0ui3uMFvYFPeFqV65BW1x2SQBZ9HQp59f561L/eIgG5/z7XHBz/ibl9cjLI1PN3LxdeaWf5HIBfL19jTi713m6DqW1WWYp+4HbZJE/SRmKkVxJMymdOKhqQpTW9pUviI0Cex7IGzXlnE/Sf1SKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768601034; c=relaxed/simple;
	bh=Tk6Zr7BWUUf3lddXOR87Y9dCV2fFU6xf3uB15e89sXg=;
	h=To:Subject:From:Message-Id:Date; b=Vv7rR/D7nYbyPpnDE+uErQzcRBkFMZoQhQLahnOBu14WE7q75UQimW2j7l2L2xHS6XIkVeUZ/E07I8t71j0mftFn/OtF6KgzXDJM2vvSsmr7PU3R6NbOvqzqorJ7HG75IeVENuoxsnkA7/1bfdQiJvYNa5cSAjH59/yfu6xffNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d14ulb1A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d14ulb1A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32ECC19421
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 22:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768601033;
	bh=Tk6Zr7BWUUf3lddXOR87Y9dCV2fFU6xf3uB15e89sXg=;
	h=To:Subject:From:Date:From;
	b=d14ulb1AQVQXlKtMdHYmWTMZSpRPmQPBKpNhvpxaYTVW2LYHAxNtte5p+gyxEeJhY
	 HcohIrpGkVQBtSTiSLvhcmBhedFIZxzqnWFEjkm7ShWIsXmXXsDbCnPLeTxoko5rEZ
	 vxmTwDpnXbmzkpWCRDS0TRJ34fxtqVfHhZyPPu+SUguLPEp58O+Xiv+0EJzr0060hT
	 oFkSz6ziqknJgxdIn0hJ4M2JkiiFjmnugiDiBFwe3b3g2X+7R45qgFrgQQv3LwKCH/
	 yUWpAH9dt2HJD8/mJ6UWgT/nZ7miffbuUkcZ065zy9tCyj8DLpU8s1rh2ypIbz5l1w
	 EYmb3e0P6lUJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F5AC98302
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 22:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176860103358.2697.10233621601536509315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e59e6ac0da4f03633a4a0d8361ad8f8547498fc195465723d12bff6091950a60
Date: Fri, 16 Jan 2026 22:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768601033
