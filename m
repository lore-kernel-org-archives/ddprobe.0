Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6604B525D
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 03:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720927823; cv=none; b=gPkP5TL9xx/i0L9EXzQ7Sx8uF+aVLPmsMhXMsSGiZXacdOoxulQ7QWEWOJuNQ+C574HdepWmgxBQ6E2xX4C73czxS5F0wkD5CY0AD1bhBFM7MoZQyXZu30UJ4IsibgolYwoNgBSJgt++h/k4fmc8zjzTHtOwiyH9YqWDBSwHNHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720927823; c=relaxed/simple;
	bh=elvxOhjxyiiOD+09lJpqzaJIxIdTY1FUy3581ZCyL7I=;
	h=To:Subject:From:Message-Id:Date; b=hEpzsLa77snjTVZukw0ClL4g6O/M/A69CM4ciFecqIauJjKNao+hGAc4na/ip5ek0OL3Fou4hJglWjh5WnfX+JaBPZ1Jap6KI71gS3feAtIKURiZoxL/4R34iaZ8F88bOdbLqbu5KTnwu9jJT6cinznweu4PtmSb41Lu4cGhIOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JY/+TYdy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JY/+TYdy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3FD3C4AF0C
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 03:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720927822;
	bh=elvxOhjxyiiOD+09lJpqzaJIxIdTY1FUy3581ZCyL7I=;
	h=To:Subject:From:Date:From;
	b=JY/+TYdyFji1ncsc4Nre40SioNZcwXshFtqy1inn80nkDeaNquKnMSOHScftKwW+J
	 tItt1RtsshBQJpLTJNXuoLUcANHlvkaX5jq4cjweJUaFQWdPMJOpaIab2uqXeoUN+r
	 JrVhZNEubqEM+qr6hX5ruKzMI6LbJ20PdgEXRhz0GyBsAzUGwcKEHEE7TNa6Saa6u6
	 qLpyI1jDloUcpkAJ0XSV+UZnLPIvDSkTZOanweBJsiLoSAjeiNH59A/asnN3QJ3hbo
	 rQ/OQn37adJq8Slpkgjoda3Vuqd9/KqzUhj1sDxt7OW4IAs9YnvKmNj76uwKQO+EPe
	 TLBY7arDe/X7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C02F8C3DA49
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 03:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172092782275.8957.4304415172029961300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac16668f4307b896fb621565dd5137a3c206e87ecfaa90a865ee12e00441e421
Date: Sun, 14 Jul 2024 03:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720927822
