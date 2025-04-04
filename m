Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A91F19047A
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743805794; cv=none; b=nGWdtIs287T//Jxw8qoOZVG6tq5eGclMGkA1IEoKAovK6zjiC+ViOxnAhufdJ9gG4WlFaXZRE2MLcSLl5NSuYpsNdjuX/Dty+qs3ex4Q+eOkBEG3NiJcl41UhDqMa8wEVdmT77pTWUxZ1EA+HUgD4RTdEDDOEnYQfaKZ5dgz838=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743805794; c=relaxed/simple;
	bh=5ZLHS8ncKSbzDG6JWx5FrXwiK8EqA9Iktmwv7iITo8c=;
	h=To:Subject:From:Message-Id:Date; b=m3wum/OR/WNP7rgSSK6Tsf9Wb07UHgZgir3Gwc7dMYAa020+Bl6D7GwLE8E3Iuop/2y97SdPhjAuKBJN2mQ/JR7OmnmArMWYUpEOZb0yOv2cQqG2YMkkqBZDGWeKIf8H/oxXAY+A+zxnLycSNYxGH75yb4taWpWptDHCPLbSpm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qhc0pegy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qhc0pegy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B42A6C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743805793;
	bh=5ZLHS8ncKSbzDG6JWx5FrXwiK8EqA9Iktmwv7iITo8c=;
	h=To:Subject:From:Date:From;
	b=Qhc0pegyCGVsBpRU5M4BrQdDvf8PL/4pFcq1T/tisn4kavE1mZ/H/43kVZXr11ptx
	 /9v1jbjHF8ib+HJfdW25L3eKOBFLVRix+gQ1cpyFgfeYvz+6eLZraWtUXLCGB9wPdz
	 uBcBEt3qwC4C0vUmhv/kbrGJft9zObCfPgbfrbgV0LiHWKYEmrwm7KnTALoZm+5vZV
	 PQrS08K5Bmv8dQE+TdWMuw4tNeqrSTXuN23wpcs6g7N+Km6uigj6r8X8aUHoEg5pcg
	 cJgCPYtXTBTaBQydLyP/D9mq7aURGR0rUAw+K50yAZCbAJjbEb1wFAKSEq2z5h4smk
	 kpjDseNNmF4hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CB42C3601E
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174380579363.20811.10360931399308058549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07453a2a065eedb8e9a6e0ac3f6ec27183a4bcf68ae6dde4c09a784a36689c7c
Date: Fri, 04 Apr 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743805793
