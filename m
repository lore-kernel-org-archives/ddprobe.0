Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C62921257E
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757958594; cv=none; b=CtAcgHqacYIVBhz0Fp7hSqqDTjVIiStwRZCbCTpbXdr/PLyvHDDOnyY6ofHjemV81m+lgtnc41Wu0ZhZzXE5p7TGdOQqZvcbs/fDHWw7rKUpH7SJHwwzmUPxEWfUqV466ToFxgdGIKiaHSYFjNdaF8F9la24ZzpDCLYjEwy4hbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757958594; c=relaxed/simple;
	bh=IQaXYojMv6A34aNNvoGqjoc4DrA9Do/rrjhpMM61E+c=;
	h=To:Subject:From:Message-Id:Date; b=fHyhZQ+auyjxsG6boI87l9ZYcogRNOOZUkQhCtem5U2Y1Dx7D3Yg6MUBU9oFkpVWhzrUIOkhuwiJFkI4xGzkh0boFY3gzq/o3S7XYCbYf2QKD5XBNTTHf+VB8gTtitPAGD8wlQCskyKcjM+We5m+5voLdAlFdP5lpaIvXD37xEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VnsCfRkz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VnsCfRkz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5071C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757958593;
	bh=IQaXYojMv6A34aNNvoGqjoc4DrA9Do/rrjhpMM61E+c=;
	h=To:Subject:From:Date:From;
	b=VnsCfRkz9VWBXmQbJQ+Ndx0QKterAFZN7J7Xsdu4g135HQbWKWuG1vLiCHBxByMEr
	 D4mcdH906oOurfCkC/J5k9yIg6A79Eej1C5FQt1Z0RAfrza1SlEHcPGAB6ep5mcmPb
	 BXh1xCq9M+iJvAiNW2Hc6QDo2LCcaovGLUVaV2soYLbzVbr6W9D+0bYPwsTpphImpp
	 EXeUA5ahRylcAKSgCtd5c5lPmVTv2iStVPUPXeD+k6vW6ws5OxhLwF1Eh12eHaKcw8
	 EdWWTeLApmex06Un/MIoD7yp5M5VJPBD2IW6pt51h3D2Rvrj1EL+cPGVZVfQ/jFYW5
	 HT0/q7yAWzhyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F6DCAC597
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175795859360.639.7781398781912030107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eafa330d7aaded1325f1450bbd55c557f5fbdb22d307f3c428171036cdeb833b
Date: Mon, 15 Sep 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757958593
