Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F17A41FC8
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 00:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771632294; cv=none; b=B82OYFWd4KuQG3z7yrILAxyzssh0vCaY0oveQVIrOBWFAc74FQZ4MV4qZ2K8a4FNorftgJRtw+TIyfanUwm6YDZIhYvr2kIyrIUKKt4kMKocwXXc+cYfECokCa8pekML+PE0oebmZbV2xED6qAXd6LIpDucdpUHP+7L8dHOakTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771632294; c=relaxed/simple;
	bh=vZt2oNjVxKWzAE7w+QIDk3B8/AmSltpm7EjaZj6FqbQ=;
	h=To:Subject:From:Message-Id:Date; b=iyddmmStPBfsseM9vzmvHsAFZ5YXs8zsZGdmUuErvaDrgnnCVrIA1D+ln1ye3eRDal5ifDnbsxv6VQlF4h2NqOSUGV2xrrLIx88p5bTZ5GBosTKkzFtj7vO11gBXJf+TAMcfq7/WxqIzijN34QPM2ejO+2f9o8koiSLKlrw4aD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nQF+VtwS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nQF+VtwS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29F1C116C6
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 00:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771632293;
	bh=vZt2oNjVxKWzAE7w+QIDk3B8/AmSltpm7EjaZj6FqbQ=;
	h=To:Subject:From:Date:From;
	b=nQF+VtwSdZSG49lTtl4+H61aPEH7tQcQeuiJ5UiiNElaT7m7dwa1+zVLjsd1py5mp
	 2HkT2Q/nKTtQZKM39KeCIbUgZXg2uS1bXJ3ZHXLqxGjxx9mG2520Dx87wjprGlx2xD
	 yRct1C0oViolKCwGIYCRumo/mNqTxdQ7qwGlrV+gieac7kgll7t9JcWWsjar/wgs8/
	 0+2blF/+j7Z7t8ph+pJoQt3qL6GBjaprRs6nQcT8VeIK0ZpGdyfR6BoUoB9QXVHTxs
	 IVi1tzLhTLss6SHu6dEheG9ym8lNcPu6v7NJR8sRMI2RvL/7K1ymoH3YBkACOicZEc
	 ZzLpPO2ycHOig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AF0C5DF68
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 00:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177163229358.13473.7411874559037319738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3034e7f2952d233758abf18de282f08f9b9595b8f0a01d34ce930ad4c716403
Date: Sat, 21 Feb 2026 00:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771632293
