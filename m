Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BCA72512C8
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 23:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768604634; cv=none; b=WIIyHr1KObPTJEfYuHsBmwKsZXtvnQKJSMO/GkpUDWzXkrwFGKTrqGl96RcrxvMYliNV2fkUqBxrYwpPs6O8kO/Yy2NtF/bsNQGsuYxp3Aw5cXHMq5riJ3fNZ1p+jG+A4ZtN9Qk6tYQMcgpvqGCeBDCPgQCDwZ/Dz5Uxb5BJWEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768604634; c=relaxed/simple;
	bh=FN7uIi4i0TYGrzpRkn3YzkTuSuMIJVor9LgLuaF1TgI=;
	h=To:Subject:From:Message-Id:Date; b=Qw8uf8ul6apWljVM6vhz6XvYKNWTBU97OP+m81DXtNtr0aTk/3aV+JbmnjFioZHPEuWBonemlDmmGnlyu31E2U0yJ5u1nlM95s+JNwHE41F/8kaNw0rqxvf8Zj6a0IiMRJB8cGc8IPlECj5tKbaXze7gDCCUieXWis529/3MpIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MksHqQu/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MksHqQu/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB52C19423
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 23:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768604633;
	bh=FN7uIi4i0TYGrzpRkn3YzkTuSuMIJVor9LgLuaF1TgI=;
	h=To:Subject:From:Date:From;
	b=MksHqQu/eZ8nPZhg/vfd5J5UOZnhGkOb8k9Qh/Va/dFVF6LkhUHpV/plBiURItYAZ
	 o3XAEj4k0GI4YvY1ABdQF9aKQRFpPgBmU4xlcdMzChofOoESTGTDsNnwv8pkar0B3J
	 xI+gKtNqXjofkLOnM75kqXZKoybe4ATtIB7LOA7JQsRXqvWKNB4jX3Y0ePKlps8IMs
	 PfQfthRL5JLmKU6NNBV3xPj9M+etbUFhYMz0IFUXj/byM0H6U/I8H3DOx5KbNfafuY
	 1VeRNShIpBRbUodB5XNwYIkJ7ZinSga9jprGe6U3KSGRQ2vK8zTZcfGGEmoi+X+Tme
	 78pQMaw1G0PFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911BFC9830B
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 23:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176860463358.9158.90511381775058336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 140324a89494831446e6914a663c3792dcf521ab8e33f6eca466d76ee222a91b
Date: Fri, 16 Jan 2026 23:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768604633
