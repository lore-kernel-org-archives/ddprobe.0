Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57FCA6FE2D
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 18:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714329743; cv=none; b=BV4LwSDYL++4qdNxJd6vAoMr6CKyL40aks1azUrun08LH7D1o5zyqoTHkiWzKzy6WCdBFHz0QRrafHjRs2qo28VCd+0bgfivSSlrLoe5j4T+DfQOatt6ifwxPMPNI1aVSWo/1aExCyabl561vnJWWk6WBxP8cfBv+vFhNcKWlPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714329743; c=relaxed/simple;
	bh=7iWHyFpV/yfaSG6J4cTyqDxi0pCT99JB/4/s7sNqt9o=;
	h=To:Subject:From:Message-Id:Date; b=ZZvSUXhf6pf6ZL6xZZxcyo82XYVAMVtLNh+ghIOWr0EVfy2qz6trGpKDSJDL3uQf+JoXeukdoWJ0vusUUK1eBvGasfYCi9ySR+U16q47p3Yr8v7Wz2vmbe2zseQRDeSxmuZJR1px/79v5bzt2j2ncou8HFQTv1o9yOtsvddDtl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DvDGJq/X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DvDGJq/X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC9ADC113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 18:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714329742;
	bh=7iWHyFpV/yfaSG6J4cTyqDxi0pCT99JB/4/s7sNqt9o=;
	h=To:Subject:From:Date:From;
	b=DvDGJq/XbFrQWZQogpVGmwWMmp7kbWHecXnQlADzYRVkiP3oPjnwDP+K5mUGlbmI9
	 F7t57FtwJQuabS92TqRDoPNZ7/xdOppVqK50q8NoYtwkXUiTGn2GzMav3ZqRfNQb6A
	 /D4IFYmcuDzBE7KnUhGG0Ld4XDOb2VBoKIgXQurXjO38ctWwgHAAtNwrUJNogTkPjK
	 yHbxpK5QAtW1TD7zH1tRd0GTHLq0iG8bzjZKnZBNTD7HfpUG3zuu6U0TZpfC9rA4bj
	 xsgrPy4tJaXas7+ypc7Ua40OW1sDNjf4xckVscOD6XDRVTEgD3p6wijIN41iHhZcUH
	 +F9fwT1YmsRbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4CD1C4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 18:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171432974277.27254.3166842280003296561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2619fd52cef1fb8731c3c945be0eaef3bc049d73aa9b5ca278c36ceb4e36b27
Date: Sun, 28 Apr 2024 18:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714329742
