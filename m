Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D61816C6AF
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 12:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718542703; cv=none; b=ssTdJsuV7GyYrSZGU1KOkPlCq7yVNSgA0vcwxND/iDeBO5CQnj+T5M/1t6wHhkdVZq8BPcbJGQNd7GWpYxJktjHyPJwaz9YnT7ue3HErDYQR7EaFo8LpY3tXWjYO9qfWvIoBtvrjWGWvfgVgOYY/x6rqBXYIIHZ64jadb0d6ClI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718542703; c=relaxed/simple;
	bh=C85t8CKMCmIz6yVR8h/caKCxllv4ziRgfq2D5B0lxIw=;
	h=To:Subject:From:Message-Id:Date; b=hYEUbIf02uS04FC4KDCDtTrBxqaf3xXoWQp7vxrc4CkxH7AzYLQvCmBRys2JdUb8X2i3OPEF/9izQIN0mUzAiRx8A7vN+QfdK6nbRbgI4YPDD0oheTA9eYhd2JCC2HRxGfdf2be07BAuroDwNEQ0F5eFQDUwEX9HMNwIVzDaUXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aZYTtSPn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aZYTtSPn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFE9EC4AF1D
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 12:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718542702;
	bh=C85t8CKMCmIz6yVR8h/caKCxllv4ziRgfq2D5B0lxIw=;
	h=To:Subject:From:Date:From;
	b=aZYTtSPnccTxjbVEz2XYJxTtNFHz6Z2kD21MNlhD4ZJNnid2uJ390LtEOFWBti7im
	 BiFX7h+o3S92CZUC5fxuigvM7XBNenaPlAtIIsjNqpf+ltVJuqzK/EQX4PcuTJ0n6U
	 iwKdJoFN9+8jUO4oAB3Ov7YLeI7PtkPydyHBYxh8T4VRc4GHHg6QO0CAxAnG8GCups
	 T3cNyD5AYgahqhXZqc/AsHRAVcTDofZJBnrM7YmcnEYqJLmw1eS8de8HL4mKku1ppz
	 n6s8Di0yy5a5sTjeiuNwqWMX7kV3YxeTFeqSq0Na7cwctUhat37AtF0kxmBCXqIEpW
	 +ioRkokmusQKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE03BC27C53
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 12:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171854270278.29037.9706041791115494786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa4ffdcac914196048497f78186853db88137e36386aefa6870ab0421bb5ebc8
Date: Sun, 16 Jun 2024 12:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718542702
