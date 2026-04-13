Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A621383C7F
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 14:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776090454; cv=none; b=FlAgmbKUx9QfKJCztKWy6FO9omzhNTz6SI7/arH81wf8mzcoUjkY083cPFmt5DvyBKGRekmTT6EsOdV104H+6XexOH3HDJ40Z5I2q8jmMDcRlDJ+ntTaskdnwxcsQ2eX/+TNPOKln4EMoc63d/PVlajnoBTzVdepRdNKpQSsoMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776090454; c=relaxed/simple;
	bh=0ZW3w0SYfva8DumUosuKPMpFkU6tEVfwZHO4Gl32U6Q=;
	h=To:Subject:From:Message-Id:Date; b=j8nya/QXNEBk8CBQj8qYfx9OA50X3X5TCMwhuZYk7nBkrMLQDcsn1+pA7XNR1s7LEPY0wfeZcJDFJGPZjfKJkVbmFBtk2GEIhrJUJJVNO/DfCu9p656IjeanxZOcnZerOt6htGg+Tm1tst7PYdmNj+XoVpegWuSqvwjs/P8r0qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dBNVLpWe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dBNVLpWe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8C85C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 14:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776090453;
	bh=0ZW3w0SYfva8DumUosuKPMpFkU6tEVfwZHO4Gl32U6Q=;
	h=To:Subject:From:Date:From;
	b=dBNVLpWeAHl5o9dWOzza6djByTncF8MPh0TFNJv+s1KM+IpSkn0Z2+sNIRLemMkbp
	 CuloUMOcIIosjFHdbjaJnjNc7T4TwwU5RD0hoiZlhYUls0YZz/aYaj8PLdRdXIZ/NX
	 K4uF9oXXM2Y5svZ23HKvSGiL2uWn2q1UlrYfnDQwieJkadS8p7b9YS5ex1Nowk8vsx
	 CTJpKvu+170WyjHNyjbawWfhC6MLg9KGnrsAsPs1wgR5EEcf7XOsy3SS87notj9kd5
	 YBRCTezm+vCeQV1puTE7ToS7dpQi/YrmHmfZD7KUR/T8UDWzHp1mZlvQU4/7WahfPn
	 GIEUX1MoUuFbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7C7F34C59
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 14:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177609045368.12117.7794668223459567040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa864a40c6a24a4f0786576234ed86f50626a147fc2646ae566602c0032d768f
Date: Mon, 13 Apr 2026 14:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776090453
