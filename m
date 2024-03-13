Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD9DB1DFFC
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 13:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710337096; cv=none; b=pXtPIxOxJ1DB8EDHFFYH7dGdqB0llHb9x+NylC4Bvja0mwwhU3Gh/cdnGkZxT2x0vWKN+fa+Vq6NTUyrAk77F/nAMBKfVkJ7Yg2hVvHHX7NVaZpqHjzXWUSYF+rJA1BKrbyEYxqNLMmMZkXvj5D4TVBxtgKhMq3zQWGiBXhf2a8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710337096; c=relaxed/simple;
	bh=NWpGcDoy1uIBqNgi0wL0M0qjz9fxcbOARwOMr7i5zqg=;
	h=To:Subject:From:Message-Id:Date; b=KBwZZZGMccc7iXNmpsqfZB+pGea/nG1nkJauI/KqCnnPiHY7B59QQqqQHLFdlJEqWoEz5v/ffxSvk+mKcN1JWXWdwu9L7L5jN/zC67nz8UPZml+XV2UZq+aRjmZqczAAGehbTn3c5IYY3yxNyhq9paC3J1A3fXJr3X0cyaX2G24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DgHkjBLc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DgHkjBLc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8167DC433C7
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 13:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710337096;
	bh=NWpGcDoy1uIBqNgi0wL0M0qjz9fxcbOARwOMr7i5zqg=;
	h=To:Subject:From:Date:From;
	b=DgHkjBLcfnhUQ+Qf+MLNM3uXULfzD+BjSiEK93EOnuCniY0HE1hX0GYKWtZlH5jkb
	 zazGVIzQ6bGK8duoW89TEzHZSWHQ/G2jnkWSZeIZofkSKQbFCqtMJpuLIMSLB5nwaa
	 nM9DgczswH/CuqIgRqaeMQt9ayW8NYQbUYi5vDRaPYVHWsdPjf9LcNzt1skumWckMz
	 7/D0L1EQf3GrMkZx+a/2vAaq2umjtsHpI1HJwxFDAtEtMeAh4i2iuboXwshTaUaT2b
	 KbiblNx2lr4GfgiKJCzSJHOiwSSLgDAU4vLLwen5oYqMEOswNuzekLFvtQzmn2Dg73
	 2ZpKEbnvX1Fww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64633C54E58
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 13:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171033709640.26235.11454211436276324930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bd68194717b9ae942fc21c2454e2b0366c770b3e39e98b6f3c560b25ce3719a
Date: Wed, 13 Mar 2024 13:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710337096
