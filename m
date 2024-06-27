Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 152BA46B83
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 07:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719471863; cv=none; b=X6OndW3CDv5QItNin6C8qStCzkTRrcKbFV023yKP0SeG72cNCnM6CuxrKvfhgx0HfKxpvjjKyRnm7SvbJktLhp2Jnpw14NKyZCTm7ZR6i2bJO805js63mUq7o3m00+cDqTHHeCIrwSTLhfw9zT07MUcp4KF2ZrfIZWN0wdusVB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719471863; c=relaxed/simple;
	bh=CYGKhNYcmvKrcKyIn38adm5fjUWoDBS8jYu5wjlall0=;
	h=To:Subject:From:Message-Id:Date; b=nEAawxgQPwXMnx7cekzScOCt0ec3AcQpMtNANCFardspw/QLMYqFWux69ptGXDoICfJWL0OeTStSFc+EySI+6oUGvcCPpVIFFBGcNGFCXozs4sfCdU2LM/7oeBhFAtIeeqWE5xtQDT3dpf+5VOzLCEC29ATUQZ943wosPWAJLXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M56JSpGr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M56JSpGr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE673C32786
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 07:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719471862;
	bh=CYGKhNYcmvKrcKyIn38adm5fjUWoDBS8jYu5wjlall0=;
	h=To:Subject:From:Date:From;
	b=M56JSpGrldNf30U1d/+19aWYuDkOjuQepLKY5uuoo4Oa0Kfscs9UDp5jDoF4feP97
	 OysID/fxwAD9ZHC0tjSN4+26S+SJdx/dNwRQrJcvsi8uCZRkE54BufUAvCAJEyVLTy
	 m9dxYXX1ZVBL3LiwZI4pGFQ6noSivTKniSBQVRB+KkRYJ64GaTGVD7zrVoteXUqw8s
	 zgJ+z4cpixa42lc5pYMl8IHq43zWV4NMyHBR6mfLl63TbqUu+IR9p9XZ798z5ct+HF
	 ngIJ5kGu9IE2PTABgxeVJqu8EWJnBYz+riJiIKTgs7qpQTevA3o0NF9ix9iHIwYWfH
	 T+BcgBOVC5VOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCB29C2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 07:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171947186282.16041.18347829572345762564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfc91fef4e6d71b9d76cbad7fbb1fada8a42c1c3edd4a5beeddb0946d6a7a085
Date: Thu, 27 Jun 2024 07:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719471862
