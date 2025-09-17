Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E7FA55
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758147594; cv=none; b=qEyCKgAoQzKOGrdtZ9JYnE1iOUkgHkGmEymvVHmrD61krvxE1OuuzOTsc13h7WTMPrCMoypu9TvjtbplSwlvonPzSJP1NOoReG5YGe7+4oejNQVmtVR4N7CWYvnfhiotyvUm9zinfeZ+I+NiwgLGNLN2zGtp1WXBcAnzv4M5a94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758147594; c=relaxed/simple;
	bh=qaDVfeSgqKO8WoXlx9m8/8f97hKL0eSN1jcLxFMK6Nw=;
	h=To:Subject:From:Message-Id:Date; b=WajZEXblXZxubj3QtHcAktFMMB7TsuiMhgOha5Qk4R2BCtag+Q2vXSxb7mCacmptGfkKD4jl2t346xpXhT4qmF4FM+WDk78zAQ/7dYTXBDrSoyXcVWX8D2SbCH1rhKTU+Iaks5ie3ts0RaCDklXzEk1H2XZ/Yv4H9l/Nk8omJAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ovjooD1X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ovjooD1X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A102BC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758147593;
	bh=qaDVfeSgqKO8WoXlx9m8/8f97hKL0eSN1jcLxFMK6Nw=;
	h=To:Subject:From:Date:From;
	b=ovjooD1XXHzbe7xdrfhIxxAzTwiILcKIv7JqBVKfgONhnLJJg2ZVSUaH2sErUx/I6
	 6H0aizipajsklDrDKfNC0bxrwwKIXy3/WZ1tebDp609FilcB/nV25ObBDC4bV1uiE9
	 /weYW3df9XbKW6PxX/L+X0QuxpzX+WqyPuJNIVkVpbCXw38C8pioY5mvWIuKKQkQi8
	 JyDrS0L5ODPGgInaaTuBoZpP+kA61A9h8kx/OVmfmYvjtck316oBZiRSBiDLV70ftE
	 aUT6u0VLSPy9Uce70OYBJxRZm+6X7h2qtVDCHZmJ6Mi0TSlMMhMkWGFgESOmIlX6CR
	 VKqT7uedTr20w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECC7CAC59A
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175814759357.7880.15628755039474676141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a33a8001e5d683207beb3a49e1af26b3c7b41afbaa24f88257e46ca0694b8d6
Date: Wed, 17 Sep 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758147593
