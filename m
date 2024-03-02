Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29ECA1C33
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 01:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709342897; cv=none; b=TDKI5sjtprwV6sYhHbLQc8PxL+zBkdPyv0Bpjw1CYdPsUGvLsWLle1xMh5wp1nGuH2NWNzD/ZIxEiYfIyXdXaQcPtgDv4jGPmbDLlOOaMoDaUn5ZfdL50jZR10MF9GyweM4jrMG6XveRT2DKAghtQbUkOyfTLcZ81aS8/1hZCiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709342897; c=relaxed/simple;
	bh=JjkkP1FYR4ZvNvDZzD6nZkyfxVm+yW1WXywxM4miAmc=;
	h=To:Subject:From:Message-Id:Date; b=K709Vft8ExaNGXgR9an3NB/Ifqm4Fa9onTviEt+W5oXBQ1NgJc7CpWZKuahkDM3OsKX/5qVhwgNiju19HinDUcE8+h/8Uzy1tigKWW+ZWqh6xw1/1yyP9qXQP/QHdgkc/eGTaMwgQZv7xazPrn3CSz5ez1kfPtSyO4ZIQ88TUo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ihqw0ykI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ihqw0ykI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8704CC433F1
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 01:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709342896;
	bh=JjkkP1FYR4ZvNvDZzD6nZkyfxVm+yW1WXywxM4miAmc=;
	h=To:Subject:From:Date:From;
	b=Ihqw0ykI66MCQNuyf80JnsGtB37ZIQOC4ZwfvpDE0nCbmMXPYl0XPNZQUB4H5NqO+
	 stTOknFPmSaIMdrhz1Jpon2G/nkHn+JtZb9Fs6MpsP4YvbHZFKxXecrGuiGhZUflFR
	 LgjPANPARKntpUp/dT+WgcsUb58hkUUrjQXWTYkjBBBtwT2q2ctzfS7d4+mGBvuiFX
	 m/7YCk9Hm2RhcfiaF8LXBYpv6yS0loDYi0qi0YCGRKHBgxukXJ+JviAntlERtX0TvQ
	 FV2XAGOUMneBnEyq7b389VfKwOem2NVc8cCEaATRuW1Qh8KCg4XBzBfe1zW9MOHZ9k
	 01/3/ITMNJn7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FE01C5475B
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 01:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170934289637.11735.2301711732196513768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fabcd11c1334aac9f7de696f5858b7d9e9bf588766299a7264f972091c2820a
Date: Sat, 02 Mar 2024 01:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709342896
