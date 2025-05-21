Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B7913D8A0
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747835994; cv=none; b=ZtpbuZdMZfIsj1B/jEL6/5bQBrAqF3UYSu3rT44FcBl/2JhgTJAnAxQ8FXyJVIIKi9SM2x3+FJACnL/wkN2GMiQAxSJiJz0v1JEHAGFIiI3mGt2pBN1LfoZYH3F3aPvxCqT3G2qHqzDV3NtefffSkbaAN79U5J+v94RNoJ6wB10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747835994; c=relaxed/simple;
	bh=eSUzOxwvR2x6a/kEbA8kR2bQWrp++kYtgnjVvRYcEp0=;
	h=To:Subject:From:Message-Id:Date; b=oFwekDClV0/mZBgH7x7X8Iq0P6aHaWS0iQWQnFWblYCEJTfKzFyvD+pC9t9cICtEUEA6gznAK9rcQIwJeVHev8dE/i99fs21+d5DpMi/jH6NPLVlTyjt2ALIhG917WZByix0/qUjVRXtYMdl2dHztEm1RCUSkItYy5aOznE9fV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e0VLhZge; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e0VLhZge"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1880C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747835993;
	bh=eSUzOxwvR2x6a/kEbA8kR2bQWrp++kYtgnjVvRYcEp0=;
	h=To:Subject:From:Date:From;
	b=e0VLhZgeYE66tFVCKvDAf4amg4T1CGk747y0uplKpp7XbfYWZGQYJIBf/Gt44FN1t
	 wlZBGwWSwMzsG39lUGyT1L8wmGZEiqCRbhihRH2P9ZId6eiOXpUhX6TWTrCt3mWlbY
	 zua2RSkV7K7gu+/YgTlTjnHQtYsmZPr5SHEAX11UyEDmSgwZUxaV/zle30qP1fWKQD
	 9wNVO6pCscSQtDpFNF331OF1iagpQ9/Dpha71z/DTqs7qC6HktTV1h2rLyfK5XLB1P
	 W7ny55sv0WpTleo190TXM497hmxRZSu3THVK3aLpFF88UM79W4MwSPflTDoOHFCzUe
	 +glV+TovXwxxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E786C54E71
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174783599357.7534.13642613314501517132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a2f26510f24329e4fba0ea872eeed669450d1b649326fd62289908afeb52978
Date: Wed, 21 May 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747835993
