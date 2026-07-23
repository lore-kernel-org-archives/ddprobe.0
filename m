Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F70738E100
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784850634; cv=none; b=oTjZwGvJ1p1dj4kJAoOA22yh0vIQAAb5iAHiHCBncUve9hlu2IPc82L3bAaqdxV8uJKF7CzsqLyiCpfg4hlfuBlkuVyjy7Nq2CC43Kf6uJzJl76qKC9/vOKjlijsbiHpQNjx6vJeNlPB/e+SSi3YJ0LIAhzxXO3+8+tiNTZ/FO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784850634; c=relaxed/simple;
	bh=kYjVLXL8/73bnRq86VdNeGfxai6H9nRL6olp9nLB/DI=;
	h=To:Subject:From:Message-Id:Date; b=RNYVV4P8OabmbuGqgrMIrnWy/EQtoq93XCJz10eho+yBO19pOhtiQhtw8cKJX7znjfER7I1HXaxHJdV7SRiDerIcRpupWt2S5UqX8li6H1OuaOBxdQ8e/IUI/OvqBwhqKggDWYH4dnFFoaZMUr724pNwpz0gkfg2HwZXZfpKm1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ndDaXeoR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ndDaXeoR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F24C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784850633;
	bh=kYjVLXL8/73bnRq86VdNeGfxai6H9nRL6olp9nLB/DI=;
	h=To:Subject:From:Date:From;
	b=ndDaXeoR5+EmcpW7w675rXFeckLYYhkhko261Sq/iyXVp6yEVJ+SVo1vpO2R2Xyrf
	 wsBubRjeTVx41Yr/KFEI2aEM0OZHK0iVTsmi2M9uNJ9ISY4gutR4h34COv5m29LBI+
	 loprSGWjG266OUDBg9eboq5mnfd575PsoRtKzSAHcjQrMtrF1GmBMftbMsQBghKaCN
	 mHl95Ykm6QI6pCWrUftpqNHJGQhLgMmnCT63oNrnZ3q6UlqRba5e2lBukSo97iRfuz
	 L4tIqZcWmc55L9SpPi/rsyl4gqQNdIXJB1CRqFO9o5RX6mk23zeqeAtl2EzEQPy4po
	 duBL2eEDhnGlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B13EDC531D0
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178485063369.14259.4120671047072977999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 681284e4c59f0dfb511623e5565548125f57582e678a01ea2fd0236782bcb8df
Date: Thu, 23 Jul 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784850633
