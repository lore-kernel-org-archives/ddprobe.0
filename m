Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 662511A0B15
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 07:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781679994; cv=none; b=BLD8rXNVnMykdwxKXiI+zvdnulrO9v2nUVRxPrw87WTCZCywiByBoxwrpOz04ULWkcj4E2DjFfCahydNkURIP0PoIVJ0zrxVG+enGCZ3zxgbjFTFsxniSXsUkLPGmSs4NfZKCOyq813uJwFtn1z4va2F/gVcexa9LfEfUT4ctOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781679994; c=relaxed/simple;
	bh=Qh1FXaob82MdWEPyQMp0pPqkaR7zoPKqk4RsDVHZiio=;
	h=To:Subject:From:Message-Id:Date; b=KPXAI/GC0Ms/NtCkYxXLSO4/zBijvqUm4QGLnZbgJWKjl5yo5wlbEHJ/kw5p3LEv9DHvM2Pnl8OotyHAMxFZUdQgd82cBtNtAunEHe7wOSEJfWbWkNlA5J3B0eIzkpn3W0GOHyVJhP9wOFR8sTJ41BqOpcS5WUyqN2JOoxKIzdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C1cERxhx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C1cERxhx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE79EC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 07:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781679994;
	bh=Qh1FXaob82MdWEPyQMp0pPqkaR7zoPKqk4RsDVHZiio=;
	h=To:Subject:From:Date:From;
	b=C1cERxhxh7wtDIsfVq2cPm/pbtHK7gCCPryorRgVXRv46hcotxGl/jOw3EkrNAxHI
	 3N8G7gsKCmkoFEdoLhshYZ/guioQco//LRt1CZmrLNaUUTTYfwlEym9y010Ov1no0C
	 sQ6nZlPmd30qUxqXoxGU559msNHpjB2eofDQ8VODzYQfkyoKm28RPbI0Dilo8nIG0b
	 wIsrltnxJDp5Fm5PyUIWrkbB9ABtTLcx8AAPK0JqIF3ftHSxQuY+XlqeJjWCJKbBJz
	 kWnK2DZKLd//PqaWhH0JsW3dB7bgNONYoEZ+VhiiVzI3woh5BWGzSkIhXnf/VWLFJy
	 /sCQAZ7JV7huQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFE13CD98EE
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 07:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178167999376.5133.3546162987936534828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efa345959413176cc432f46e265696ac8f95786b1f3a05fc1f9027049ef69fb8
Date: Wed, 17 Jun 2026 07:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781679993
