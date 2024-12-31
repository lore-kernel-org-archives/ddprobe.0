Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEBF0747F
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735606554; cv=none; b=Itwu4JB+24jTHZhrCkdmdWWuOs4d47D0oFzaF/xTRGUUf4pu1j0KZNvzw8Ym07fSHeCsmRVvtVy5Hr+dq/njTRX3XTnvA0nCl8Pgs5/7NK5iuL7NORJZsYleHVf/F0ncgEZIgZC4pJNMEtq1ypcsjOSHwavJsV8xCtHWVJDFu1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735606554; c=relaxed/simple;
	bh=OFDEfnUTOdxMv1esgIoaZ3nnADUXzGSnyk2qgQJS3+4=;
	h=To:Subject:From:Message-Id:Date; b=JSgN2qwNXQmrtT8ITMvMSHIaIbVOwxx7ccpKhZCneMdlAcqrVZ4IWPm06mwIJPz3w84x8AYGNnssJ9aRwa3RpSOpQlOVui5cOb+m+5HOrl93zxCLuw0j7YE/5AOpbkzFnPinuIBjIBlCXC+yTNspxG8IJQY1HWn2z8zY8S69loY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=coIlx+Tq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="coIlx+Tq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB835C4CED0
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735606553;
	bh=OFDEfnUTOdxMv1esgIoaZ3nnADUXzGSnyk2qgQJS3+4=;
	h=To:Subject:From:Date:From;
	b=coIlx+Tqhog6/1E4ycaXP06heNO1u4lSgmXt3bKe6M+nD7dUii4lJ5CVjJGINkhLL
	 0BnTV0YldQyvv979bBn2OaVtg5aqHGJjO7sgxc2WcW/8eY6c8kSA/NjTYk1ynN6/sS
	 wWDpnkvle5mZoko5oLHDq4tdUJilsIiIAP0sokZKpzzNbpwDuirZVt2LG16ZSCIJle
	 fiGFDW6QiipVJ8eAlRkki0kMcAQkd42gAde/VgnOuk3vySLRtuyPiR07tVLLvwFtgl
	 z/PyLFwy+2kDH090F1AziKTwOk4bzTHI/Du01346nuupOdUQlDYzz4cdxMfls8JYQp
	 Ln5gtCtrKZeuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D1AE77188
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173560655358.26628.4917640403691480526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1580d8b36c10d2a1f94f602942a59f9b15673b955e8742f71ece4f75619a7ea4
Date: Tue, 31 Dec 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735606553
