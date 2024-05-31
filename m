Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267FE256D
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 02:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717124063; cv=none; b=HhBfTMuJiO4xHrauJwGncV8kl/IkWmcYov3VkLuTqD4G90gWCZFpvZpB65nbUh8jBH7rPhxf1dCn3jT5LGs3zeHmypKECh5+A6SqgqQJxDJg6Vvkzz8qCDxuS+AanUqgJc2CdxoEGxtUiOjfgDH7LOqOWDLSLwQrC2uix19dE6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717124063; c=relaxed/simple;
	bh=CnHNYCHrff0fY6VerczOpNgonmqSMCq3LAZRypAQSTw=;
	h=To:Subject:From:Message-Id:Date; b=VlGfAKnwEjUSYcO1hpTQ0q0OQZzlEMqbCNvou/C+YwY0ag3cBGoZ/Tdjzf+8W9wKBKsf27GHxLPGjSyDG37RKuS9g9XhmTzHrBEFNKn7YweK4x3RLV81UsT7EeiCS4uPPQB8r66hJHir6X+J/BSBfFOeOXuP9XtVMpgNGu7HKDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nBPXWLNH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nBPXWLNH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E59C4C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 02:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717124062;
	bh=CnHNYCHrff0fY6VerczOpNgonmqSMCq3LAZRypAQSTw=;
	h=To:Subject:From:Date:From;
	b=nBPXWLNHlPPxDQimvbIunVI9UKqPpUKll9KPxqpVRaQxh87PXsvJI76jMk0x2qZ2u
	 jh88gNfKMk6vYFFZ65D2cUrQrMJI/Bl3vXT+sl9siNsbewNKgt5UJlxjtQfLHFg1VD
	 fMbtbfHdrLEtl20jqVWGBtxCVnl9gW4zCIeECOVstske59Ifi4XcI3n/IJiPoPdLq3
	 tKgB1RUKJMvOs95u4vlzfIkRI6xUCpxhlTfRZRYKbmNdTFaTR64frcgcnlOG56Ums5
	 4H8dowHQ6Y3DM/EaZqRirTp1KxAwmKFUNlLY/jkomCdR4W00D6VlepSoq3OebnR7Mt
	 2YzrxMsXYE9Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD8DCC25B76
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 02:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171712406281.28288.16729392895027958239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beb202f26b03b9a38d166e0fbf10e3a44cf06e7dd818d8dd246ba7e6f93bfea9
Date: Fri, 31 May 2024 02:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717124062
