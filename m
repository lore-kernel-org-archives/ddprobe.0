Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36EA0238D54
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789326634; cv=none; b=fk/wrOlC5Aa3dDC8zkNx+Uy5depKgkqyBifhWzDpWNauJTg2ycke+BWcruk31LSz8KBWKpaTfU7KDQnwvwJTHE+0Ea3h5sg9hhQ0fxZb8OVU7e9wdUDvQwJi2hYAtF0K3eG/27yXgnZia9cZIdeH2NaTJsBfZXeXOuyyFcAPris=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789326634; c=relaxed/simple;
	bh=082RzOWvZibIePDluL4qdJ7lFUJKM+w/yey8qnJDcUA=;
	h=To:Subject:From:Message-Id:Date; b=tOKB7Jd9OdCeT9G0YKE2zfeWzNCdR3stGWwrii0/19JUIyk5GiVQnerstZfcuw+4gbzC0lEtfPdShsHc1m1XEX/J+ZmrXCSkQyuBQ5uWiDD1Iw6OIR77SyMsBTINyUkc7maC5s+ia9/nr6toREH/z4N1fKQusomH5ypEML5Bma0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vHzLd4Mq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vHzLd4Mq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8D8BC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789326633;
	bh=082RzOWvZibIePDluL4qdJ7lFUJKM+w/yey8qnJDcUA=;
	h=To:Subject:From:Date:From;
	b=vHzLd4MqXeB9PDleZY/QfeQn196Pwg/HbzeA4NbZLB6T1j74k6A8DaUPjUaqrValw
	 LfQTUyDeP+ecoTs+SKR1I+YNiaZvV63TxsJoGVJYiCFEvFSGXcZV5Y/zuQcFSmtd3o
	 lwk2RgBBS5KxSuzJH1HXDr5CHssdGl8pkFD+OrLrXIKwl0KlWrVGj8j8eAfPehQhZe
	 FZg/pk/4YshpoOM0B1dLnPBf7H9jlrdEJ1LSm/Hp9XJO4c8qTZeyM7irY2FboV7REe
	 iZ19dE4Fi5bhhqDM6jM/wC8P+8aZ2KEyPCoxhSW9SsS6FhodzANQFS7MV3htnEtmRw
	 193j4m93JC9Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC18C88E63
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178932663368.29447.1223375869807481267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b22e8875ce9e7dc5747ea71965cf87040e9d76cfaea06c00a8772f48473f5c6
Date: Sun, 13 Sep 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789326633
