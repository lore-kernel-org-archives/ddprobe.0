Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5BC8F6D
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722165354; cv=none; b=td/DrOd//GSDVzfRbEBrNW/pyfVcj/e/5Kep4q3zl4SeEQwMXnXyhomj1fLW19m+i31bBcOpjXapSKcLTBOIT2Ekf2jNmRMVMS0wkiasZ2ly04YQ8Iop3Ojl2QAuCbnP7j7AufgZvxNYOqzw6FOpe/wRKxog32RcKPqf0ARXuFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722165354; c=relaxed/simple;
	bh=yz0aJKDgPKbuhfhHSb0oVcPe+J812xGdIEK28MWajPk=;
	h=To:Subject:From:Message-Id:Date; b=Y5CM5pc4gilHBBzaXFtABfGILnXAfH0JzurC2PvIdNR6azblJgJHCR+oFd8zT6N/QZUN2bk1FaZ7MaLvR5DXsWM3dw8wtZUBN1VIXcWf/46C2DaUSC3QqbN4GzF6wJ7jzBYuHu/8sK69V0YJ9HIqo6jozYP9QJiQVoBMq3Z4qH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rZ6FT33W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rZ6FT33W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B671DC116B1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722165353;
	bh=yz0aJKDgPKbuhfhHSb0oVcPe+J812xGdIEK28MWajPk=;
	h=To:Subject:From:Date:From;
	b=rZ6FT33WCVNwZy/En3rQukVYJ/1HpkhiXMvrbwbyFYILwmST68gL5K/iqzea5zNm9
	 S1ofHAvv5o5er/Bb2ou5FR+w6p4oxdzH5TjMGMTWk6z3a3BDcq85AboMA+m1l53S4p
	 wnq17po1ByO/G8lNUIcPPR6yYjroV3R/uF7HUSkEkdAQd/cVaS4H4W9ESyPehqMPvL
	 99Pzj3nzrb9YVvbKPoyp3J5YQQLMHwx9iggbwYzHyYPLNsJYMAImKSbVGQbDheqJF6
	 TYtQpChZIIZxnZV1ffSxzWEjV0+lG5vaQfLHHSr9LMdXEUMmJiCjO7rHmzROjhvTYH
	 A2P9T17SkbarQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A26DC3DA49
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172216535359.10329.3782868734083821976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: def012a42c579c2ab2c334b82a92311e3420d5626c9d50c9f96e541f54130a1b
Date: Sun, 28 Jul 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722165353
