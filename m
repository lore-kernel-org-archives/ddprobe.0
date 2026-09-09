Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE9CA3B42C4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788997235; cv=none; b=uXy7MDb9HHFUvaF36ymRhGkQKDl6sU+g7spOiasPh2ufMdx8iMKgoZixd9tEsOnTfEYkiS07PvQE7yLZ3Q7LcJDGYSFsKlZcw/HNwby/RPXC2Oa9SqcZAGyUjwHMn4xoyFHoNezMDrAEmdslt3Xk+n/HbN8KoFYskwfo+046qyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788997235; c=relaxed/simple;
	bh=Sat1MbqF2l7rO92AOsqpUXttux/stqCsT594GVqnBys=;
	h=To:Subject:From:Message-Id:Date; b=Iu2azr8RYdpRMUoFX/P1eOE5piomEUqry6kxqJ1Ai/lVIHhLlZl1XsgDZMSDQB022me/oj3PifLzV+PHCWLy/iklPgWodKEfh1PwA9uaVkbHcAUUq9LFl17Wq3oZOIFVRozMmO3CbJMIZ6Xn/xPvEMzUbT83Q7pLcrJRSXFN454=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uixE2S6c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uixE2S6c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 13D86C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 23:40:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788997234;
	bh=Sat1MbqF2l7rO92AOsqpUXttux/stqCsT594GVqnBys=;
	h=To:Subject:From:Date:From;
	b=uixE2S6culvU4/WULGvJFX+Yasf739dfI4YzcBXT6DBvtzlzjtpTcdFOJq+AeTaUo
	 XqKHMbnEahGDWqZhU0SCvi3Mh87uN4VlCXa7gUI055vMZ7kbhx3G8DOGqmp1tOqI9l
	 hWEqmyOEz3Ldna5PPMWwT8EmgqplMeQTcdEltELg6roaGtORBTlWua66yTabZPFww/
	 pGI198NXUWc69VOTqc6sllJ/ShVa7lZVZWYBpHr9/n+vh4bEkwg1f7Sa91FLSUmpPT
	 b4C4RbeVCqTG+X3gvQrMCalw/fxJSAdPmX2ky8pURmJMBYX99551YnX6vpyx4ckzY4
	 98F7QavLMim/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7BBDC79FB7
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178899723381.4250.1156552570195785179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71f9e44b1f0f8a83c685db2574a8eed0d742cf851caf917e04d893c2363d04c7
Date: Wed, 09 Sep 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788997233
