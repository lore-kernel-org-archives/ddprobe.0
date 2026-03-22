Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0846A37C926
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 12:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774182294; cv=none; b=XqNWqUJYWbM9GeBhzNlQbW3XPaSNejgjev25cyFPwlIyUiXmgyPWV7m1fCxCOZnr5B621yYt1YApqrJzLW7N/n2Yg/9YMBUOn2DVLS0imonNkWFyYruJTI7W4u5r3n6cL/N+155fRdAfzkg6+P863hZZXlXxibEEwRwOLXPBV0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774182294; c=relaxed/simple;
	bh=H6jh4GYpHiCi9M8ef5gsqrdg+1Mx6oVBtUMUDNXM+CI=;
	h=To:Subject:From:Message-Id:Date; b=EhuZSwcBKb4M+G13bEf2a1JZP+DdKOJipqArpmCDbFANFFb9/cooYFOkQc7qAfY2bc7Bs+5/qlfMyR6TzJg8+1thf0mxICv6Op725yYexqqncH2tqCcxH0C0yofEAdkEbvfuRdGLQOOGEKiR80sRorRQpDMVqkfO4uemV8T+LV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZGrxSLik; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZGrxSLik"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78CBC2BCB1
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 12:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774182293;
	bh=H6jh4GYpHiCi9M8ef5gsqrdg+1Mx6oVBtUMUDNXM+CI=;
	h=To:Subject:From:Date:From;
	b=ZGrxSLik04RNwaz6ou7OG2ErMCSWGfW6wvsf/fY520ULmNBWbZSqISCdEew+NnYzf
	 +DN7REiwVIOquqB8MoDPj7EfuxqTs/aQ4VySLojkf2KPn7waMKkR3zAgMPb+hdVt+m
	 3OJWXn17GBTpkkANbtuQEG/maRwmkgyNkLVcm+Pz4N3JzO7+X9KZ29mryVCiXrJDAb
	 qsIDOQKIVlah5XvkKE0nswk2o4q4GC7roPCxX1bG6yYDDM47hSyPxGmE7+TUme3LLm
	 LGgqfXDmLOWo5eSlpQApZ3cwA/eWK2VV/8b9+rZTRY5igeZN3Kf+6bQb3c97x0LTcI
	 4D9UkwVMANPpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A56FFC72AD
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 12:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177418229359.21500.7935144751830016932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85d6be9a3aaa52b622cfa89cf4cdb4022fa0f5b074790461aa18b7208df3be2e
Date: Sun, 22 Mar 2026 12:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774182293
