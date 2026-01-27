Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E15331B10D
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 04:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769487234; cv=none; b=k2dXl2B1TVOGrQfbrrA6tMxGJFV1yUtR01v9IpFXEy+X7LefVmSogYxB+aIICR7Z7MwX5VuS0o4HLU7ZFlTo3mVt4F+4J9Un28zypfFwWeCZVr6bp0xI4ZamVeYJGmbix1PT35ho9c8jA64x5LUYoxJteiivTthMr4ksLCQdxzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769487234; c=relaxed/simple;
	bh=mBlEoWU6+inIU8/YhOsdP1cCN0TjQRXRtX68mI9S7uo=;
	h=To:Subject:From:Message-Id:Date; b=R2wG7Q+OkEwZJx3R6EcSwJWDCAkQQOXQ9eLkiTaXlR4UitL8sSZ6J13CbnVzr784HXaiXzpR6+HkImPfwtPsk5lKO5CVlarMfCPE4xj4rwJU8h871FtXaPciHu/lbjpJv8ku8R2hY+JC2SvO9ADdxc1D+mzqlh6RGmS4yzttyX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ll38BsXJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ll38BsXJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A392FC116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 04:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769487233;
	bh=mBlEoWU6+inIU8/YhOsdP1cCN0TjQRXRtX68mI9S7uo=;
	h=To:Subject:From:Date:From;
	b=Ll38BsXJiOIKsj76/x7k/yi/iIWyIxVzPuCUq1NhUfolIkXujkwlfK7KMS04Pe/89
	 csGvlY7AGQ1Q/GQuQKMIZpi3cSVjXhHnLQaB/9y1MTezqzhq0hCCijBQxb6rtip04o
	 5dAWgXvrxxBpIAXJTAekiSugfglKMlVZHDwRMJR7s0/ocW5itItkfJ+OZQ400BViaW
	 Hw8rLXrv3lwQBzbXyzHv709+L1ZH3W+/Svqeqo+7gb2Q816laCl8QClZlX54KlvxPo
	 BaN/IXOYg0sJZcZazllWH/qze9Hldl/vu6+mw4pVucZelTAm54a6ziy1trujupTfbA
	 ZO1r17evb8l2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBC6D2592C
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 04:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176948723358.9153.4254198859641368078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af761af18b4d36ddd6901fc9bf5fce096294665243c76fa5e4721d52a5b928be
Date: Tue, 27 Jan 2026 04:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769487233
