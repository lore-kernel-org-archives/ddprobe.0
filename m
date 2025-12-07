Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341BC23F429
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 14:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765117374; cv=none; b=UVl6Mf7ZAlq+wCInApfpvKEieWh/eB6Q7VmsmtZHWYpOLjA4d8AWielIysdh9PmqB4RX89io+0r5OmFmUeMce7C6fWfaRvlBzdH7B567aSm+SOKK4jZy+mUVTlmMd70y8wi3obsRHFa9ujrvWb+LwCCy3yHrSJF5FRnYu8RmMXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765117374; c=relaxed/simple;
	bh=eR/45SgYkLNNsOf/86+oGcqicobKLILieUkAJ7nsg5M=;
	h=To:Subject:From:Message-Id:Date; b=Ik1NK5oGttCUnC+kdiK1Popbg1WEumjnXTCejQUONvX7zxKcNG3T0dm3bzjhmaA+hIACnNm3XdF9JO3dsWhufmOEv9ikf25mpLGCL94lYKs8fwlhU/kq5zrrYzeP72HZhcYMwWPishlGOzEn3v2TJgigpobMxf/TO0ygQthvbgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RFL+b6q/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RFL+b6q/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B11CCC4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 14:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765117373;
	bh=eR/45SgYkLNNsOf/86+oGcqicobKLILieUkAJ7nsg5M=;
	h=To:Subject:From:Date:From;
	b=RFL+b6q/Aba1hWRCMkNiypApZpKz7eVOdIS0WqsJfMiRluy9vkkX0eMDSlQ0ycuGT
	 iSYR4ZX7671fhjWSg3YD4jP1Ky0bBfxON5rsYi4E3CSjJeW4sNVL8cUyAIP16x18bc
	 fHc0BYgMc851sVhzv5OVQua9+OQ8aGJy5j2aNGaHCmhhvYJja20iVMTfCpuhnLZc2/
	 fzADATf8D3olpR3OiQQzPXKn9d4xLBOIqGboDGq0guT3rcjgPEDtl4PGsUoZMkSf/T
	 N3rWzDrEtWSmyoZawsvUmpcmJ6tbmqW+U/Aw9s44Bj1+GOregRL2Hiiyj8T3azr+ht
	 lQ/fdUBNBrvzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F00D2CE17
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 14:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176511737359.10147.11468204162971198788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7434da720504a347bfb612dd24ed340f8e05b8aa736be74f8e57ef6f131f0d2
Date: Sun, 07 Dec 2025 14:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765117373
