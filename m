Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2640326B75B
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761077994; cv=none; b=rsvXa6zpkIzOTHSMh9tMkQIfd4my2V97wkxhi/tIzFCHvNhuDh6scBpi+lzy110ET/ZYcBe/aKxJ15NZHZSYlxRsB+f5th5FN9xUl6zcp2UcYrJzhxYT83Qk4T+W6kCLCPkOxdJbLBPD1JVNwQ8ay89oxCUMbsKxHxTLOAlWwws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761077994; c=relaxed/simple;
	bh=bHEwVy/fnS8DLOOXjpD80fwmkFamxVmLENtQno7xWg0=;
	h=To:Subject:From:Message-Id:Date; b=ePwrdpAsUuI6mcURpNxQprKbApucf6ofu1/GR3dR67znpXoQKaXAZGcoX2k0EnnUp8d6Yuqt3ve9EKEhftTyS7yWJ+s/tBVeBnkJg1UIkA2nq6go5GWCXLN+vz67pm3MEqLD5oNPenduHuWhSusUSJTxQx1MTznlk9S4Er4qdqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OpMRMd9k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OpMRMd9k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE426C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761077993;
	bh=bHEwVy/fnS8DLOOXjpD80fwmkFamxVmLENtQno7xWg0=;
	h=To:Subject:From:Date:From;
	b=OpMRMd9kiP/lmMBIri/WfoT7icLgL1AHOZDrnldXQdH1NaYxGdXd/QWwic56gm3lD
	 cposA/rD1YHwqIZ8KjS8/eVCL1Kagc8gHHcyzdSrfXwQhtdhKwrmRSev/ZLy9j9Gk0
	 itc9cnyRc2RvmYncgnlgy+ztIGNCL3R5xKZlFDoy1D7UWoKmScArJNDlRBeJ1qL5TB
	 vs12uIMHX8Eaq+CE8gxV6y5D3bJsObOkbzlRExTKCi4lM5FjuREV/y3G4KKHo5yNKF
	 3AaNnMAvSlWPpmMzkpKnjoeYqZLrMNHvLe4LcMk0uXOq0eSc/07CIrzTHImUebhk/U
	 +8+ona4wThTDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C4BCCD1AF
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176107799362.11947.6166123853908362432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f4317c4acc6a97649a4b8b68595d44001e038f0526559cf4f14ba9fcf8077b7
Date: Tue, 21 Oct 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761077993
