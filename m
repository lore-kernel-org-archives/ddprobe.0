Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14A82946A
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 22:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772921694; cv=none; b=Sadm05a8P6JYPVALYrQzpOVoUcv+rU4sBj5yM0Uvg7BtD7DVH9s+zLfMiFjLcy4FYH/M/hhptQOIRE6So8SEp1hVyXCyHMAKgZvgjQ5k36jBNs2IO8k6YakTY6GvFci5dMSxi8NieY6BSwHzPcLta8oHYSXewwKZxlY0vVXaklQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772921694; c=relaxed/simple;
	bh=1DfKTD24wGnUuIUXqJ0T0DCv+bXNqsB4GGievCoaE68=;
	h=To:Subject:From:Message-Id:Date; b=L6+WYpQRAM7GFo2FFDl4R6jWyz2vND+RJxnO/hIf0iftToP5w42jrfal98sJT4/bvvSZF8fRdMxhlRWFZHuZRYQFIJoYukwiRIPB6pxpAFdJ2tTsNCDsnsDcEs6DAb6qEO1bs27OjL0oOYkZAbLjCG/EXLBB3rAN6BrnxWhQwYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cbcn1dja; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cbcn1dja"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86D3C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 22:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772921693;
	bh=1DfKTD24wGnUuIUXqJ0T0DCv+bXNqsB4GGievCoaE68=;
	h=To:Subject:From:Date:From;
	b=cbcn1djazyLdH8dGzFftAokjmIEI8Y9pqM04wDvxaJdv4czrtDIugbtJHD7duu/2q
	 K3tiiwYtUxMySKkkxtfeaEuGAKgOnRi2TRpO4PdTBHsQ3psppe5YvUWB5zmeCCrS2S
	 Cj4AGJt/VAwHMtDANIXICaqEHVg33+Le/O/hUzf1QuvqKP8fyI94f+auK/u9oxPWeq
	 BoBtVoP599TghDRKUZOOc9DYz2wMG/Y3/XdQ/pOc7KvJKyaQes7PIky/heEub8Z5V1
	 Ml3Nw2AWGCCi7eK4DUJjuMK2Ldi0qizCxQmWsnPJyt1ai6l05WKXynlwhb5lLTDE5e
	 q0aNh/mMlODkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957E1F5510F
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 22:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177292169357.2696.2554764260023148749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cc9f45790e4ed59cc0e4c31acdb33162e7a33c458fa84c3ac0022fe72929e19
Date: Sat, 07 Mar 2026 22:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772921693
