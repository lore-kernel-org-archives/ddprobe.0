Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FEE93C0B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 06:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720332983; cv=none; b=EYIKAVoCLG8uJ8dzMeEYPoZpUI/LIeWphgfAkuJwPsI/fD7HaNXH7dwjfOSodz2t5zU0dmsjPjRVXyuY/zej6sKaWh6pNKCHhjd1vw7GhBg10soekhhndl9pLVbYf56P1EDNjjS3k+PPHO14LQxef0norwryz4UUH34FxiSiRk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720332983; c=relaxed/simple;
	bh=4NSWSjzfH102Sw7AHMffHB1QTNSghkGSjrrTZ7CwkPY=;
	h=To:Subject:From:Message-Id:Date; b=VkHla5UsUogegi/opq4mVioprPqzUI3yofEye6JvR6b2NP5ZopgJBQOOeIGKmXQhFVWwrABALX9/quqH3c7+RP08kIs1Jx7esOKd0E/SRDtifvGwemHB3VkIkoEQBg35OdfKVGty1P++gbEt3sgD9vBJ7nIzFjDMG4MpcQOJaM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iMOjSx93; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iMOjSx93"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF8AFC3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 06:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720332982;
	bh=4NSWSjzfH102Sw7AHMffHB1QTNSghkGSjrrTZ7CwkPY=;
	h=To:Subject:From:Date:From;
	b=iMOjSx93+pgZ5ZZKhakeLpS3VX9jRCQC0qm0+FGFGx5tRu1e+IQLDLLT0buOMZy+z
	 4zOPpHPpF1b38duT+Jm8MAz16LsZjREXV/Ug34XPx5wMTAvvqrwFekABfMXospHNF1
	 Dc1CImnukpl6BZKGf3xtfiJlqPRZwR/aqTlq3Ma/s0r7bBOAtCm9/h+frRAmZ1hchM
	 2GQp/slOSRJO195QJ3eGG98QtrZr0hSJlwi0chHhRBtiSzAlbrPA34derNLcfl8/wZ
	 fXL/g2VwvO8NcoRKTWZDUtXwpUQkneeV6cqLQhXgjKSJkg4woAQTUbseiYejleRHmo
	 +JyKTrKdIU9QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA742C30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 06:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172033298278.709.16153605617930942879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 564612e6a56de110aa9b39966a935650caea926989e9d3975e50c0f4c755a495
Date: Sun, 07 Jul 2024 06:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720332982
