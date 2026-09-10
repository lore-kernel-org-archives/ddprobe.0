Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D5A137F330
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789056634; cv=none; b=mlzvi4tiKht+VnNsh9L7cggiRV/jxYjwge2L/9UY/Q3vEGxOmfPm/y7RjC2CwPi5C2UT4Il7ZkONT/Akjt4ohvcn0+YWrVxZMdLV1g/y05U1KLrWIx2cxyN5vHG0xR0EBsmYEqFtdWyiAvf+ip3wFmSnjAyjEVmsyee3cgANXcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789056634; c=relaxed/simple;
	bh=94v1x9v1wxTewtUc961Ka+UuPDIOEklsQLZc1jkoYkw=;
	h=To:Subject:From:Message-Id:Date; b=h7tWaLcwcnV82Vm03KKSUJrkzl2sSRGFemiyeVgS7+1dA601ZzLzy7t2e4L9ojwiNVM2i82eGDu3agsR1Xc0hl4XmksEUtTKK5NS5s9uPemWGExCROxfvOTuGSOFLOv7AItOxF3xZvMzYzrqqObIAYz8f07R9lsBMA3mV2gnXPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ABMWHF5m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ABMWHF5m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D34BEC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789056633;
	bh=94v1x9v1wxTewtUc961Ka+UuPDIOEklsQLZc1jkoYkw=;
	h=To:Subject:From:Date:From;
	b=ABMWHF5mylzVGTKfUiBTxDrJzAvf8XoCufpc0oHk42FEURCWUg5OMFtjg0IPEQOrj
	 5J1NV0uflKbJ8K9UmKQvJry5eYtQCHpsemRLan46Jh291UkN3+jNtVda+h1LARHv9Z
	 NO6neBg4D01xucNG+yXo/aYGWL5pgVUhs9e4f9PT7oLpbmj3WkM7AldgBeJQZXjDZ7
	 3aJZPSgNjx6ToSOloFfoRg8LpTVN//VKpcVCeVyQgdTNxhQ1pzebGdf9En7wcSO1iv
	 J/4zfCyL4e3+/57eZYHZNkSsC1bFRfOjBPmv8UY6F/dbrN+1b35QXUnW2ltoMpPBPO
	 +hp4up7f7vQQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2F4C79F9F
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178905663369.5174.7847171868559004768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ae710731fbe9bfe7e875fa7cedba23f65a434323f4e29002200a6aef0a3e18b
Date: Thu, 10 Sep 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789056633
