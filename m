Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319E82DE71D
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752581994; cv=none; b=QprvJo3pmdf/wl2BIq/RzZDqaHSp5XTz0EXul/C0JM5Pwjydg4vIk1JvpE1rkok1CD7Yojq5b1ClodGA/OxfIeRpVCz3/51TnPhwZNs3ceN7t7+t4G2bq0O9bgK8b8sCc00XwdzlJkBxj2SHUO8iYQ5yKNLtflZRgqLii+nONTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752581994; c=relaxed/simple;
	bh=pJ24laQT5mVtLIpm5iBjWcrcymCbfrLvWR5ULq3UDeo=;
	h=To:Subject:From:Message-Id:Date; b=DC3KwO3ybJ5mSoZQiFFmX7iJ1CxNF9qstcLCesti1GAJnDL6Iv9xET4xajtB3nmRDQdCUCcZh/H49TmKbNcUa0s32J0aQbmYEjpaQQV6kqmasaizMaxoY9Vj1E925omc6wSgOSKc2ltHFt3/ZJ/4kQ9F0FEk8LgIIybvETVnFvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ISP6SkFS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ISP6SkFS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22B3C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752581993;
	bh=pJ24laQT5mVtLIpm5iBjWcrcymCbfrLvWR5ULq3UDeo=;
	h=To:Subject:From:Date:From;
	b=ISP6SkFS5mW+BaXqJU4o7AAxmjK+E1e2FXqgt4PX13zBXW3HbhGOmOjZohicQ9WHW
	 zqwbDjRVghBDJCfHO50mSdu355dB/XmvHvXDFeuE7RjiV4J3j+jPV4JouX2yUtk7P0
	 Visq8zWd0k39DMypVq+hfkqCp3Us5FiSXV1IEaWWjfXtLCxV7mJ+9E81UVinwHwYpt
	 9AilnLMkjGtwSUFUEiPY+zCT4eZXbT0e089y3JpcYcp6VVJZXFL6lLzmIeJiTp8ysM
	 nXXSZ2YCvf8mj/opaTHRLko9thlvOyx2s1sd8kQFiJn6lKBXiu4maRAU+VFP48wEVa
	 PCz1Qx7xEDsxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FA2C83F22
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175258199357.30913.3574058647286199109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac08fe76190ed7af90a61db013d4616b3d7d47f471fd415bffced429a1e9372d
Date: Tue, 15 Jul 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752581993
