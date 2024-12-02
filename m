Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4B12757EA
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733154954; cv=none; b=DzS6YFV0QgNEsKRer5CnK8MxCXHRV3SVY/gD6llO5UMVfcARzF1odigLxndIMbsmiEAljNPM1KXrvDk/hkebaOacnXycZY+iJ39X4K2XD2c6l4dptH1ba/6JFEiYvcRacEoXs1Tf9UTbgxpljjKzxkH9lDEVjLPHhDqrNtWnoTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733154954; c=relaxed/simple;
	bh=Ccvz1uwH7Y+405t23jUfuyzuWgBMGyIs3mufI4wDON0=;
	h=To:Subject:From:Message-Id:Date; b=tQaoEuloMewPG9EVIndwiKSQUaNivzFiTMrYwbClYFfFY0j6C1f7zJisRlsZACE0y2Q3u3Ve5WfLzyBQfOloqpqgyCJsRd/SSzciEpJJ3tRPS0uDF3bb/1qNIYI5CLrEZdXJy2Q5FgTau/9gxKe/mA4ziNCc+LmNF3AUMAngWEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h25uy4PH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h25uy4PH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B370EC4CED1
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733154953;
	bh=Ccvz1uwH7Y+405t23jUfuyzuWgBMGyIs3mufI4wDON0=;
	h=To:Subject:From:Date:From;
	b=h25uy4PH/m9Ww4SvGBelgwMGUXfgKAxVH+0tWrIdrV2xd75GLvhOW1BCUKz/J7EnQ
	 r7z/meiaHRGujG5F8dQ+5UDNxWord2soRkaaFCid9bPJ46/nqY9euP5rQNyQ33N8Gd
	 I2TPXOhwpDmf6QdIdozELFS2WafZWkNxHoddKKdV9QmvQDDlvZJvODbyAQnV1eShUp
	 eQJdaLg/eSyXEIVVG8KNM2wZW9uORR0Pxhkf9IpyapAp33wR5/VGOkEfUNHojKbR3G
	 oYRoEqs4LQV8XrTQ9Fwwd+4sqLpvU7aCMTjVYZTacIDm1Ils/YXEAYNZIDYHVKhH1z
	 S0T3XZYpE68qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0966D7832F
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173315495364.20963.9981213003505504970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ad9286056118e154bb714aafef6b5248e49ac08a0b5f99b3e4f1993b66db8ce
Date: Mon, 02 Dec 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733154953
