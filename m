Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA0D1F1518
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759957794; cv=none; b=C+fJigDT0aRmC6cjHh2AiO9ChyTJ7v5a+SGQP5vqdYqk7UccFMeSFTSVhcKVGyc+evxfVysEROC5WW3iuhzcDPoQPFXN0Eqr4T3GpMa77EwPEA4drD5q4hGTj18QOhHSHIBm2UO/PILOLfzwwpc80T6RZ8Xq3AsldbXN1K8CHHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759957794; c=relaxed/simple;
	bh=xjUYQKy+YX471rRmsbQsOB37uPlxBU+kW7SJzORfuYM=;
	h=To:Subject:From:Message-Id:Date; b=rLOTi1QV7Xl4xOsYw7OXo2imvbjmuvj9MwWBaGKgQsLzujeKziBc3+9azTO4lH/6DhtFO8ZfNTjU0tH4sukKizFl2BRcZbmUfCJX1hjals8t+W5CvJ1HIk/qPi3iZEHfG5Y9b4klPEanEXc3BkN2WSQvgZxOPyexyM93ltpI0XU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tt3WK9T2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tt3WK9T2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E85C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759957793;
	bh=xjUYQKy+YX471rRmsbQsOB37uPlxBU+kW7SJzORfuYM=;
	h=To:Subject:From:Date:From;
	b=Tt3WK9T2KbavKNwfcCX+LKYyZ++EDjmwtKsjGEW4HKOYMkyvwZH2kzThqMGzLZjL2
	 F0WKr6rvf8qnMcJ2HTAhjVKuJ0erOXvoOZ728rkk9zbI1gpQoGPQN9U1MkMxGWYK/C
	 wXdhfGUFtEB/3ZRLBbEsKjyeTtc6GkRsTe9akj860vDJb7IkAqjyRDDAwf3pqckibP
	 S6RL7bm515CcLPeD9W0n+AVKmnOpJvJ2JWp5MdNqgaSAoZPtIwkfIVmzCm7ir4Hxs4
	 esu0bch+3Tq72S308/JqtO6OPEgMPFcaP1SR2I+f8iVNP1muJO7NkGobM0tEAg+YPJ
	 j5nVwCcpl6lTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947A5CCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175995779358.17679.1954614266004012755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6735d10b40c10c4391ec18ab85f925ab380a8d14910ccc6641cd37d94a6718da
Date: Wed, 08 Oct 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759957793
