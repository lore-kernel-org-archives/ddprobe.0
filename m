Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B8F31E2615
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 23:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736207154; cv=none; b=SLeY7Oa/xzlGAr2ejG4IAf0OCArqu3WmAqZ2iHdVb2qlqUIhlWGV3svv+2ZsEcCNkW76uZXd6Mj0A5skGXmz3iA1wLYUBZn9hqe/YogDGCDkgLTxcyIjcGl+bQIJviN7hH8PTTmu2ciFlF8UI5mCyotbsb1Px/UD1djbdgIq8dw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736207154; c=relaxed/simple;
	bh=ItyhQ7SZEViSWSstC1VuDGEnu1mB/wZyHdbUGZDVZpw=;
	h=To:Subject:From:Message-Id:Date; b=SNcYxTD8k9aME5eTenuLMVYN0Wn6dpvn+hvi/MHZEDT4uSMxXSrRkbOa3jNyShcU9YLHMMWGcMWPHX+slaHwQJw9RYlcSLzDiktXYMxoG65zq5Vzr/4BalDhxah6rXZeNcWaLE87Cv32TP6kF01K73+dLZ2N6p84DVXiaUkrSQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wy1IVSel; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wy1IVSel"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23F0C4CEE0
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736207153;
	bh=ItyhQ7SZEViSWSstC1VuDGEnu1mB/wZyHdbUGZDVZpw=;
	h=To:Subject:From:Date:From;
	b=Wy1IVSeltivpfaltSk204XHl7veRoT2EI+tEMRW0WuTs5cKFtizSU+KjnEqpLxjxV
	 9J79YSao/pPYMPTevwfkhiOeMooxOQqLVIHeE9/Hy9qyy19Q8vZiKeGAs3IEco7Fsd
	 Y0aSfPd/Or6YBNrJmqhOv4tHtEM8cJzxS3S+4zVB4fHUHVcXhuNPUUlHfSQQE0dDTI
	 Zqz8ELvAW27+vGWITvqKTMqdkZBO1BtdtneZ3ml/IxWdHnhTcseJhLJX5kECEZRlyX
	 WDiQaYplTn9YA0vsOZxjJcaykqWTod6cjEcEjXbNZcgRZzYVK2tYxZ8eieTxu+kJoU
	 p89gMJQCT4eVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BEAE77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173620715358.25789.10265658660238963359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c47c45c03474f5592f961948146f394e5df0ef17ee2f817814924998c1e4d1ef
Date: Mon, 06 Jan 2025 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736207153
