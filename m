Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BFD82F28E0
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757326195; cv=none; b=TwI5oABMPOEznzk76guc4uxKqaUDI/XFFRO+7R1RiAvJKOoHdM16RKiJO/IqQZ3xR872Q9AjgcDcZtdgkJPdSfFWgmdbNOg4e2Ly1dSSa1Iao8tVkGKzR16eVapuD8fehiW8Np4chHuxFpXP/KPublmjFCN+okg9vk4CCX7RJdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757326195; c=relaxed/simple;
	bh=Be11mqH5lQ6eNI1zzN5vyBTUgwNCy7KxtvHq4eBXqts=;
	h=To:Subject:From:Message-Id:Date; b=juYuhGaUfrrEtVGzTr9vXGBrpecyS6NN102gd5k0IA/EyLJOgCTYMu5TFjJiZPMtagc7VuuFteOXPS/AkmdQONjikGsr4ecJRqEcrDMv6CzsiiBdffrmghHvyBMgL8062RkH+SqItRcY7NFIF1tSgDV1n0cFA6Qe+3RstyXb6PU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OFIy63b8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OFIy63b8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BDAC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757326193;
	bh=Be11mqH5lQ6eNI1zzN5vyBTUgwNCy7KxtvHq4eBXqts=;
	h=To:Subject:From:Date:From;
	b=OFIy63b8ySrn7JaL/d8b//GAHCTaTRLEp90S7uZTSSX93nKwUdCmaBeC8TPMUBhCt
	 tMlHAEfpix4P/NBrXKgWWyU6OihdLoW1kBVDCDp1l9ioH0nhfabVjF1NPo/bRE0f0q
	 MwMT89pHfkAwT7HVfd2EYMiEB9IUte7SmOkN5BfcOQfjgHyT0YyeGzFTDWT+ysdcXZ
	 hXhavWqQXeDjscptPRr5zXmN528Fr0bBU64sJLKfr6xDeErvpv60ylN5FgVYVbR/xn
	 O+Zopw9UiITtzlxS9pdV/5T7zSpWBuQXKkYt3bcskgln5QCRg+/iI4kysPHR0Cz9Gk
	 a8aXsigAqkr6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BA3CAC581
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175732619358.2962.5382230369272711524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13d8e81dcd7c616285623d036debf96054a36245d1f4e8224f962fcc99fb9f2e
Date: Mon, 08 Sep 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757326193
