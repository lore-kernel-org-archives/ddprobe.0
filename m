Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A791BC2A
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735883754; cv=none; b=IiRaKZhqHCpO55JCLZqqiS+awPrLtdslWQFgxJ2HeUwdo+x+o1svKZHaaqAwPvAm/hsyx8HElwJe/omeN/JwASCplowvRwi+ksbUzsPfPsqsVYB5PurdKySMjmIBk2FyM2G9RxA35mv7H+g5o72pcTGhsYGcKBEF1nanfxgBEig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735883754; c=relaxed/simple;
	bh=1QhqDAoX8gZI3HvpS/tQXFR5ia23nDQX3iw6KJcxiMI=;
	h=To:Subject:From:Message-Id:Date; b=Qd9mqm4Ai5TrR7IonGz8o/ttt+MEb3JY9Oh8em8OjMK1zO3TKib0k3klV7VoHAObFyMkrOLf1kKgNeaIPoScfqKCQ++jIuYbE4pYy+qnT8xz5jm1vuucmPSOCb5L0t1b2sRKIGkYJ0QhdV18Dv5yPet8FDP5pSKFdjBqKIPWRis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bPGQoaUY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bPGQoaUY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7783C4CEDC
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735883753;
	bh=1QhqDAoX8gZI3HvpS/tQXFR5ia23nDQX3iw6KJcxiMI=;
	h=To:Subject:From:Date:From;
	b=bPGQoaUYb1EEb6Ia/mEgFpJJf+fANA6OaIMsxYR47dEFItmi4uHWC7OIcxM6CNELi
	 QG1JugPvJwjX0Aqjk53VVeSVPBndUy+JgcigkMJsK+7shqAt2UYx4xit+DYztlrSZN
	 TG1wcmnv7TkquluX/MvysNzye2MPTcKu5PWk0WfTLx+pwq9zDFwvjhix/8l0izSdRq
	 rUtq61j11WIXalbbWtRymit/HGK1jDPtRFFOyDbeFNHy0p+EGIuzp5VqUtBgjAS2Bt
	 MRPCsa5gwjyj81zzKVgbXDvSHD/fhcF6ssxsQ0AeHYtqYnRtGjPka4iEAzPrcIaJqM
	 IRc1BHkYD3/wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96ED6E77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173588375358.13481.4293245792388998280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bd9d9c80b16e261e84c7376974483ac0ad26fc3e24d6b475b1c323131c4ee8c
Date: Fri, 03 Jan 2025 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735883753
