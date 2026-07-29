Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7074B2264C0
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785284434; cv=none; b=CFujpqBRC9ZINlnRLfOh/ZjAYZ+x3Ll9tmC4QKeto85tfSmt/OzwhumiZ2AA1fy81aDqpjtPDR6UGTieUF0OvVDULESuCeLOzsdAZwmYrMT85cKNwWSJ/T8cpw5tybsuZxKwKRrsfy7uVJD4jMkwKwozOkjVPcYJGEgUKOKcs18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785284434; c=relaxed/simple;
	bh=r5nd56A8KXJcYVJ2Da9rUffC+kHoSIGiJBm45imDHFc=;
	h=To:Subject:From:Message-Id:Date; b=aprj6/519nfpzHL/VXkphh2b8g51ZzHhahdO1Zq9acwjtOciCo6X42fVZLsoylmUXTTY+z4DPjsq7p1ozIYeqTa6UeFiWfKT9UiExo8uAzE4RIO7av8JLCsI5HXMQNfAaUhWjRtwTFBV8Bij33/42reIgYpxcREmFO6SoHgdt+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rhgRY2KW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rhgRY2KW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7E5CC2BCC6
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785284433;
	bh=r5nd56A8KXJcYVJ2Da9rUffC+kHoSIGiJBm45imDHFc=;
	h=To:Subject:From:Date:From;
	b=rhgRY2KWyHWak8dsRmqUU4Tv3YVkOKDCjLYsKccBkdMRuQqB1jr4nBuIFDUonqd5Z
	 fvEAEB6lMLfa9Xyhfe7Rqt3ffS6hVHFmzt8CaEC+ogJX/XB7PHeQdB0Emei42g91ql
	 PqQ+csq34PTv+Kd4fbvITpeuEWdJDlgPLcjb5mgXJyhY8FUzhOsMva/SjRMmaWEjSw
	 2RoG43pYQ2csRHVX5t+zH9W9sdAFxHimzskPV4WxLLhtdurdyFEQwvlwywrcmQrYnY
	 mNQWLUgh+RzEaY89OG/wqmOrq8EuqpGlgiXNE+JXoRRz+75Jr45kgf/2xbu/8PqbBg
	 8JHIOzWPaNK/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C06F9C53219
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178528443374.6916.9111797719760989185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9af635944cadbcc1f567b53262d03904605411bae4cc6192d806697f53c0f8dd
Date: Wed, 29 Jul 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785284433
