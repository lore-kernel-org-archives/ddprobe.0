Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C5EE155A5D
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 03:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767325434; cv=none; b=RH7HE0EelPvilM2t5iUYz5L9WRt4NghS9OIyRlDVEghQVtk+8TjxSSXYMj79rVbLGkHnd6ZrLQWnDPNjsVu7LOhdoeGp8EVqPsLinOySFzPaJVYyrv0DM3wjSMXCQehjB/EOym9nTC1Ba+uzOgoTpyos28OtMH+QGUAlbybExCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767325434; c=relaxed/simple;
	bh=QtvkUpPukQ8KVRHtk3pRFz7Jc9jgLSr1jCRCWPKjpTQ=;
	h=To:Subject:From:Message-Id:Date; b=PZSN57vxBj4QTY1X6CIdMTZDrvXXUjyOjoh3Fk/i2jP2w3hCaviu5PItOyKQ9E8Ide6MFRNmcV1yxzy3NeIFpmiDgoGhvWUvslxT7NenjTGIC64iVjXRYDjThtgPZNT4B1PqYCLQRvQFSyaGkQBaUXCz6LNvSOQekLGtLrRA9qQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NYmOLeWj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NYmOLeWj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A380AC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 03:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767325433;
	bh=QtvkUpPukQ8KVRHtk3pRFz7Jc9jgLSr1jCRCWPKjpTQ=;
	h=To:Subject:From:Date:From;
	b=NYmOLeWjO5buGz+4AgNYXyXEwfCqcGlAwrK7Wn3NpJktiRc66jXO86tEWTlf0uHhw
	 Ac2r5eKoOlC7yNjQ4wsgZXPoSl4R+O6i6ec+NUUXsaTumhZoLMvDm2OOO3G07/KQQ1
	 qv6RqZFfMIISS2WQVW4micqV1v381e/ZsbpArxQYtNW+YfIe+fXrU5rSb909MICiep
	 BZhSIQ4ZnRD7gv0SNQqnuJICVCmq9C8EHa8JOeBKROGtejMFrpTc1QkIqBOTXPtLD2
	 yUwQMZ+vgmcFj3qGwmjFQXT9I+oUja7vIIPWr2/XNv70ii8DbihvHaUNgGe0g9ACUH
	 BjocEBGHpJ03Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962C5E9410B
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 03:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176732543358.27008.1423214642444125523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c886c96b64c4afcbe23eab0f7558fd222c89f53a510dda7b7c347dbee173118
Date: Fri, 02 Jan 2026 03:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767325433
