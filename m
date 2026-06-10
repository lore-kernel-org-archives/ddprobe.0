Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CDCA33F360
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 23:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781132794; cv=none; b=muN/2jgAusISYb8ISx6ljZwGcrbomDFFufCbxw8xuAwXxjeTipBdW5Du6KFETGpHaYRT0UnvHfru/uhxqelYpSa4rq6bAXFDg9uUQRyFYChc+t4Yk8SmDZWsindNRns43eLDbKeb0gBegEizxXCr+UxxTmjy1l242DJhiiXGO3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781132794; c=relaxed/simple;
	bh=qcmSrtFoG3GUs3XR4SM2kNkSonXOmXq+wPfNhTnIBt8=;
	h=To:Subject:From:Message-Id:Date; b=kJEDwYN6e+o5DnzQsJRgTiAxskQJJ9gUPdljMu3UJDgMlQNGoDwQMbZJkJaKtJGmw6g9rHj/u299OeU6fX5ap0HFhqTYej4S53NMW9cA9U4L0V4/mGiwnn7LsM3RUn1NWPbY5GCo70IhFr7zXidoE82chgDycOa/IV+4K1OqotQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OutYV++G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OutYV++G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4242C19425
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 23:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781132793;
	bh=qcmSrtFoG3GUs3XR4SM2kNkSonXOmXq+wPfNhTnIBt8=;
	h=To:Subject:From:Date:From;
	b=OutYV++GrgDebGX34wEbDDOpOhTJH13FWNLTuWsEj3TjV17GnKTDP9F2utVG1fuYN
	 Cc4vJODdNcdv2ZsZPvAVyFj92P5JOMzUFPLEzCGoZB4BLUu6vz4htOGYkctSA5F+sm
	 2SECNsNO9sXRFck0CoukSccSsgWylaUFZWJ9/G3dnKYuQGVc265WcNVSOnQlDvpFpp
	 f9cREsdRG9e9wYlLUXhvsDUBq5sA5OPcU3yqsL9Fqtl6DWaSzsInEh0OWXEl9TlSOe
	 8UfZxJktGHHyrs6U0mbyKtxKFQvA1ygERFM9sfMrs78rlK5ccDe1+XzMw7TVnwn5nu
	 aDjFSn7W79xNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A65F4CD98C5
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 23:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178113279367.17779.5718035983327528806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3deb816b7c7f2640ddcb3a2ad63ebf430e66779486fe4ab3f2c7254f8121b7f6
Date: Wed, 10 Jun 2026 23:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781132793
