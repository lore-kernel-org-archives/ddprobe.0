Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1647033985
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728364554; cv=none; b=QrtknRj7rV9V025QaZFFPgesiQmZPuTPC1Jr51E5dH7dtibDq9y5MI3B8AzUrQq37/mizfnwNqEKwZESxb+yMKw2+qH5KQaeSxbYghrtNrn5PwP6kSxgcrAhNlI1YIHmpgyYpePLRQASpaBm/N5V49kFfy6frGodeMOjVBb7KM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728364554; c=relaxed/simple;
	bh=zSTmQv3jed+G5fwVteP/r6GpZZoKewE5iiKwMO9fMP0=;
	h=To:Subject:From:Message-Id:Date; b=JmLjlYixsUyyV2lJy7nT1UYQVHi9fI0o0shLjOqLKqWD5I8cZ8mPDstugEvxoYkqJd/cEIPcyEpesghWvo00QJQq8tdQpr2fEhzuT5Ww58t6iUFBaM3BacHCdw3AjKGZMDsPwoFKo+gmOxf4Xsy5PdNlpe2NY8GpsMOF8gxVZd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ye+qS0v+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ye+qS0v+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A3EC4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728364553;
	bh=zSTmQv3jed+G5fwVteP/r6GpZZoKewE5iiKwMO9fMP0=;
	h=To:Subject:From:Date:From;
	b=Ye+qS0v+Z++liwe2ezSiosmMvoYK8Sno+4UkXkCQckad6gZhkf9DmWqiaN8K8/YQE
	 VI/f5Obj4j8d2eFOuhRpSTchfO/kfpq6cfW0lWzOXE+/ix4S6OKCpkzNTiZq36lnZW
	 YWhhiujT71O7uKkc1mBk/OeDeXkLEl8MAqxTpG1R0gSgRuDp52T3VX9LdZ2U8J1hrR
	 RFtHM6Y7K1H5txWdX56v78UBemXSKxxLbHzmutE3bqFk0/Zsh1oLyld+bSUzAM+E+B
	 ksR2k0VqhyvZwWfW1a0Jy2hhy2zF2yQpZMW3EWaHlwI0rA7Ta1BQjatDLN8v5jUu8n
	 iLGVIZfbs0mpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E60CED266
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172836455359.8634.16826099720791306082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be75a4c9c4254e6083c456fc25641f799fe9f02436c9d1f3d1ec18d383146250
Date: Tue, 08 Oct 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728364553
