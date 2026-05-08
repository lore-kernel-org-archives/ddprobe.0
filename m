Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2691B33D511
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 07:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778226454; cv=none; b=u34wzqget7U3xVH1U3F5pU6C8qRjdlrStD5xDO1x+rBGeOxPoR9NFebwKfwXSHmpX63rXobpn7wMJ09cQ4tOO4XychsDtZ+5AQYrE3DCekX8I0ySve9eYiNWGplhcm7xXMb8TxldGFJadQ2OebdVvUHOPcGq27xUkuuuyD40XAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778226454; c=relaxed/simple;
	bh=m3KwcLQWkIHT6i44GkqC8uLckVGaVjdmu0vbvYQIz8s=;
	h=To:Subject:From:Message-Id:Date; b=GPfkZwNEHd3D1kjhGDuhELfrv3Fclba48XJoni1pV521gPdom9f+KFZrpis+PuY6dIhzZu1Hz+5FridpLg4v1mXVc4pkLaHavKpLpc4fhjLQizZIYpO50PWhDH6yoE3dCv8DiEYYwAuM3H5sYCkxryxHgOLsiWkB9qZfsvfeWQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qma0GjrO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qma0GjrO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7588C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 07:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778226453;
	bh=m3KwcLQWkIHT6i44GkqC8uLckVGaVjdmu0vbvYQIz8s=;
	h=To:Subject:From:Date:From;
	b=qma0GjrOz8732P+mqlTbHRCvlIJsvlFg91cqGfmDCImVphT/N28D1NZcjKSeRKL4C
	 SHrwTVuQC6lpm/lF9PGfBtdS+7ACLm5VZf8zZqMbJgWLFvpAc6OwQP/GLX6EzyZRxI
	 uRoRJuWiWJen09aUauSIyUj7zpY2QtmSO+IqMZ2Z1vbCQGFAiRhWz2tDmEhaJYcoGX
	 yXxn0eToC0O910QAcB0ILhLWD8QrvQJsM7ALCLdTfIWed96ZN1gPMzhTqQyuBntl3Z
	 T+6VOCGeKLf/wPHEDNG6ZpplicBUPmoGRsMAijk5Nlvvl5v8fF8HvQrdaVsPbCQVv/
	 AEm98g2yqDcQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD0CCCD342F
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 07:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177822645369.23857.1324324247159648991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b942b0d782c70e68e6f893572bd2670fb2085e4f4aa5147ce5a04d141d27bf7
Date: Fri, 08 May 2026 07:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778226453
