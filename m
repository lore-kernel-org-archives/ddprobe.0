Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46D61169397
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744985994; cv=none; b=jxeChbctFuQriB9WrbqscXdf456Nzi5m1k2uD1bqDq4Wv46ymUuCD/+S0Unqf5x0auYcB0UhPgQeXucnGaxalALZeXAuWGk4AbEbj1ssPiKgamywgJhHK/nP5eEQv6amCVnDE9P/YQ8IpsPiwq55mMAYtc8XIdedR1tag+tWGXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744985994; c=relaxed/simple;
	bh=aR1fwsoKoEJ8NbY0gQetNzkN0+5iPlGckEftvfEC4aY=;
	h=To:Subject:From:Message-Id:Date; b=km+VKwAz+Z6uXihVaOawXItQu2gwNDmlYJyctUCtGyClEhFDQAYSMrZ3j3+ag3phRtp3GaoVe8NQVTh4uoLV8fYujhbcxdyEu1nOTiVGpca2n/ezYBK9at673AspBceJYDvk1d1SVshZBKgnBiq/B/Xe+bvzQKv5MR6DVAR/sDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c8Shvm9F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c8Shvm9F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0C17C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744985993;
	bh=aR1fwsoKoEJ8NbY0gQetNzkN0+5iPlGckEftvfEC4aY=;
	h=To:Subject:From:Date:From;
	b=c8Shvm9FKPjGABY2c0CLkVs4MkDOAg8XmSfWwtZm8zASXouF56ajPsbu29F+mMJwr
	 QGdVoVwMfSEPJjPc432Cdeyi0Yhbb9uKnMavCp9byRynJiYzqut2fnQ6yFNAY2xjcZ
	 qP4LZDNzEHvKEan0J/oC8n8EY1AgJEJZHqcuagDK6MbFBMtp4TStRmBh5JHkAz980e
	 od+gEAtEyLd2PWWXfqI9VBPZmW7ltutvtT5T67jMtx9K+kGRXrxffuEmJy7NaHAD5F
	 id8gsSHWnUePw7BgEIXsNrg6FK5FV/1Fwx/NrXbtjcuL+vYabj9UJVKOCBeFGo3OgC
	 +21t1jlxmj/QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2B94C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174498599364.10708.11803327111250446210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0b748aaffcad7e4ee697d1766b5568ae97689c335ad5c9a819ce80fe5daf39f
Date: Fri, 18 Apr 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744985993
