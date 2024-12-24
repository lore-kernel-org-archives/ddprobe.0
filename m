Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA0CEBE
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735011954; cv=none; b=DswPOkW7WWPFZJzxMbsLTma9ZLDCICxvaYjv6hjE519W5hju7mKI2eW/z0cGBKBgRQl8bQK+fWv0+ybM3JeQFGqc1iJIlZHzUDszoEzyHnPPhvsBGmRzF8sjGqpCFFEhTSelII5sBsP+Qk0cL4r6DvAF6VuZAP/ryMmkF3J8fD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735011954; c=relaxed/simple;
	bh=/SHWA/zP/IbQQrmQxMQ6/a1FaFUUVo35QCtcN/PdgXw=;
	h=To:Subject:From:Message-Id:Date; b=lG08Wgof6raubMGrQgZTttICWZfu0jQ7q7dCc9D38rdVDW3RpEY2sLoxyCByRO445c+IC9O4xlbADo5Cjo0lJkVDUPiy3gAbVNckCGG61mCGawYpEg9juVqSzrgxWGb0GArhpHwSX5KCWDYrrNr0K87NnwHuG2iiX/xB5O9Dmx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SLXVrJM5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SLXVrJM5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B929FC4CED0
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735011953;
	bh=/SHWA/zP/IbQQrmQxMQ6/a1FaFUUVo35QCtcN/PdgXw=;
	h=To:Subject:From:Date:From;
	b=SLXVrJM5jKxTuJgUJk4MTgEI7YQUz6Vnw9S/rVxRW85qFy0bMVN75PgbQvLIJSXX4
	 SOO+dtpGyxfzJlPESklNYAI0OknKwvikvzDD0+5mdsGADYzBf7soWwairJtdfiR7lV
	 HnOWAO3fT/MmnE6PkroDHtq0qbdctVxOQS6axrYtYSj0++OrQ3jBsxpvsMgR7ydnyO
	 9pE7+hbCFsHPh1HL1Xpv2ZhJ7eDi7l3wfXuV6735gaoHGweuiew3IhSDgLdcgvnU6i
	 o6HvtoQAjD6nmINjRGp+W83n0/nBDJSCmr6Sx5vpFgPm65ZRk9VSe0davpY01h9NG+
	 eYdt5Kl4s2QUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A64B7E7718B
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173501195364.1975.8838028272951941088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fcde8ace8f11e489c1efb62524b911599689c5b9e75301d66af2cbf4cdc8ab1
Date: Tue, 24 Dec 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735011953
