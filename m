Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49A2419D8A8
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757297394; cv=none; b=eG02hEClMo/YQkFsw/VbuDlBxVgpat6rLge3/0TqoJlDq7mdk6imdmdDChWiacrSQ8UPxs988lrkt6xrU0Q9gb90v2BcPjtewMkcStynrEMhn1VANuOLOohbYnaVTBhajK2hNw4y88K7a/shY9kMlTCWD8wZzPO3lUGSksvetho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757297394; c=relaxed/simple;
	bh=YpLYY4Gg0f72raFSKjANX5fohQRloXM7UBJ7vJaSL+o=;
	h=To:Subject:From:Message-Id:Date; b=QEkbFrGXDY7oxk4NbMn7+LrzJ0hc1LtWRVlaghCf7JTfnlUSsgOIyKu3sCn2BwjEQb+zESzCHeDZ9z2EzTl7ueJF0Lk1jy+BWqEmHwXb50DGA1tUwVBJn7nRKNtsH1mLkksrVfsxI1EUWbCckiPPg0Oy1nyCo2uP9FMMRjSaqOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NVzJZnS/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NVzJZnS/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A6BC4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757297393;
	bh=YpLYY4Gg0f72raFSKjANX5fohQRloXM7UBJ7vJaSL+o=;
	h=To:Subject:From:Date:From;
	b=NVzJZnS/pb2gPGPGdpXfZ0Yss5twkwQyNPZ67D5mN/0yoxA/a7VGCUWL3Y+2QeUl4
	 znct7+eYzeYtmW3K29K6mY0ISbGsCOAn+bq8iOXsV4skzqAEOUOPywMav4jUmO2b4+
	 0KXIVZvxgzmTl+fXRazMwvPPf6cqoW86Xe71A9p8l6aGes2eEKeL3i1LdGvKQuSsmz
	 t6gZeRvWoV1IbFOB6KbScMHToT3E74zzKGGBPl3A0TtBIsp1yTE3FtD6vS+o2CWbOq
	 nQrcm1GtSo64ap4vQiN81xAcZKKBqpngygtRKxraFbdXD83AWKJJ33MVgdddmSPWfZ
	 SipT3PhUgmcRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F599CA101F
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175729739357.5018.4942198405101584608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c2cd413046508b6b16e9e6f8d8f7ce97a98c331d8839a7b7ff23dbe4701619e
Date: Mon, 08 Sep 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757297393
