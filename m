Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5667E3E451B
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785153634; cv=none; b=oi3LFVVrvtFP4sbQxl5aeKEC6jjdcXYjy9ERj2DVM6k+Mc3/68p4O91yZKfvhPIWJt+scizT6bJCn0IWK8RrkhjTVsqQKOcmDNYlbzQJrAK+WqnetGfFbi2a5oAB/L/6MZQldpeHbcjDh//wyzoCHkEYu0W5HOWJVrO5FU3L4yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785153634; c=relaxed/simple;
	bh=JI0H2NRKI+bdHxfAT+bORag9wBO1KAALB9xTM+F6y4E=;
	h=To:Subject:From:Message-Id:Date; b=EsxrY31qqMSUa5EbSx6FIJynYn7ecdtuWYhUbin1ArMXi1WgbvaveOLFCWvPz5QE1XeSqkFrT6bDss8fS1En7WC37GC4dz1265DnFruczRAs27liFxNUM39Nz5s/jWIkYx7IbM7DwDmOvSOtsmsB4EIk+mnI9tr+GyRf9n7mjAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SXl5j3li; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SXl5j3li"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9D1FC2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785153633;
	bh=JI0H2NRKI+bdHxfAT+bORag9wBO1KAALB9xTM+F6y4E=;
	h=To:Subject:From:Date:From;
	b=SXl5j3liXG54FuQtgzPmdd59//yLYNpQS2COCgDjXfv2YrgGGXa9oCQxZueSP5zEz
	 Gq/3v9N622bKhb6m8TvvZ2v7hhyU2+OzUWG8oBgp++EyDd5GrPJSslDdtKLo2Vea7E
	 NzyLVnuqL+yRE4Y37tWtpEqs7GU3h0AslCtIgTR/irxl0WUVXF8iltjivXFKuCGwds
	 aOt2V2bXocv+fZuWfK0JrRh3FKkpMRxPNuzih5T0uq3Mlpjv/Es6C28qF3Abe4SLyC
	 uZDmtau/KnG08lwUpI2PcqjQp1FM1bPOfa+gNMSBFZBcd/Q5qZYs/NTfhjqGovJayP
	 3uImFMfHMoDtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B68E5C531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178515363373.5063.14991819989643537463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90fe07f5ce80b38ff8e4d5144ef20e293284b55d1d8146340337a90b468a6750
Date: Mon, 27 Jul 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785153633
