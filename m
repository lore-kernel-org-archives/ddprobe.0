Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37BFD13D246
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742840395; cv=none; b=RAhmv3bkfVOH0jQ4hWxtIi4KS8zxBYJ0iwRLefscZSkbj7xItGBTSM7FJnYVw8jA4JdrKKMVgW4QL2ctA9BXYKQqFMscbfblQgLkDwK126AfyWRqoBQoHU6CCj/NqiAdl+4HyirnPmCzhARlSA3H2WaOI3TFaaVvVhgLCoLrDro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742840395; c=relaxed/simple;
	bh=MDJ2lwNg1t2qCCaQ5LiEXdgDNFuHP5eIP94zNiR2bvM=;
	h=To:Subject:From:Message-Id:Date; b=cpo023ciFuQoe65MazCJJOC/99J3yJY9XJF2PvZ6eEIz8Zk0F0AnVeLOGtfJ1pVp1aZgjpVR7WQtR3BLNC7XX7yCFbLv9/WcQfUbx9OvgUj2TpqtLioIoDcaSv28H7h9koHyLrI/U0iabOF1PHYaWyZquxlTCmA3TgK0AhpCU6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZT53Bu1f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZT53Bu1f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A607AC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742840393;
	bh=MDJ2lwNg1t2qCCaQ5LiEXdgDNFuHP5eIP94zNiR2bvM=;
	h=To:Subject:From:Date:From;
	b=ZT53Bu1fyR7P22s04BgZ2LnpmVWc7rQa/3JDDOKziYN3vRmczj4W+asH3S3elcSgM
	 +I+FtcidQEZB2tIdqwMgI1hmmcwRthZgGRrJrHZknplxKY6BuCkUb98lWTgHO7wgPq
	 5FHL3wDsmd5wGOfe76xAGHcIjxowlyVpkt9vqrIzgJ4Fo4aVA4NicWOaM6qO7b+yR4
	 Hnj88iDWw9sZaDMvLoYIGnKQov55QvN8HgT3f5Z5LRmnTBras3Z7ouhmR+gyydrvXN
	 C2kczgZn5NrJyk2nKWimlaZ8UoU5CzJl3KW2ZUv4dqx4TvPamRF0069n7q79BM1mOU
	 dpDPkEUMobkkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9197CC36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174284039358.12298.9016420679009202167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a01f9c652e91849700bacb0a2120bbfec138d02db63d89a900f3973a9a9b0244
Date: Mon, 24 Mar 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742840393
