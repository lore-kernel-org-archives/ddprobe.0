Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20068134D4
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747065594; cv=none; b=R8VGgVTHY9fl3FnQepv1f/Yx+Q7mm+U11gy0hp+QJwdemb8kIrUwixcaPtspxd7o82E54vSk5VJQALsXeyYjbBbEyYTgb72JTWLDT05LQ9R5RfNyNFoIPT+nzgrVTplPDz3IMDqzb1jZEs3uEp6UZmsHBhJJFwPVJbyYH1a+7Uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747065594; c=relaxed/simple;
	bh=IVYpx/paV1S0JMskkRxCb6gSADs58IJHbyp7zcOJFoM=;
	h=To:Subject:From:Message-Id:Date; b=adneKfHHcvnV1sWlEc0T72GohBdIGpKkrvKP1ISKiT0/WzqlnGciHFEzqcd8UxP5/G/jc8ugtGg3eEfSvXLs4KTLjaCWTDbm0QVq+EdkSezHMMUz6QgFk+Pc1UX6G46/JbCzODy+fWpRW3W0Cp9zd6/vhaXxOL1V4OQjC9Jx38Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TFfA5VAK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TFfA5VAK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE31C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747065593;
	bh=IVYpx/paV1S0JMskkRxCb6gSADs58IJHbyp7zcOJFoM=;
	h=To:Subject:From:Date:From;
	b=TFfA5VAKhXjvLY77KC6oUdT90xuKR9QOX3mogsFyd6R7lUWcu7vzGn3vNAPSqOY2Z
	 rGtPhhPn7GeHhzClvC7FXPQJ6gPCnzODO7UP8UNTZN4Tia5WJho020E0qualtu9R8L
	 gQadVnj6pdf/diyIdT8oa/4LQbertCVT8Mff5aZNIRlqBtUYqih79vVwVUIHb7R1x6
	 ed6xv71riVPSTMEkytLvFioIxf0xDHv1pxQ4UN1KKOvDc1V9BswcLtI155KZDAIaow
	 shm8AeLHQCAHssXVmCCRfrsC4YOWLawXwt2mV9pbhuwUGRm0tkUivU4nciD4RFk6qa
	 9WargZVqA9NxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F79EC3ABCB
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174706559357.24855.12236430253510389993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ec2a1b292e44265479a18fdaad9ea73dca2236eedbaccf9f317ff3a6179d1aa
Date: Mon, 12 May 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747065593
