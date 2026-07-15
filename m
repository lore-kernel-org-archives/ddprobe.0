Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46E69EAC7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 01:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784080114; cv=none; b=hlfEUC58EhbFoKejTHPa0AC8rV43uhgmPEJrC/V6Kb6FuLSu6kpi+CTW0iqbZENznCOQ8QZk8YWnZp7QBfxqfozLa7HdXxbrUnSUPGo4ddzwM2sI6ac2579UPMPrAqL/l+cG9hYQHwXx1fdop3CL7Bs1Fnr6Z0wOxx0VLRawJIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784080114; c=relaxed/simple;
	bh=fJ32ZDn8ntxT1XPtR5p9I7ho/QnreT3WNM31rULpH/E=;
	h=To:Subject:From:Message-Id:Date; b=B3/Pybjm9KprqJ+8kRQyWJpZGdqeP188Ad5XA0fs9bY/aLPh1WS4CHRKzpsytpc1mCkaqKf2EJIuh8BEyJPECwVI/66sUdaRR0EzRI7t88rIMZz0Brr1nuQEdSghOr5B4tsjUqki935YyXP0OZwDZhp9q0XUGf02QJN8VJPpBUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s2crW0gs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s2crW0gs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1200C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 01:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784080113;
	bh=fJ32ZDn8ntxT1XPtR5p9I7ho/QnreT3WNM31rULpH/E=;
	h=To:Subject:From:Date:From;
	b=s2crW0gsxIIZH10JDFDGj1gTIqVDt7VDkuJoOEA2vMZ0lPE27dehZiiCLzw0lc3Zv
	 DUXBS0/KZhhRkDdyb6fsijGnDtLIaW3rT1Q3M2RX7lq3NX2/r//z/ehaN9KnxpBvK8
	 OGcy0LrVrOsHIb4QzAfwoVV8M44mVSZugZ9HCKbew/7PBHQwxELl/yiHB+MJwf5Mqs
	 FodjoJbRxGaKhyr4w504SnIKj3I0c83yYvo7v/9uQqsGafgx5g7OyM59Z8WCjhKEJL
	 2sZqfJx8EJuFiTewNeMyHUiNv1H5386n6YCJZqOXuj7khCEqwOanV8uViwfdfT9GoD
	 ifGh9Jxh5HqFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB6CC44508
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 01:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178408011368.14441.13538428088917898063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91f8583d12b3fe68c0ae52cd601e1f521bdb0119df82aa790548cc2c4e6028ea
Date: Wed, 15 Jul 2026 01:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784080113
