Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EC65175AA
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 09:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715504543; cv=none; b=nodrgkOK8RxHP2fv50auivknZ37GhVzsy+clep9KbH6Edtilqc7WHjedbohCmoMyiUf0Hrvn6IzhPNUzUfP+rD0TImp1adZdJm0SxjGBW/6jWfvHYtPg4nKni3FP8fljts/kx++HryIy4vq0ahaE6bNP8eK0wbgjTStHNN3DaDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715504543; c=relaxed/simple;
	bh=LO2PY+t8PeER4nj+/f1a5qJY3ShpCyNAsuTNhxWLJlE=;
	h=To:Subject:From:Message-Id:Date; b=aWzxA6HKudHttkt9e5ko+qBuiMEozWRu1hfuR4wvTMrgpNr6+yfQsmyxr53y3wTcQU7XesDkxzdPIoe6iJIaqdIfBj3050aMpgTVci78FVoulukZZIInVVl1EzMjId+ZobD5I/8yUqoHkBTm96DT2YT5ghEZOgei3TACzvIxXwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NL/1Krry; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NL/1Krry"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E59D0C116B1
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 09:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715504542;
	bh=LO2PY+t8PeER4nj+/f1a5qJY3ShpCyNAsuTNhxWLJlE=;
	h=To:Subject:From:Date:From;
	b=NL/1Krry+onEYwUU0CrxNuGP5yURigrXKEUhB4J76KQeZ55iAsx4dkfkTieun5Aj5
	 5W9AE7i3VvCNNlU2Okz0Lfby19eALXLa0atdYz1U4nWfg+xv2X3uXULBWdocbQwOyN
	 BvwSKJGUS2jQDXC0E6xdtYP/cQgu+tHfHPiK2/pqRsxKbZsl2+agJ4D57VszwBdt4i
	 kw7eUozkURZwl49Y+QHZxpLEthJfewNQEsmCyqSo1gSKqHGFye8el+bZvCkRK18jlD
	 cIRfOfnd5dxMWX/Kwj8457f81dnKed/im2w8cEIaqX1XFAI7CtKoSeOgpjIOjgDawO
	 EGZgOrmsRksJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7830C10F1A
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 09:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171550454280.16533.8340957086732231955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cb180013db9fff46e39031c423deecb03f72ed9e39df10c5026a9dcaaacf7f3
Date: Sun, 12 May 2024 09:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715504542
