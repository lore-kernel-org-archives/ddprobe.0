Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348593611B
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728253554; cv=none; b=m4f+vEYRP3+oQjnOUBYpnGjoGd0RKqoixbflvCBDanCdIwSOzOwa/FoOZfhFQ8yLwXP/13uH4yJFJSaGsllK18IHNSK2ag8Tgaq/lolnHIIG6dovh1bvayVDYfKwK8bPebDH8S2EKBuePbgy96guIygZnSayRDFLYO/Z4WCgFbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728253554; c=relaxed/simple;
	bh=UAGtqBUkMPYFF59DbMm47ZBeRgTFaOpsrlRUBm/OvN0=;
	h=To:Subject:From:Message-Id:Date; b=huSCvN9b13RfQf1aLv9FiDLTMh3RgsKui291LaTPITBSWppgkboqlnTNp1tdKtLWAhkCUKKyjCvdOmdlcSAalAYRnmNgPoOtij3jn4ZnNGGbTFNfTc7e7v9OgZLCdeEwYUPM1r69hKBUEJai5/IaJteaJgNTUEEAeSWhfd3V47Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WWZxqPZr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WWZxqPZr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8C96C4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728253553;
	bh=UAGtqBUkMPYFF59DbMm47ZBeRgTFaOpsrlRUBm/OvN0=;
	h=To:Subject:From:Date:From;
	b=WWZxqPZr2Oe+1gM/hv4/IJJGNH286UnnhmRE1PWlAdEXXPQo1RbMHdgo84pR+0ti1
	 92aPN3kMCX2hIXD3BmwkoVOZKq6XcZjq62IB+QmxWmcol4cwhOe1gCDKzPyC1L5Oq2
	 jJLV3G8ynk/knTytWSyrG0HmkWfBFMxQ1zdxII7xlGzI2D6tKEZB9lr1hSffMEK56C
	 6K1PtuMQ2LoQj9roUfF85Z4pGZDhxfdyi2YtzKeFgllOUj1gAaRri3mzbuOvCWzmzL
	 PLR9dNK6QXCv7xYgx3XU/TAhcZ6I24ulB7aRU0kevjh5i3ifxixqcKp7a1d9YRaJtc
	 TM1VNBfe4yJvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A31B4CFB43F
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172825355362.21264.11603276738813037150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7eb2a916de7c05f12fe5a15909fc2ed55cf46f52070e6e1fb157bf67f6b0c44
Date: Sun, 06 Oct 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728253553
