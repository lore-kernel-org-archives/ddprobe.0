Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DEBE70809
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 02:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781405794; cv=none; b=m7L3dC7Ygpu9yk0jPMsfE3LFG6TIsYBjIKK8zldsT0Ept27dP40N1aynNpmBkXYGPspP0VeTT1Bmtv2cEYIe0lfNp1Kw58ZDDzkpFZDE3l6WVFXVnmv1rsO9VPC1dbKvLUsJ3gfZhO3Td8N4P+ItI1dZcTsYKeuI+sP4ShRPfiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781405794; c=relaxed/simple;
	bh=AahvPwjFmLP2ZaZx02iA84TDGif8XIyfQb5/55pxPoA=;
	h=To:Subject:From:Message-Id:Date; b=NCWd00bpf4g4Dl57FMYtQRV0k7/JxZOHrSVq7QyJE9M8PKD0SGcUl4M4OZm7vaoaejA4igbeXo1ap3YxXHunBysLdiLKi3fG75ekUc74WvWms3K7aMUfq2+Z140avbcpoDvHBLDKyftJw6Yc5YqasBkHPb6BuQotzVxIu/D7jUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b2zEDoft; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b2zEDoft"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB8C5C19425
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 02:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781405793;
	bh=AahvPwjFmLP2ZaZx02iA84TDGif8XIyfQb5/55pxPoA=;
	h=To:Subject:From:Date:From;
	b=b2zEDoftaFKQM8qo33EHtp3MYAyxgi4V3QPTG5BBMo71X6TNg2agt5kEA9d8EClIR
	 7PpydGQDoGoPtKChYFywuafx0TVIAIIoz6Ori45I88cJ0mv+eikelQwRoPx0ESrW65
	 ojBhWl4c/kTZWGiXpHNzMW3ifzSX7U10X9ZAM0akvfhtObjbG9jrwI6sfECQy3g53P
	 lcpq0kRQp/x4s1c2Z9aJ05IT+BLwvAJZbaxfUiQWTaLGyarxY0j7S3KvIvxrM9z161
	 yEbci5UmUy2sL5n+F2bkchkGHw4HRARFVBwur0JK7RMfKjbUdBtfrnYrRGyljTHeo/
	 QB5zIkB0vjPWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEDCFCD98D2
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 02:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178140579368.15502.8642482922352171112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ac03bbed6ff2171d2699362241bb6a37d5d7d8b4da52ecc0253b0330538ba7e
Date: Sun, 14 Jun 2026 02:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781405793
