Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E5831FBEB3
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742723394; cv=none; b=KHGLkEzrgId3EXBUR4qxmounO36TCJlUd3GnfpmaURgWElHekKgiBt8TCxMk1wWDKTK/0iqZQwmBN3EktdQYPnAMDIhuw9TRe8LtF+/FKOzpSp6sT/vv/7miqug9yUDWg/zej91Zc7RPVNDe6qWY+xqlP1nsbbXxhKOoeFBWSPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742723394; c=relaxed/simple;
	bh=qHYZ9KnqMacQTuf27z922v7h13qhbMcmWg5EOCnnTd8=;
	h=To:Subject:From:Message-Id:Date; b=DZV3cKowXMPg4nkgcez4Swu/Q8PqbT4zAzFlCUq2xeN+6NNILBqJy2cBhJ0AGY4WmncwjkPXm56+7H3q0rAnaEvVOL/KY7Zybdaj+SJh8kiim62g0gWa5QkmcvC1bRdTzSu8Gw2UGcg3MEDuhKu86mV6vE2frEGnq5T6IwgESkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ngdmdkkt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ngdmdkkt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB9BAC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742723393;
	bh=qHYZ9KnqMacQTuf27z922v7h13qhbMcmWg5EOCnnTd8=;
	h=To:Subject:From:Date:From;
	b=ngdmdkkt8a1CO/NOafIH1iN8YvvoHzvnsMU1j7n/ztiyo5rskdeXNWTiVIP7ejiSQ
	 x8JJVqe36p+D4td2adse2HqEmsb4nJLRS7Yi7oJNo/r+Spek3tUj6UED+KmbIawl57
	 nxGOKK2eLdLCPsZT3TUxMPM8BfpKL7W38to3TTi9yLhpqgv6CfcUmkgP0gIf6KNHj1
	 g/3zbmhSq9ZWSuA05jYO+gkixUFysWDSGsO91A2bXnsiwxt9dlP2jjIayxYWemm/mt
	 Be4SBPbotKIA424vLReg7e3aGHEohtVv3AFpF8GZ6FT0G9ekVFdWmE4rCYXnIbpucE
	 Qh6NCi+tBj3cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9212C36005
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174272339368.2524.7313080144680361777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae988493876b208f70a913df13cbef54c852a96085169d8a279f60e98a11ea1a
Date: Sun, 23 Mar 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742723393
