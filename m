Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43D0A42AAF
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724599554; cv=none; b=NwWtRFvkg53HeN+EWLGfPu9pIO7REiGuu+nfWMQjTwlNCYDP9xmE9zktpzGOGUboEwvK89+DdvdDidqhdw6NBaMMZYPmEo901nFfGNlFRFXXABNTD54gLcFaqTEFM35X9hegS56vu8NGZ1/pLVgvFNg8haYND9W0ZHl+E7is+GI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724599554; c=relaxed/simple;
	bh=l5mctFB2pv63CbaIAvPIkdj1smN8xJQZA+cY6Rokanw=;
	h=To:Subject:From:Message-Id:Date; b=XMzMoXCDxGpCltmmy8o5K4+vFBZrIEAYTEGBr0VY/S8Y+7am+H6d6PaSkwRskUe7up5mEFAIUfcLV1FpYsSRywup2QBMmd48eTB66OiMoahNtTJDUgfqpqzcrA225Rzp/1g41Xvb0ICklevga5njh8lGKaq4vsIA4DaeSrNXBlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UZ6/2QrY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UZ6/2QrY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3E0BC32782
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724599553;
	bh=l5mctFB2pv63CbaIAvPIkdj1smN8xJQZA+cY6Rokanw=;
	h=To:Subject:From:Date:From;
	b=UZ6/2QrYG3hhKpMU6aQD7zhIJxcC1C/rBJ6bWMFH4jUFv/FMZmI/9NVtuNxHEG5HY
	 MMGVYpKGbrxUWxJIoEJcNs0KbBET30EhhD07rlxC/LST5Ij0AHzh3mSs/Fz9nw4kO7
	 1hYzjbMZOZn+8m0z4r2V9DvKC/+TZY5l/AIr7u0Lh7esTxSx+KAYa7PEYqQz51cB1F
	 KHwR3hdCeftVrTrdp6Fwg+IXnCfhepjzfzOFmBGTb/k7iLfK8IWOBd2gSSZQs60LQg
	 hKNaCN+8erBYwGvR3pWtS217MVkWqNmJORyWX+MHBjfRO1O6IjS/THGI2Gn5hkK3xn
	 34LGHbOrAg2tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ED92C5321E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172459955361.5279.17113653500865885348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a16c2b4c653cd29733272bdc72c825187c156a7b9f29e5d739141758ec4f8e17
Date: Sun, 25 Aug 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724599553
