Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DDD1175A87
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 10:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782298054; cv=none; b=r3roDzpf2MUhzptHaCshPbl6ZnVt+VWqiW/8Yr/nltvzhm1ShPP5B9gvKds4fS4xhmlPRNhYUkbUzYvFYLHNjrtoIp/03mPEZNwOtilETNtgXujlSV/bqR64Gt1j+3ZiTqIVewKH0UR//hL12ZP5EPcWSlKabLf/QowxOHUeHD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782298054; c=relaxed/simple;
	bh=ppK8hGDpBBDZzIysQ4INMctTDDoTtl+7lrFwDIVLb7M=;
	h=To:Subject:From:Message-Id:Date; b=P8NbqlL9m0VthwXBBXZTbBs1VkihXqcSNgWHPZMqzffwtKtn7dbP+tmt3iNQe1PDgXf65uG4sZLUdqJOV0yBQrb59AKCRJA9pywBK7j/XuadpTmt9NAcsDnTV7ghbvnigYYQtCvpgUlfC+BAQ5V9NjNoEQnWybXdwi5MikWvD9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BZX5yIpl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BZX5yIpl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4FEAC2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 10:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782298053;
	bh=ppK8hGDpBBDZzIysQ4INMctTDDoTtl+7lrFwDIVLb7M=;
	h=To:Subject:From:Date:From;
	b=BZX5yIpl0QPxT69FLvx7CiJ5oPIWmcDF8CDy3KNxvqEM1okZ3Ooq/ROUrVVrb9hKU
	 /Wcp0ePuSBkiVEE5e2mpKo1U5vA7bgaoBLuc6MvqdPnsj+152I26GVSn2NA7hGjCw4
	 U1v4Scb+mNRC/Zaot/DGZyIpGDU6dJzWIIOhpJ9FvodXqLHEdvIBqRxyChAR8Naiwu
	 sAUU1HAgmL9Yl81p1Oicu3wOwgPavXmEadwbPmKtQbCpx3AGiC+qMFpSfpeGUz38Z5
	 9LWO7KHXW5/WvTk9K/XEanJC5Ja+/1C1iWmtRyZ04e5RfH5dFDt0V/IfblYLnd36zn
	 pt6sdY3jd8rLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F51CDB47C
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 10:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178229805371.13485.8200276547136271536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adb105475bd7eea1781b0f15ca8f09208c16039e6d1c49fc0ec9c3e1215390cb
Date: Wed, 24 Jun 2026 10:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782298053
