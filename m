Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ABED25B0B8
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 11:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779535954; cv=none; b=G4eWVruUe1gLw+CH8gWljrky/8OLQ30dwP5SZfLJotg6GeRnJa3M60aDwx0jtIxmeHOrS6op0KPN5rnDayfmKUoVL7xdKM+qlanSdH28VFleO++NDamgWNsJ/vsoKIsdGoCpgGfokTs/rEtubHYyvEAq4NlMe4mBj0XAnbOqJgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779535954; c=relaxed/simple;
	bh=niI1A4j+5luqJkdeoH2cTyJeIL28MUe4McQteIAfiAc=;
	h=To:Subject:From:Message-Id:Date; b=Y2YBNDw04pLkSFGlxnNG+pnQLIIfPb+NomKWtjRbbYzhHf19pvhPlmJZkMc/1H4eaE1QrrrZxfXN8H3Dk4IWf3LCK5Oiho5x0HXJeXwJi2QqzmVZkYBj42km44hLh9+QUe3ycf/N/eL6ygxFnVZpQqSqdQBXSC99ap8kPhtiEpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ca9j0wN/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ca9j0wN/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6935C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 11:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779535953;
	bh=niI1A4j+5luqJkdeoH2cTyJeIL28MUe4McQteIAfiAc=;
	h=To:Subject:From:Date:From;
	b=Ca9j0wN/uPz0TzBA5V4AYvAfmKFBvHJOZbb0zA9hYKLV30pCWDNQwupBfrd8G6v2P
	 ECHGH3YOZSWYOYkbf5k294Wse7iLfxOq3vxixF+jz0dTGMRTcWSFKTzOe2VKJ0pW1N
	 Muz0GI+5BlOOy0LVQAUECXpFIeUsHfkz55wIllTdlf1wrKOcHjfPF5m2ATv1UrdGP6
	 KH5A9TIUz7eVhM+rFrB4+BijM5zn5gxV8eF29lnaARDNER4KF/+jQySXLNnn4/oqNS
	 8BCLJcjFT+TqzpGbja9hFi5zQDSGV/joQ/HuLUjacgP/A9xoXWfXPd5+gUnqGwAbeh
	 jlX55jBQvuHCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD0FCD5BAC
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 11:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177953595368.17796.10428539072906428310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 353e1ecc15808507fc727d75ae98372b92e043a83f9475ab88ad9a2ddd6ad4ed
Date: Sat, 23 May 2026 11:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779535953
