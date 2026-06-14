Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4572C33F360
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 12:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781440594; cv=none; b=Hve1XvOFOeUH9XCuLfOcsFReEp5kasy8/ThdX/C0pcadkiGo+pf5xYdd5AN4slRthRNY9Fpkmga6QuJiWAuizmD+GWac/oad5ZeTn1jgFZPgOXrJrUXqpbkdiOg76B81mhyAnitsmLPH8An2JyJC6BlsGsmGln8UZRgm38Xz968=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781440594; c=relaxed/simple;
	bh=3/7cZVxIOt1Vqh0OcA6cJK0Vw6g5Go+5rFJKg2KPPQU=;
	h=To:Subject:From:Message-Id:Date; b=n5hLgF+Yu5Lm5QrYgxMdzP2B06HyeHkvP7PsVN1Rei/yYIVxMX1ExXHXZeKQ4Jdp0T2D579TcY/k3FoaLDtShTYbCNgL+G1VIB82oO15t0Q7WwzMLItmTaI08bVFevDznVs0d5Ch8Y/m3osc/i8BBdnOzBlcqUrgbtGQdOSvqq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HRGmqO9g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HRGmqO9g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2513C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 12:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781440593;
	bh=3/7cZVxIOt1Vqh0OcA6cJK0Vw6g5Go+5rFJKg2KPPQU=;
	h=To:Subject:From:Date:From;
	b=HRGmqO9gLzC6dqFJiCFsPPNzcuTmE1q+4+/aTDFOB0YtvrB2+F6iiiyJGczsfTGCN
	 B88W8tWmKP5XugiR6UeaTeng4gTVaZnO5UXtGqJkp0YC/ETjOzCgkUTIRBmCt28Ivm
	 pMfXimdC1iD+1VVSntQEc0cQVtjh2azT18XFRo0Vr/ej6GMpcjabyUgJ42NHoyknXg
	 pocZkiK/TTh0ju4gSfIdCzHxbY76m8w6z+oVkCiwda4mpo1S9rDAeZg0ab2nFdszMg
	 y6KyjD2pejOCRIp1mkDr6WGif9EGpDVm2VUFwUuKV9otdWvLoHqGmHiFdxhSoLC0dw
	 HYj5CJvoBkw1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B363ACD98D2
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 12:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178144059370.13743.6481921647841051815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5447f46d1f555d390b9b1884ec8f5f573f668151f4fa3edfeff97613c27ab542
Date: Sun, 14 Jun 2026 12:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781440593
