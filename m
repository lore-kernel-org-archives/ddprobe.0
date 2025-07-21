Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 324792DEA81
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753118394; cv=none; b=LKo4G555lkDsFLvvrHMzWyS7oKjHuYjQ2xhki+wZhP1OyF0sHQK4JTy5EKXgQZLZvoQUM+C/IyrBhk3VRWpArtbJ8oqQA3IBouyi7zR+ZhYLwbXKj+aErUu9/nHLwpzBpZUrp5wty/iU135VR5ZbEYlmShxRxd6eHfWdouipKb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753118394; c=relaxed/simple;
	bh=Jmco6nZoVo/WLvkVsELA6HwIR6WMHRaBAzT1gL2U7/A=;
	h=To:Subject:From:Message-Id:Date; b=SZD+Gc1GYHhbcObjAafNalzUR/mArLYRqL7sJhEr2rbs6+4FaAh5he/PW5oQgNdVqay86R5h1cDCNxz0XiRqadhMkoy0oLrpBGFqHRpbUhu9AKhe+r4YF9Fdocp97fbv98JjN89H2Vy8/gqoK8aDo90fC8h0THHWgRo27Ns+fb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V5do4+NC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V5do4+NC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9119C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753118393;
	bh=Jmco6nZoVo/WLvkVsELA6HwIR6WMHRaBAzT1gL2U7/A=;
	h=To:Subject:From:Date:From;
	b=V5do4+NCboNm+ao7jic/5PGDv2gvJq5YkT4kmHKWuQm6NMjWouwZc8Wi1TiSugxIq
	 a8gt+a8tRZ5Etesqk1mmJKyNUEwaccqKmfRtO0AhKbJkg9TNAgMvHrCBIMZqzegw3S
	 9htwI5cQNsN08w1czhSeYXh3VacDrom9quObEWvokOwIX/r5w133Ms7vsFJIji/KIS
	 LMZqBmXNVCLJcyqteDY/OczUf3z0IKO7V+5pl9+bbCxdjcqOxUHBv57eGjJnJ1meJF
	 plTyIGDN7oelqoqR8Y79MJPQ8RJDXrCzdB+Ak9Kf/gxiGNgqWc1fLkJ2If9XKbgz6v
	 txueYDhwQZmJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95752C83F25
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175311839357.11657.12377433636248228084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f59eaa6dc818d005690b680beb2017e934664556131530c8462fb8c7276a07fc
Date: Mon, 21 Jul 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753118393
