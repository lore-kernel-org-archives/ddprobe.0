Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5F283264E4
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 04:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772599493; cv=none; b=QhfY7WZnKpurZM5uhfG8k8GwE8A3qW5T+BZ5hznCO+2ldjbNk4tuTInLeUlIrFrJ/iTJRSlqipxnerz9nydCjAPpVM5HzddKpxribcR9owSzTNOqoB5UYrPMg/uz81zvVe/Cyqf5pNFHMm1VN0PFDJW6W2GqBM10wdfnKg1zZsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772599493; c=relaxed/simple;
	bh=tCsyahoEhKGKxTkqP9UM2FCM8WYM730er36MB7hpHEM=;
	h=To:Subject:From:Message-Id:Date; b=U67nM340UZLXupJx9sGrLII4kZ1pfTkKFqOJvjOhTAZfiAXfIhBv7szRy9ULdw8Nmh83KA929iexIglCzOKtaKpEj2uTzdYKxLPx+mvypA0mV+sQb8H7a8/2DXmA3D+c3xQMo7c2xahUAfkuxfTk6b2WmFTYvFgyOBy6N8FfC/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JoAII3cV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JoAII3cV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7DFFC19423
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 04:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772599493;
	bh=tCsyahoEhKGKxTkqP9UM2FCM8WYM730er36MB7hpHEM=;
	h=To:Subject:From:Date:From;
	b=JoAII3cVVSgXp6/cMWSNekkr7PcBETYVQAgQ6pRU/MYc5gaU0+Zri54a5AJRQYt45
	 7aXOngTQnbBbXxnhpv99nG2MkWSnhUrDpJmTopw77kNP7GXAWHHBI7czKttKZjwAzI
	 KIhFVaclOV+a/hd2JHS9T0AjcORm7xqfOd1LLT7SuqinQjO1I6k56OVVwSXB26r0nM
	 bOafcLx2uZRzkkIyfln5IU9lqtO4DplrMH+UscfJYXisbC0nKZhBuWQvjNjJHmmf6d
	 0OhU9Y3f97eTZzyOgYNzZiSa21lb5NL2oXJluuSXQ9phlcyi7pj9g3H3rBZzewag8u
	 m/fCtsy+44XWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3EA9EDEC08
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 04:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177259949362.17643.15242295748818269955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80cc2e35d5e7803891d76f9594e774bbc4af900b0cab0a7e87c271df2b93b8a4
Date: Wed, 04 Mar 2026 04:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772599493
