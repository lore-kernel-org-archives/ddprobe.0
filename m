Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15F27394470
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 09:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777455454; cv=none; b=N5S1OdCZ6xi3T4M9dDPtMDTPmIwYIeohG2wiS4/YpHHA8pd1QcgdJU6XqrZFSrozlCuSmP3/S0RrIdI4Y1LFc58RlkiI9HD3j5kGbDoKU/fjj3+IWN1LUl696ssdJxamKqt5x9/4df9uhl1x6KSKkrqre2dxqwoQ7/0NPHm5/OU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777455454; c=relaxed/simple;
	bh=fXH7XmsZ7yoVnCSjlOf+WsU9cYoCYKTNrqMcbq/jeuI=;
	h=To:Subject:From:Message-Id:Date; b=tmJoCZ2c+EYYCaCzaiSxODfVpWpoil2yAZoPK2syaWK11e8+886+QZK822gle6HVUBVUI5Qmma7nCakovV/jJrpktdHocM2ltlOURcAw9/uP9hF7C1ch5/x1Wtvo5Y67E576wJGZHtnAbcmtaUy5Bh59V52scCDTu+tlgRc7pgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IIt5HRLZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IIt5HRLZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B951EC19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 09:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777455453;
	bh=fXH7XmsZ7yoVnCSjlOf+WsU9cYoCYKTNrqMcbq/jeuI=;
	h=To:Subject:From:Date:From;
	b=IIt5HRLZxMzaLBY2ly6nbYo1Otm1LcSFg8L7ZhmXVj6GMIAJVpK1tY6kZczVPNA7W
	 2RgPDVoL/Sc8bPmR9v5ezZV/GnqCUv1pUtNNXCjNRdeOij6lEi44oCRMPP6QWqISBT
	 OUyF7sl3B0TxUgwd1pU49l+zlXtxiAk6owdTSEzIUPtewd1ay+VkYuRoYgaMONzR7a
	 adZSVZzotYJx5/vjr9DLyGU0IGyodnKxkNz2MdzFfaEtP/gQTXSzGZ0aAH1nQLBpt5
	 M8qvDCfag+IHwap+p54aG4fo6VGZxJ9t77ohLUvefQOGunXlFCqLfaKWY8f//WmH/F
	 rEh0fsvzuaeHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA426FF886D
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 09:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177745545368.2011.8242079032659399653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57b333d048dc6bd77bbee088618dbd852b809b80362684a9d523c452603cd92b
Date: Wed, 29 Apr 2026 09:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777455453
