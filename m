Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6D41B85D5
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727193354; cv=none; b=d7AMpj1jrT+FsurZUZ/YwadhH/Bc9415OnqvLKgLCl9aNTyZ4J2NRpNgwvg9cEmQ8u4D/nnH6YEPCRbd209x8MowlUBIKQuTNUgzilf0WcfGNosH8fGjXCjIQAIrSufBI6ntMFurlWuPbQ+dUzkSduVzRiA5CvXxcfMvLEdFY4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727193354; c=relaxed/simple;
	bh=ZiC7QijaoS6f1r6dGmcNZY3rzpp9dImO6ZhuEl6UXJ0=;
	h=To:Subject:From:Message-Id:Date; b=aXps+uyb0rJ3k5iApaxGl9RYTrgU96i0wLhoiNiDiiBakZLhoNlwXRnDtU2jxox+XWFZtT96AR20MjyHe06o7hG1xS0Iwm4Fai5g2PQ/m0Ciscr/xE2QwduMU4phCvD0lw7uSYxDFmoQN0fuRXEP3gCKjiHKnKZK2woQE5j0AF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JsUZZ08R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JsUZZ08R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2389C4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727193353;
	bh=ZiC7QijaoS6f1r6dGmcNZY3rzpp9dImO6ZhuEl6UXJ0=;
	h=To:Subject:From:Date:From;
	b=JsUZZ08RVnikfmrsGxI+qRyKONRITWy/QJGUZ2ygaibVsnLN6ALOIpEpuJAhX7jrH
	 ZR6JJDXmuMMF2dnYv9J9b06g67I6g0EBNqo9hHnlEvuzn7rw8bmm0whTL4NUM8sCTH
	 OWerAvN1wdnLcHerQGuEOukYel6sruyV9s8uOVbAlfmMRc9IyTr1MyMR467qU6qnSF
	 TGuenLyGoWK2DXvqf1vgeX5ueKjqOrPc+WpqTrE5FAGBqxLt/vcCAtXvteqfT4MzAG
	 y5xCjtUcRSNv4rJtaHXOKGeMP1mujMkT3uaB5ASjuZZ8OwFXYhTPO/QH42fEUFDKOc
	 XBQxPBXz2bloA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CEFCF9C6F
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172719335359.18475.3097828230438820911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c4a7919071672281ee23ba785896c8047cf1bfefb249c79899cfb10d9faebae
Date: Tue, 24 Sep 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727193353
