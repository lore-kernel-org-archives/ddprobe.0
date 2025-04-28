Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE5C17BA6
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745834994; cv=none; b=JGdUhFj6bpCZg4tEENRV5IBnLY0RbNmvU+UFhDCC/uckTuZpf8ktVV3aU7wscK/gMCgqH5XQ5txyf7zzDBKiNfuZF4eN9dXsR/JCtaMEZ3aQiYKUJT/JOTew8SZP7EkzJmJnRiLak14lvYqopoSRxoIhhPgtoRy8rfrh8KMRfz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745834994; c=relaxed/simple;
	bh=aHipjjnuGY3z15sCDkxM7BNoyBqUQq64fx+kwbZ6yrQ=;
	h=To:Subject:From:Message-Id:Date; b=ISve9dKsAS4BKZVPGVz4dJOc2vul75FwixUQm0UUGTRSS2xAISDL2DCar3TwCrxfIpIp3+CQb/AD7MHCRE6zozIdHoIuvN4aj08deqWXpew1MEnzVg6fJe/kTzUMQBBQmwuA3Fymmq1XpsfKRayRo8KDSnYS5ixYee353TFNTxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aSg7LrGt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aSg7LrGt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DBD0C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745834993;
	bh=aHipjjnuGY3z15sCDkxM7BNoyBqUQq64fx+kwbZ6yrQ=;
	h=To:Subject:From:Date:From;
	b=aSg7LrGt9BxJs+zWRt3YVfsGtB8FaWHojLbpiR04V4Sjtmn8oPe5+D7uB8AY6JosL
	 659ldQzAN8LdkhmB/MDrXXdnOXcSqVvPZ7CsnqMtysioUrH8QNYkhPXV4UjI2nMsAO
	 ubwl6WN2ZNsvf91B0IMe6iVA/RJYeD3L761D46KD8jT1fgSr+3rIn+T0bf85+JCGV+
	 0L3ZCcoPp8v6245q3e6uRFfwdLoNeDaHfmua3ilp41ZzVkIC0fklOf9TVMpKuLPUeA
	 I1CVuJQwTNVhUQfr/u0tbTa0lgGo4/s9tG8gwvXbrpcztF7z3plexRvtM7rdmroiLE
	 Y4FZd54oiYEpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC31C36005
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174583499357.29078.1691160291285879977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22cb5877d2d8cd2593074a04df9c66ec953a7497e5a4caf020829968f39bbf56
Date: Mon, 28 Apr 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745834993
