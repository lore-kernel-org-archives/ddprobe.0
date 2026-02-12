Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BAF028A3EF
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 22:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770935694; cv=none; b=fY37gbWJHAajOwPGvujxMru5XF/PMMI2QQ6RU9Cf58GZS61jcpAMK2ekfP2IRPQ9NorJNsYXtcEQSCo5ChEXN0q0dfz48x6EyXTCoR1VHLI8vE3ASUYBqb15NgUVWaYFdiaSKKIQtjy9gIeF1ZCcnIEiJkQOy7veWeWy/cxLX7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770935694; c=relaxed/simple;
	bh=0sXhabE6O2Fupr8gk7FGGgaql2mNozvtnKjc0FfgcBw=;
	h=To:Subject:From:Message-Id:Date; b=oW9RshcXBvoqcTlrH8UVyMrc4fDjDcgPCqy/EoRuX0ZjByRPhzq+lFbYSbJt+cPltXOjYRB+DmJ+53OrgXNP3tU5kPXwZjOz3HxIflE4oyts1ccOUks/Sg5615bzMvqjYMEX+/XXWLwIjhmn+m7SBGdtOJ+HEizYliUSlsvzzd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JUlJKOAX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JUlJKOAX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B187AC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 22:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770935693;
	bh=0sXhabE6O2Fupr8gk7FGGgaql2mNozvtnKjc0FfgcBw=;
	h=To:Subject:From:Date:From;
	b=JUlJKOAXp2hWg+iG2ObnPCcoy4/10xmTeNELuKDBpNj6PCmEUipH3FHlXDuOCCTSN
	 COuL330B55bcWQIQsr0LgzqhFdzKgz4XAn7Q7BlSbc/TWZuAYFAhZnbjzpSHICh9gX
	 nptds38vo8/1svGph4ZmaM8TH22rKx9zY8DaFDlSy2kgCdmK8fVQjB33XD1URi1+wy
	 sThvY4AK8xSRg1PMM6HcTLQwRFLEZU0QbbKuH8kg00qxjrZV5/75G2c78qNXDrpnN9
	 AxyU6qqubLUa7A5I/ysimDOy5dUE9ZmnFSh8HU1UxJW1wo3s1GiqFWytPvewWzh8oS
	 TukJA7I1jwADg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DA3FEEA865
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 22:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177093569359.26490.6256280607382435936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8496efc7a97251e20be20dfcf30ce8a10c29ab63db4a95bca5d26a7900884be8
Date: Thu, 12 Feb 2026 22:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770935693
