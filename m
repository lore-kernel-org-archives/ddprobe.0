Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C08A1DF980
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 18:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767550434; cv=none; b=IMag0hDoqXmfifZVHRWNOpsPegiojforrKMaTbj8AjbgmXnDPvLFHYoQfk6CGoRVibHaKr2PEovDgnVpUTTn7UQ8C+d+yZkwzHkbolJhGU8Vp1ngPT9DbDM4qZuFxiZBJd2ogNPQOhpp0Tsow9HrpHG1Gz/Hb319iK7PZnvaN+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767550434; c=relaxed/simple;
	bh=Rx1yWtQ0e5obct20MVmXH9nEuuvrtWsmyY0w+gw1m9k=;
	h=To:Subject:From:Message-Id:Date; b=jg8PHIzCt4oXjV6FwMJ47CQTxERJIGebQo16N8Z4dhb/IRMhhRPZZANNGyghPiy5wMmPQmBrHDjVSHTLYUNNLaz80/LVGQMPTY6DpI08JsUxP67fx2LFoU+4uabi3NV1epHMv/iou5/1MqbXeG1JBf2PdYR4EUNfZKyEQ6hh4tA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pJQB9XxG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pJQB9XxG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B63C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 18:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767550433;
	bh=Rx1yWtQ0e5obct20MVmXH9nEuuvrtWsmyY0w+gw1m9k=;
	h=To:Subject:From:Date:From;
	b=pJQB9XxGRisAZlERyqwuxqSBah3pTQwbBykni7vIUsyz+dHZpcqxRnJa5Me3HXGoG
	 4aXYWiIetSIr5kJRMAd9toZ4ww15kK+w3yIe1I+FeDjlMlwGTVAl8+j4LnFpz8yqom
	 EbsF1QZ2FepEmrGMkbohafv1NfzpLeI0QLR87StbFFna6v63ZxDsu2dGvBg4zLO9mR
	 RLAZfGjSXRL+znNh8vH4FyTOZHQltD9lwBgOnD7aztO9DrwBNU/IbgLp+UwmvQayYs
	 mLI3OSxxHFqilAvKZ8yRGRvJhMo7VbUHZZmytnPzWC4O1zKoDOFsctkpEUGYgbeGhI
	 7afxyQ/gaGKOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959ACC2A062
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 18:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176755043358.15345.11727252339564996998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac105b60f4b023e7cdb6de8b14be441398556822a822909ca7ebae96e57b70a6
Date: Sun, 04 Jan 2026 18:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767550433
