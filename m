Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA552D7BF
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 21:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775509534; cv=none; b=BgMJ5PGaqufvaG1RrHBtvXpP0XDd1kyDgAsb2L+kO360/RCjfcQp0DEmhEIZJyRyhmxOKWC+tlXbpvRN4v3NuLBPkKRg2r0JzPLwzddPyCKDG9Xpx1IP64ZD1s2UIUTBvNmcMeixDhBvA8NfEnnf5pg8o30oYPHnuqaeSNX8n9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775509534; c=relaxed/simple;
	bh=0pnPhTrhr86MndfZiJq2UvUpiBSvyAH2SGHAYR/Cv9s=;
	h=To:Subject:From:Message-Id:Date; b=G2D4Z+P5pL+6oDY6yxYFxiyJPWpm27KCDx+TpyJVHaIUODVk1m38e2r2E82kscCjVrXW0UPD4XJJbAy6wsd2PjxXHE/c2jdUN9Fl8lLmZFKbuxGez+P6Wp9hyUPl6lvQ3vhl/gay58htLEh5AoEIhS6aDd7iep6U2creccZyBAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z46dYfjn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z46dYfjn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8B16C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 21:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775509533;
	bh=0pnPhTrhr86MndfZiJq2UvUpiBSvyAH2SGHAYR/Cv9s=;
	h=To:Subject:From:Date:From;
	b=Z46dYfjntzz7hf+1EAPr68MQfzK2dYvfqNraxWx+XugXjyENS++4fsKSAOKT1uU+k
	 wJmFibww3wSo1dQl+aymL5ozUJ/Jt88c2EmFA+uBWBy3aoc20k4bKcanfiWOgvzv5/
	 uBjXD9H50wKNRgldYVX+4paneCCn/8Zfbf8Tx1QzW64FSYlteCyxp/vhYpLUILXixl
	 XZTBMOWevAog5abvHmkKoNGqJWxzDbAfiTdIzJCS4gIzOpkG3FpGMMMkBVAeSK+YX0
	 P0aBIzl3GT8f+lGMyjY+2qV+sIDOz5NCzrrObbw+zhnO81CWBqY1isRcf4JS+RDvm5
	 uWx2P1XC1wp+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE9BFFB5164
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 21:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177550953369.22849.11179331521296821169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8072b48c938c87b3169c7f8dc0b1359c25fb07e84630635a852d7ebf0453c72
Date: Mon, 06 Apr 2026 21:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775509533
