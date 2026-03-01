Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1997C301472
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 22:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772402694; cv=none; b=AAgK+MEfUZ8rcR7jmWiYbcz6WICEJjA2TSZSVWPSs2tLOCMylOnDpiPoeTh7XXrf+I35wNi5Ho+uVeiJ1qzVPPxnNS4bMz/WiTeaGgMJM50Z47+cMzhNESKsLfOTgPtAl5EPJLp+0t2ZnjW7dr92JT9ZMlgaZdS/0M5WyAG+Xo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772402694; c=relaxed/simple;
	bh=Kaz7rq97fddKCT28hlvxX5lJlYCnyPMnP3rO9kp7gow=;
	h=To:Subject:From:Message-Id:Date; b=sKN1Ww/U0UU1XSXbZvjas9D/CnFISodgN54HapblkjBRuHewCLzm5numY7jtiQCLXZ3lRg7Azwswv6fR/zPkCtXJtfMDBC1KiDYBvJV4nLcCoPfws+hlUs2h5AQf8dYHNnrGYNvmLVhgGwOo/eZG897qz5t0dnLi9NVbpAvt3uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pQNwFhtA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pQNwFhtA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCC0EC116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 22:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772402693;
	bh=Kaz7rq97fddKCT28hlvxX5lJlYCnyPMnP3rO9kp7gow=;
	h=To:Subject:From:Date:From;
	b=pQNwFhtAYplhtFGbbn0D39RKdRaG9EHlKGkpKrRXsGuLAw6nCs0IGiP9krOEDfhkh
	 yub6x/MXIgbf6qICsxr9lJyucDlbcdbwpdittAuiOmSgsaSGG1PbFUFrf3ZV06+dIg
	 2aH2jABnwM3RHUjkUS0NqpdeWyRuQkkwYlH5zjQgp9F1bKfvt42rnyw2LCgmqjGSrf
	 3VLrJlYymjqLiyjgovZ9fuQ/aYJQpoMQbpTT1KBnk4oL35U1uw12Yr/M6SVbprtXNW
	 yEOtsTc/kL7isn+kvEKwZlqgUBi+Yx2UlTBbwdFnS5b1CV4B7auoCBWoE2e3Zks8gJ
	 Cqco/RPESFt5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FFC6FD0079
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 22:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177240269362.12456.15472812675305848188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bafc0fff69f7b5e0abb895be69c4309268fd914a98c990da59b3032071952991
Date: Sun, 01 Mar 2026 22:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772402693
