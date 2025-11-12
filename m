Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E65D22A4F1
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762918194; cv=none; b=NgDVYcBNeFKf1wOs9CkxavSGKCGhZBpf2KI/i4cRX3sSx2AzDRStO1meRafRl+7wdzjqaU4Ed78DDdgkVAiUbkgEKCfQrtE1p7SzqPIcEjQZqWhpc4hBdGzv3OqbugvrJRxey35f9oHBx0Dv4HknZFQHQt+wA1tD45TtwakptPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762918194; c=relaxed/simple;
	bh=3u36YOpYsRs15jFzjVNUpoiwnVfzVkeTdV+EX5Zywsg=;
	h=To:Subject:From:Message-Id:Date; b=KUYCWF099BhctDPu//boim7WUeUmkA9FmaTX8HWWgac6bk/Et9yWL9MHEExDofig+1iXnUSn9gmBvlPuazwaDY9amYWZuBxnHkW87sLBrp/SSQLdNCwzblutW53EVvROvXOzCjFRz1PHWH2vAVcFE4Kf0mQ6XJM8HO8eGoFbzlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZVaeVSSX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZVaeVSSX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BD0FC4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762918193;
	bh=3u36YOpYsRs15jFzjVNUpoiwnVfzVkeTdV+EX5Zywsg=;
	h=To:Subject:From:Date:From;
	b=ZVaeVSSXhpKXGK866wZMRKpSnx6FAyTHM5QK1cQW7a41hmkQyGwvCwXwmmzSiBdli
	 vDT/L74kC7LPt7sqkOT0IPgqstr4tes6bjKTzqL/CuARfZJEjWBRvRXiIuBGliDKDm
	 T8lfJp38SmTWgQjGajgZab8ORZM+naya0zR0pjzkPcUbZ7Mpw2BtIyAx+tGAIIlXCt
	 ivVM8GK4P+a5u0m4MMfzU8bhMswJoI69JJv5f7e76yMKETNhIJeuEHEyCJOuiLMJAC
	 0gYF1OXG7h61Eh+zqH5g8aF2JzOFvR3U6SkJ1bhV4O7s9puP3N+J7tfRL/fx5t1sdy
	 JGK+LiyOPymGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD2FCCFA1A
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176291819358.20602.1219624109925360624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09ccca26791d78c69c691ca9221ede4a23b070229814cf904abf377486696902
Date: Wed, 12 Nov 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762918193
