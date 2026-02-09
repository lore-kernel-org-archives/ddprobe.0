Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBACF37FF4C
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 15:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770651833; cv=none; b=jgQVzTuPO5Zluixjz7LLACPk32DbwsoDlWCG/zDvrp/nItIYR3Lrs2gKHICSlMImc4qSQnokGaN8jT360X5B1gU/J41A75J8CcUDM4/93eeZZv64RQPqyNhvzgaBWdX+QseKxEdUOch7HMZMMVwjrkIbEein7V76sHuKrnsfvRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770651833; c=relaxed/simple;
	bh=Xt+gwJ+a0Oin0Q4BHz/wSrLyk3GJKIvbPJctEV38vGI=;
	h=To:Subject:From:Message-Id:Date; b=iXZTK1ICBvNwajOGCNi/o7nZCH0r3EDf2+8yceNGZ/JsCym0q8sLsS2ngU1jWzAxcR3LFRvfSrHfGectc5bUIIc5GeIM0JZk0vthyV7U8tPi9z8E3h9hJ426nB5k954SNmk99bwHFefUS6wSOfHFdrhQk7MXoqwcVyQHN9JZk74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hlylgRkA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hlylgRkA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFF52C19423
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770651833;
	bh=Xt+gwJ+a0Oin0Q4BHz/wSrLyk3GJKIvbPJctEV38vGI=;
	h=To:Subject:From:Date:From;
	b=hlylgRkALMaXcBCThIpLKkryGz866jxAIo6krAFRMPLexOtYtfz8D2BnBC+9UURly
	 r+p2n9VigVLP7ICBkpCbqaAub2IaC3Hvvmnmn//WMkgAzkjMeDT49nuG67lBLC/nkY
	 t+AKbBqajcyw9q/7VgQ4SCvQmXBLREabVWf/371d4g1t+9Inn8Whtfq4xZoGkyplt6
	 ux7IYqWUfL/24GjqJwWYwow01uopQkPQSU7BTv5+08hVXOiA3xkojLc9OB/jMnSVdS
	 W1UKCabZsJM4YL+auM5yuc9FKAOOVeZ+gIUdJiX8SmskZdJSg6JOVrefVSo3s4pp5s
	 FmKQxKrWcz9Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F9FDE81BD3
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 15:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177065183364.21838.2171122824100592980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2a0a65aa5df7546c1f2e05afd030b01189f2aa61ee1bff6c311e813f503d600
Date: Mon, 09 Feb 2026 15:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770651833
