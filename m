Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 139D9218EB1
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 21:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771880694; cv=none; b=EGajsicnVuZkwGtGce5CqqWDnWgnaqgei5h6xVafBRJMw62q2ET0PtNIgpunGH1ygczT04nQVN9xZinlHqHuQD43Z049bIBvzrUH5elQmWedAZJz3u67tYqPuKux+cGDfHr2hB77D2fTfs0yOP1aLEIc6BxE15pFwOR53reCcUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771880694; c=relaxed/simple;
	bh=DEVOISpwgz8WGb6A9Ar9irD+y7BtviN9Pwwd9IpHffU=;
	h=To:Subject:From:Message-Id:Date; b=hrLc6z4jx7GWhzqq/XImsgn/gH//vqRB08+X/5QGpSaknDa22Mwndzc8/bnixV1Jrqg+Fiz83M7zstwZ1vzVFEjTRRisz6ERb9+Dmb392rPie/a7ujq6CDmoWye6R81vMsvu187KSiV8Sm8u7C2PZCVlBhkeKVzvQIcWnaAVPbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TBHjD9FO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TBHjD9FO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9780C116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 21:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771880693;
	bh=DEVOISpwgz8WGb6A9Ar9irD+y7BtviN9Pwwd9IpHffU=;
	h=To:Subject:From:Date:From;
	b=TBHjD9FOt67bIe9TGSy7+u9rGRKEyKYb+bpLxq45bHzGwhh1t4o7+Ohzu1OtqrULM
	 wIlFxrMOYhRWL2ySwN6weAbGjbBOz4jADEHS9Gto/1zbftIwBiq7x1bAqLXGMHcGt4
	 URcuI3Cv9NMV5f1kSSYpH9VPff/qzSePQgR+l28xPgx2ichBhrAnicoCQfIXC8J3XR
	 vH9R4D8coe5cqbG/SYOpU2rpp/cAYCDgIQO5rU5L2nCxZAq2LHnSQmzqd4eHMydtLU
	 gix3LkXse8xB/RXn9BneI/c4cm2rlz+d/H1d9UliQ/vzBtDnOqU7nPLNKTHX/SAwel
	 b4ir8EO9ZYuyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C164EC113D
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 21:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177188069359.19371.1061014777535685088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 522241d87b77f7e3c303ade305cd07d33112d316b9c3aa5c6b58ded956095078
Date: Mon, 23 Feb 2026 21:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771880693
