Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F76B255252
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743019794; cv=none; b=ojFlmIFADMtF/JlBJRgqDES3EYcLe8dWhtDfismuuvrQBBFN1lSiI7zuUmXNqF8V8IoV3/HlEKNYLGKJsPuT5yn59p6L4JSuARWL1WwpsljARgPaU7okavuMMRJQo4igGfd4y+bmABtBru4ceXn9psGqFsHiK7QeP13FJ951Be8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743019794; c=relaxed/simple;
	bh=rl3WkSpVjOVAI5udwgkRThX42pF+/yt/rd9cuncO2e8=;
	h=To:Subject:From:Message-Id:Date; b=GI2dDadX46Zqcxe6z7M5Hw7HmKUcEdLMuU04SvdlcAjd9jGTU/IW3Bm9cH/lME4LFLuQEHEtt/xVabjNWiXjyFxn8KhUnXpvoaxtLxc0I22uOEGbwbSdd8j12Wi1p1hdPgqcsP9HXYxhbe695cBbirY+QG0tprhras4WBYZeBfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dNPlALDW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dNPlALDW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F90C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743019793;
	bh=rl3WkSpVjOVAI5udwgkRThX42pF+/yt/rd9cuncO2e8=;
	h=To:Subject:From:Date:From;
	b=dNPlALDWVgbQiHXGwJZRQttcB9yEzeywBZKeGNTMLJTIn4vTV/U7BPMocSXW7ulHn
	 Ktya3EeYS9NKlfSqyvz9aWimJIHHX+FGla2cDWCWZ2xTyL4tn9XoCzHfhFOIwSksV6
	 XAQmzsjfn6MTkBtPQVw1/tyaG+6mCh/2e1aAyReWNSVE3EXSldDQQFOT5XAv7NkFWf
	 sE/C9vHlvzkOvxelcztyxsR8AOthr8W3tRX7k1vzKQt5ty+cUj+rZlLHIOkYbxNnUf
	 9myeC4tVwX/Qrd0O01psF5bYbwT7IqGJKcr3Q9EQUHZ/Yp9RYEXge8J8gcbApii5vc
	 Ux1t3nHBDnpVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C5DC36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174301979360.2033.6755722805883246743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80d121f3181d158a26c770e7d33df4612880247b0f877781dc1feece6c0296c0
Date: Wed, 26 Mar 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743019793
