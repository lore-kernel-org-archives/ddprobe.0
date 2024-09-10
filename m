Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 028781922E3
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725986754; cv=none; b=qiElbWb3KJAcfmCk7fJPR1zsLBLny6pRT0YFjIumBkwlzrgQRzhitHreREaX21l+SVUc5G6jOQK5+bHpPlCbBgku+rsFa+HTZTljjYkfa00zevvF9aZc44rlEAfKjJw4v8cOx1IH3eh0OYw+KI/F+EdbkEWdP8DLZJ2tvJHbCU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725986754; c=relaxed/simple;
	bh=CSsywmNv0e/FkYmLYKSDwx+kjCVyacCBwaF/Mspz7HQ=;
	h=To:Subject:From:Message-Id:Date; b=lbCXXlk12p5EfvZ18uKcbcv5Wy5vDougYvGZ39jB24WUMLoRbzP5mnmAcmkZJlIkFqPY+MpSoei1dvgU1+2iwALGBklHaZwMFfJshxsMrTyVN+08iXURyjGSicwGVE2htUzk31neQM/u3vna335Ld17hOT9GmEF7u9j/qZpaE54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pOzBPQsI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pOzBPQsI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2399C4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725986753;
	bh=CSsywmNv0e/FkYmLYKSDwx+kjCVyacCBwaF/Mspz7HQ=;
	h=To:Subject:From:Date:From;
	b=pOzBPQsIlDUsCnPr2G8QH9kJpvv5PfVlXe2TpSQCss+NI2LW9LD3fCrYGJ/KqigUd
	 wGck13ckvjfs7egWvGr3bIfY5PcuugjmMXiPgVGAqxtDWVRLYYbm7ljvdHKRXIUdpe
	 yQx6X7T8FmlQvcF8qZ9j1no/i1LP+eN037AspS9ujHQVpfOxI7sVaGTe5n/Pp9y+2E
	 bR1j96EGZ3u9Y7l+dSfbUdUnIoocEXhJpcttUYT5ZadP/NV4t0JRnrqXKX27Y9ibkW
	 24RKyToIJUWDpovzdX3SFYBVgA1PLadPjyY4mC9Tn4dMgWGfl03rE6fRDJZx91If2D
	 GW8hF6dJIFalw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93467EDE9A3
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172598675359.22453.16656706851540546158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63ad0b1afed8ea47b305fe451ca9a8b03ac9591bbc5416a167be4d4aa0f7e9ba
Date: Tue, 10 Sep 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725986753
