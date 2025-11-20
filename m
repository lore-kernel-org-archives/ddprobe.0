Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34CC019FA93
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 21:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763675514; cv=none; b=kwodc9FpupdNh9PQK5NMhS5iZdqjwemhgJowRz1c9zdJU2OoRdF7Rui79LZFEA7+OJZN4U2MPaRdVaeLC1QKwpKYN0UhrTp05MJUmoSfWee33n2l6sPBhp9cfARd8lyeCqdjeDZD5i+2AGh3fwhc0YYwczSFYx0w5AFnebxKPU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763675514; c=relaxed/simple;
	bh=PAXbXFKoneC2kGXNbBHdSFFIuqQNoZrULzDjeczvSQI=;
	h=To:Subject:From:Message-Id:Date; b=eiZtl1b+2dK65Jel+hrqVhn0vLnRLUSoOdhosQUVkl6pDyJrWyw9YhFty4onQvZMAHlbjGoojR/VyY2JzH6Czy83qCfA0FwTHNqqV1QFskY0imxPunpvNVBqWvGTWNbuMBGWlA9OSnNGDy+EirPrCxMHm7NG0F+9Vl08oACMeLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bHAcKTxK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bHAcKTxK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE582C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 21:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763675513;
	bh=PAXbXFKoneC2kGXNbBHdSFFIuqQNoZrULzDjeczvSQI=;
	h=To:Subject:From:Date:From;
	b=bHAcKTxKxLe9i1vliTlHq9Y9XpKMsxXIUxbRFWv3keDKFrStXF8UmMoscgW2soCMw
	 cxwER8cqsb2eCn/0pDQoUbMu70i+v3pVcwN9sf/1yQ0VYxB/MmrFD7EMNJUvnjwm8H
	 ++gDfBjEg6ItUOauKI45fd6JXfhg7DB/fxEWYESWsd3WzfZARH9sCuarZoDG4rI9E0
	 7h1DyG+opHyS8SeO2iGVDp/KvafXBi1zpSMQ6UYW/++YPcNp9o8sWTgIVtUHOLr15c
	 DQ+9QyOcmmRfW/Edtt33eMqPK+hZ9ar9g54QN73vV5ix4DJuX5XcMpS4WM+dvHTwna
	 M3VQlBWh+OLfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CD31CFA446
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 21:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176367551362.6769.10757316177312022196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6da231db218bd2b533f3279959e4368e00a3473b4fb2986e18f61b9dd9abc8a4
Date: Thu, 20 Nov 2025 21:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763675513
