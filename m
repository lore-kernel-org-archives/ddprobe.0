Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79D0C4D11D
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 18:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717093463; cv=none; b=d2xh35dI46TTO5R4r1nJTbSsHl1q2zK+bon6VeVR5ErN+R2mAhoDlrM4ivgQhI7kn8YjOcFeOouth7WGCHUfiLKPtw1KvYYSOIZ7tCp/L7SmMh8seb6i/0z/kQTUOudxMmXPmjz4R8EKiHnb8Z3zUGc3OSdgbhwuPYzncifLTFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717093463; c=relaxed/simple;
	bh=kxdU/CTEBCH/Tc4/b716vnfOnLxACTKFmTALbTHym9M=;
	h=To:Subject:From:Message-Id:Date; b=IzVcZ2+7DEpc5g+wWjtHj1P/ZWVxdiSCPuPaaCgH2a9guqj02eYO5RW/SQRmxSI10fQb7h9HAaX2/jbfdrxnl1I0d1L5enOudhmQMO4lndrqt7yoHKiiOqsTCl4jai/ZJ9GpryEOTxebMWx2BaubV0M+D6xyHEWWRxZ29EyFwFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hnfkz3f4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hnfkz3f4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06733C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 18:24:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717093463;
	bh=kxdU/CTEBCH/Tc4/b716vnfOnLxACTKFmTALbTHym9M=;
	h=To:Subject:From:Date:From;
	b=Hnfkz3f4rvBMEmlqSQxvC0W2cva6zeUc/0YMd7e9s+uDTBrM/wUkivRf71TccKPeE
	 b9BzUaAsQmqxl3ODCbr2KTeeEAt7WyFTzDEAqFGx1lv8AdgR+S6h9rIlzqla4QfzRy
	 z5yaf6d0ZPum1Hxta0AB8zT5Goa6toPTcpW1g6nIfhfP34icoBqT3vC4OBSe+tixud
	 HzhjlzTpCuy6R0MXSU1c7oRBu8016voWCltz8W/2MvuxdAalad1tVyicqas1ZCSClQ
	 4XHvtAAfQ0IEvr73nm/ATxVcHRbNYYrypIQOCwNwNr6guKOylNDb1AMh6M4UXaZWIX
	 CJeXrdsPC4xdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA7B9C25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 18:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171709346288.14167.9122776942339148082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45bf723e1a62589e49fd8dc3158314ff5ba6818689d2895fbc45af75ae246e19
Date: Thu, 30 May 2024 18:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717093462
