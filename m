Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2957013D538
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723437354; cv=none; b=SLSDNeqLoNUlsOJ0XVNxZZ6898Cp1aVBj4AC6Uy5iXILCMFxMQrugy+U0vlWEHQnCqoysoQCBfnqk69mIKIZkvjCOVN3AEfRcXjG/9ETXCg3UzGQtSV2Z8QSawJ5/zwKVjsHTOAqXGX7vht5PMQeBGuO2gNUdbM0agSH1Vf76sg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723437354; c=relaxed/simple;
	bh=0ss6llyXi8LCHEl3ZrUW40WrtRtweikFN7Z17lqzFao=;
	h=To:Subject:From:Message-Id:Date; b=DUVZELSQ8k1POt42zlK0//ptsIj6RlkooKxwbNVHFdd09/0M2Lf19PRe1wQsva2Flg2POXCmXk/2V0PsUMxNtXhv3jd3gccLjB9WnW2M+1XSjG+pB1Hg5rEESMPU0xqckVKHmMfxLpnnqAduOmiZoGiqWiieSs7dHKDquAk9MsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P1EqenMl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P1EqenMl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0087C32782
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723437353;
	bh=0ss6llyXi8LCHEl3ZrUW40WrtRtweikFN7Z17lqzFao=;
	h=To:Subject:From:Date:From;
	b=P1EqenMl3zvtXPjJx4fnlSGzht+szSJhtcqMKSRPqNhgf7/RQrtcem3NaCQSU7SXV
	 yYJdyULuNgjf9CNhKANwAVFZ01aJ6b8nTuhR+E4prGOCJLf4uOocQRn/IwLLj/IQ4Q
	 n83iq15x+XLK11Bu1j/Kby/LfYz2ox3FJ6kPg17q3BsV92txUgHx1cq6gcDjZT/Hui
	 N0Bwa7X8z+NZQF5MhTktt5vZMVyyI/HO25XFVCnUFtKjAivhd3i2VhIiNF8gmJy+u1
	 PDHx/d27Bj8vl7H8vXJlXVZV9W8LvmKgaPJKQF4FwIGtaX1AfYgC/RlghJyHzBQEEw
	 Mqbiq7fcgEJwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F897C3DA7F
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172343735361.26262.8948419869794362123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6e2979291b29f137fc93f9ca523b4f6e6fa677eb67a07cdc3fbcec32e205ba1
Date: Mon, 12 Aug 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723437353
