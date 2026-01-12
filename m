Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAA0D340A69
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 08:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768206833; cv=none; b=BI4fG+ajqxSD1bAXv8/eBR3lJJus5oTYrc5VUrhyJflZ+Zyd1B9SBXIHJ3v4Bpl7KxZ8phc0nmtJJeOWWiWQpV9ESZT/d2wS1aKorvs4aOg/LHay9/Cb0tXjJPfS+zaUV3C30pOFxhB52U3ahpd/lYTGsEHLV1rHxx78QAPSz/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768206833; c=relaxed/simple;
	bh=lH1FZHao0R/wo2QcMoxkcNMsTUb+0d05oCd2Riiy3JI=;
	h=To:Subject:From:Message-Id:Date; b=W7zEYuJe49JqGNYyXLnx2JFiUWQM+8tqhjGtZRpjAA9fD195hAO1b/PUkUmGZ3dzzs6fZZIYWL6k25mVW772E1HJk78zcr/AmjrIHSbUJEfzQt2a3IAYwR9I2XWdrr+C1n5oh2XLQSr1S6RkVvKmJqV0dkkXMPWAIDCIJUHtm7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tE4Qzn6m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tE4Qzn6m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D06DC16AAE
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768206833;
	bh=lH1FZHao0R/wo2QcMoxkcNMsTUb+0d05oCd2Riiy3JI=;
	h=To:Subject:From:Date:From;
	b=tE4Qzn6m+uhq01wVyOI3R8G7aZTKq5vbTkEL73BEe9Tzi06ydZI4EpmdUpt9drXQQ
	 PUfu7H5V+HgzVXzbpG6Ywk5B6w2lJTGjpgxeVA+N8b6g/YqoBRq9RPRQTJH/h3HgM2
	 ih4aNA+cJjAmC4nTlteg7A6v2EFxiIG6ZSVU5ATJNy5NVun7F+2/I5dgEl+chVUPVp
	 DN0qzGSEr+Ziiu1BBAmaqwJ3QY75p4aW3QaxVcz2AeueRLTfIW3L4ugjoFCqCNtVT1
	 OKUu9U2GJM3tKRHlDf/C+5F7L3DN2LEUjuwQyO7O5LL2V1GjSGUFIEG3+l9/qogRf2
	 V9cTW09fXnO0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF65D25051
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 08:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176820683358.29447.16941484639572153656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba9e79992638121d4ed5887322a3c231b733f8de9431992ff7fcc49fccbe8f59
Date: Mon, 12 Jan 2026 08:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768206833
