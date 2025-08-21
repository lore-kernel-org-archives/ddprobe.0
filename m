Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12D892D24A4
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755815394; cv=none; b=d2eqdH/Gw3EUzqUIiTTVcIkFMq/RxGmhJ0ZnYbvz01WhrFgQCahm4QPZ3z6UPuge0HcQ6aWJrh8N2vKa/yVKE2qhEHDjwOjJv1jDIq0xPXc0NWegl4ebqCMVp652VHNvak8hZAQ3g95gz3dhTyC6ER2mrJ88w+V23DU5On/EuhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755815394; c=relaxed/simple;
	bh=3olzFdbNer7wWKfnlFQBXVI19PMJHGHwjd6vspGcboc=;
	h=To:Subject:From:Message-Id:Date; b=f+/EK7sH1FWZg+rqy/7rBAVDC037kqEFOrFYzbXBuLersQUjjieySNkb6ACD2rYO2hgvoETY45022awMqjjQtQdmNg/v80ksR/qJreQsy9qsSotmgdSV0DB6rJLzaVJ6ETvxq3t9m5cUnt7eDWRQNu0hFA4jbN5pMCmf6Ug5+L4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PQ4SQvj4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PQ4SQvj4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07F7C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755815393;
	bh=3olzFdbNer7wWKfnlFQBXVI19PMJHGHwjd6vspGcboc=;
	h=To:Subject:From:Date:From;
	b=PQ4SQvj4BJrCKam46d9RQ1xSun2mqtPO3gLHNfKvxeIDn4RCieThIgyu1NhMPJ7QF
	 T6LDMuo/bKXTMLgMM2AHOn1923vmd7dSFMLm9IWu6aQCV7o5xdh9Yq8jLDuDx+4sBf
	 wEIPB/axI885Cl4Z5ytpOeZrn4TFBnBxk19/T8gRQzsQlw8vDo0aHpEc8IGJ2ObcoK
	 oCaiFSLj6fMBY9+xaS24IQsPpeYs5IH/53mf8prqqVEPqM2PPUCinwuroX5o6IANUw
	 qgh9ds3xzTyIxyU/K9tYFK87p6wgJPTROOvpI7X3EzH20WaTqjpIdkQw+qKuMVXyVQ
	 WWu2w6loIybMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F338CA0EEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175581539357.23622.18402724134811969116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 257cc796f4b2f8c5830ec3871f708b1a29ef6edefcd6fa8a6341e918dbed0682
Date: Thu, 21 Aug 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755815393
