Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 438D2254845
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742903994; cv=none; b=IhsYIyzV5s35PIChnp21SorRTwdTjTMPxGuuscgV0DlYGdlvSz2Qzn0eBBM9ekmVyEAZYns7Azg0itpqfYDU7I7SBZkFpHYbWjhHD3oXShmX91hNGL5/O4vzcoOcRfoTbmoQbVK7a80TwgB/+OqFxTsI5iDYq8VTh/+uEMdugKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742903994; c=relaxed/simple;
	bh=aiASxc24gNvIkCdrZIVZ8wTqbw6aWnZKnuPtHskwMJw=;
	h=To:Subject:From:Message-Id:Date; b=qcXJ6cFr7M6hkuAeLttYMpiXVlhpG7vsYyexOfpX1ZPj9fikWuBRGgS6JJABFMoYUQULg2jZWn4rbRDWrwQXqCF/pZYOATrfLEoObRoHEAcgU5aGLs6S45EZgxUXa09IVts7p7FDuUXPv2aEt1pEgAgQ/bPgkbhZZK5xvfldVcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IVDAeJC2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IVDAeJC2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB435C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742903993;
	bh=aiASxc24gNvIkCdrZIVZ8wTqbw6aWnZKnuPtHskwMJw=;
	h=To:Subject:From:Date:From;
	b=IVDAeJC2YuowQAxpaOLlj9H8ygZRjR+BDr9VYmkMsZDro/Un5apFHXfCKMeb96xmP
	 VNJ5C6Klnh56v+9e1r1PqEl+GAm2hqG8l3fFQx4NCTdkDqK/qfQyH3cUcaJ3Fyworm
	 cZmBzE8Zv1Uoz0GGjy5LW7k3w3xNA7A2ahC5mSswx9wV0ViAG1DJsO5zHxGINgEctX
	 I0WoeXF8rQRtuMOjNjViggeGN1BjA6XojlYMQnIY6EAE/i+xVxLGzN6fk6tRsahEZk
	 f6Wv/QPl5I+3qZEGavMFkh8fTYTaJW8i0rt+tzul7NH3CrW7k1KBDMqOhi0HqajSsx
	 rP6uk436h7FuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4FCC35FFC
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174290399365.3999.11665025844004292589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e9ba29336ecfb4053bd0de8ff7148183750be8093768a5a6d60fb5bc188a2b4
Date: Tue, 25 Mar 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742903993
