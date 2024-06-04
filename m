Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60D5813D88D
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 04:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717476323; cv=none; b=A1yLMfIEnNU3GOajO+2FVKNNmYrkJoWuugq2kMRA/Pz0/uK/jVMJtVmXdZ35FOy8G9p1wJi6YtAyu9BUvt5TnmVpMs9R5CJS8E769DU96ZWCjyhXXwzRtaqIoJ5yIFHRR/9euDisdH41dhCGCWVrCa/JcIhxqZ50gbQ0uM0gA88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717476323; c=relaxed/simple;
	bh=Laua98MN/5MEYQP6VKyAQVjDbSFP21OjZKW73B1Vh6s=;
	h=To:Subject:From:Message-Id:Date; b=UWXTrnKSlyjZR7VRhCYdCNLbRevqP4XzDTCWxdg/r3bGSgssukJXjoIPg5cd076ULCy3RdN3gbFUpUQ4VspmkDYs0UiYmfH0BSaBstYb8xwBeirzs/U+7yV801IV3t7Z0N7piRV8yzh2oVgXWXiyToUkECnaeK7YsxD0zxecC3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KGbP7ieQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KGbP7ieQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB306C32786
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 04:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717476322;
	bh=Laua98MN/5MEYQP6VKyAQVjDbSFP21OjZKW73B1Vh6s=;
	h=To:Subject:From:Date:From;
	b=KGbP7ieQ4/zWNs/cPinNgc/InyijP4pBach+mLinwBa/vjOWF8nczwJQ8l0QCQG7m
	 RwSws6UEeVLUgSHT5BUk1FI2LUvb1Lwuks1gA9BfDj/FtlELCSUUef3Pc4HGSY3Sr2
	 /rwreC6kBbTMz7azTwbNm7M06ibWw6aN1IdsZ3ppLfOv5Ez/MD4fSTvRrphoDZ4R+g
	 DNBNhGXugHzeotFRmcbOt0zk3NFGKBjW7+0cWZ7xgRVtJXdTq7mypyw9+4E4o2fy12
	 E3BIruymMfYvAebnJxo+VbLpKbi/zemoKDLpjrSbCdoYhwCenZz4PK0LECSh2qKCXD
	 08W9eYzwTjC8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C94CFC25B74
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 04:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171747632281.7852.3642151091344238848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e22ff9bdaa3550da058cb484ebb78f53d78846f3c8af00de2a4ecb7c4ac36119
Date: Tue, 04 Jun 2024 04:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717476322
