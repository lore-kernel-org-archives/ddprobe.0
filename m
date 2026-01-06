Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1932078F2E
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 21:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767735834; cv=none; b=ROV6Su443xeeriroLhYYHJ02SCaafK5sJuAf3vyyf0Cp7IAMza1YJVY+aDN1mcWyWgXE6uTjSFs4sfQFxt3pLCWUWVbihTTV14Q3L/rRO6kehBU1QjvXi4T7oUveuzzEO+CT3J5VZMZ6/1OHcBcsZzBr9VmiPKZ7EwBX6k2wl3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767735834; c=relaxed/simple;
	bh=HDvmabwbpNTtMJt6OElhzlEn4A6m480TyM+VpegPIXg=;
	h=To:Subject:From:Message-Id:Date; b=XNk+HQ2M2LMcnE5zrF6vuxzBOUZ6Q3QxLGJ7jpDCV+4mKffYgrj51L3DmAYjHRIX31jIl/F3D2qdQveYYPylc4An0TSW7+2Ae/tB6NAyOGtaAquqvMAhsxgkPFcmGSaXGvW65HYY8NulHoBJquu4QdEKhfN3GcChtiDaFxRLyxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hiUgWCK6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hiUgWCK6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C9C3C19421
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 21:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767735833;
	bh=HDvmabwbpNTtMJt6OElhzlEn4A6m480TyM+VpegPIXg=;
	h=To:Subject:From:Date:From;
	b=hiUgWCK6OSSI94GRKJC8C3k3NEl3zuMGpFZEkloVdoIseDR7RWpH8l96B2T8FG1rc
	 jbpgdimM0bl8+XF0bsLORtuME4BpDd6XSQceL3PtZdqQ0SYRdk+MbiLPJi09X8xsar
	 82aLa7JsBK2P1hS+/f8MBIwxLZW7toKv7tUT5nKFjSBSc6fMo0KQOcjNNZlTv8dtfZ
	 XV0yQwlfM10CGxQ/riTMUWl8JscRIM3baycZBS6dtAeiPLqVnSx5mF1RFrC5iXQioU
	 4HROAJ9MC/zhdM98S5k/nxk0/UUlNu1W6I1wFEGaVOtid/Cs0uW8oLJHr0XeWntZfJ
	 omXiDvapB6m+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F877CEFD16
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 21:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176773583358.12479.13012403414269476418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 486db9c6d52bf0a2352e7e816e9c0650e7bdde527669dacabe65fb9570a00b7f
Date: Tue, 06 Jan 2026 21:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767735833
