Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335CC38F244
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 09:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770195834; cv=none; b=QAmYQzrlMO2IUAz3PHu4Ma/pWslYpEX7bGzUIyz0b9zvZTzoV1cyPamDVaDWYKlOfbZHXpjyJrztPKpTufHKo5rMkJNc9OwI5ww9ccr0wQZ2VBqvsMAKmAduk6kVEbtDr8IW+/32jJXvNbeGAU9xvbjSjYLcX2PUMidyBmJTCIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770195834; c=relaxed/simple;
	bh=ua+YOH5hztTxH3ugJGu5xndgq7rOrTlVcfHam/DpFBE=;
	h=To:Subject:From:Message-Id:Date; b=MF+P+lwRxW4zGNSygs+zo8MB7JFFBBAqR8L+giVltecvEIlCcH60fGX6plWUkzr7oGfB0QCjVGAe1DHBhTwBFSs0eFcanWjDDeZWybQjakOwyUDLWFkfoC9qCAEgktjJxzkk2iaOAqevuq+Dy4WMvp9d3L7p7T6UXQS9Qcb+4f0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=enh/5ITA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="enh/5ITA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD7A1C16AAE
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 09:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770195833;
	bh=ua+YOH5hztTxH3ugJGu5xndgq7rOrTlVcfHam/DpFBE=;
	h=To:Subject:From:Date:From;
	b=enh/5ITAk9g7M4KdWKgTQLE1t6sxT718S5H/Q4i+sMCFI5e+xo67WhfK203uwlSHD
	 X+/5VGbnlfnRABHyeuttbVEOSReSNLm6Pf4EcdWX1nAidBNXgaue156aG40l2cGxZ5
	 QujnU4tIYnHm/Y2T8/AO7YvtHkeAO1RDVnPO8AYYwE2/vZSCDbS7lxjuNtv3ILEPJg
	 qmeZLwGgMB8uHVM3rx5P+xyItLhdVLenOB243cC31C70njnT00HZIdiN/Avqo1aA1y
	 JjdS4z1sdrGPC7XyNVdKOyUQzCthMyVtnflhnba5XSU6sZ3w389kr0ywzVOrNLPHQ+
	 qr8mRuDi3Csjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953CDE83EF5
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 09:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177019583360.24152.17607561230208783244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c823aeb0cf14213b4559b75f886c402aff138011ce5fd3605cab890c8071622e
Date: Wed, 04 Feb 2026 09:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770195833
