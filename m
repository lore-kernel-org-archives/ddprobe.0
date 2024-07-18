Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0A11E4AD
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721322954; cv=none; b=XC0Bs/hRLNtyY9u5y4QOo57REvLZCyiE78ttdkgK6AZYebigvcRrZ6Ddl9RZhIU1D4hqCJ9Tj0R2p+B3n59qjNXtFl8utKDYLFCAjk+WbO7UKFOZrwAqvrl9Ox5uMmIJFigW0CJdT2CPPi5foVrrFQY/ddlTxjCIRfqOjT8ueJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721322954; c=relaxed/simple;
	bh=kBngncMV0CzT415TFmfr6U2nOVKThsha+4OO796mD48=;
	h=To:Subject:From:Message-Id:Date; b=Ym4G9T3Z4I3F5Gm8av4YmKEMtpjxOS61CLXjN7KPtGEv0aamJ6yB0PtEFUUB7KQFkaG0Obfeks1tTqrH25hOys+TXosSOABSslXutj60Is9YTaDcQoHGxVkMp+PgwcPA4+a5y5YiuhIoGvf8HD/bRX4DUdJWMGQmBSRh1GQzvEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y1/ezL7q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y1/ezL7q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5E87C4AF0C
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721322953;
	bh=kBngncMV0CzT415TFmfr6U2nOVKThsha+4OO796mD48=;
	h=To:Subject:From:Date:From;
	b=Y1/ezL7q3S8BbF/qpUtEMWjcyM6qOUxdud9FPZzN6DoLPTK5YD0P5N7qobrIjTO1a
	 5CrdXJrRoR7LXX4xeN05k5vn3T0TnQwU0Kx0VDSymIojSCAR627/7IibQ75PIS94Kx
	 X5P81Iyo3aLqvj4q04mvU5TRoeQLCP7AiUBA+TwW4bu7D+6isfnLv0JYZdnu7GjRX3
	 sf3muUvkd99iGJJUiWBQV2R23lqyn7uhBshHZYWjXCd7m3qdkMGe9GoicB7soeB/VF
	 FuWD8ZW3hA1OmEf53G2CRc4nU2py+/muPg/GJvCnMU0MGV5INBqMT4vfeU34aaBQex
	 goFGIi1BZK7mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F09DC3DA49
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172132295361.17807.2681072169828419063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce557008df16aea2d9814a7e7a2262a0f0d7e7744219c940108ab911468a3912
Date: Thu, 18 Jul 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721322953
