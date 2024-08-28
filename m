Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FF4811CA0
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724807154; cv=none; b=tqInRWiw59/4Dx+P4LiKtX25oXY+hGguBRlOC9jAMYv9q/w5ZvuFjc12LSPM93BBHwvQA8r7JsFjo807w9z/AhJZkP0ILwtf6P8EGEBU3J/5sq8/9rlkptHKKjtKUy472dCAeLdLUQqkJuFyhQhVxw5Te+OW6p1PTjGg1lP9kvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724807154; c=relaxed/simple;
	bh=V+HpgCRZK9+zp3C2w3L3FWBA7PYbh7Bj9blurDmbk6s=;
	h=To:Subject:From:Message-Id:Date; b=pLpxccQp+xl+d4SbeYS/Ye0rLjFpPg6XuuIcAiEDT/asRMxzDDZfb5qySAiuFkB4ZcFc0N7iR1ygWVvKfbxnF/7lO0a+v224IRaBbtsemqHxoZIQUOZuwuiPcNrPdjF4jralQZ959uXnJHns4GVOs31s/RORgFAT6sPE+T5PFs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g/8HfDXm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g/8HfDXm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFF57C4AF48
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724807153;
	bh=V+HpgCRZK9+zp3C2w3L3FWBA7PYbh7Bj9blurDmbk6s=;
	h=To:Subject:From:Date:From;
	b=g/8HfDXmFLTPrBpIid05Nqv4TnSlfPjQeB4K/r6VVNhZcghbeUiTWbOFI2oy2OZba
	 5S5JuuU0yW08AY+pieDMRaWAZ06uvX0cM5JtepZBw++UEskZEiK7rLd87uRRgW5IC3
	 0chhVl1iNn3e6u4ED3OEShYMrgNKGBpl0ixKBlZcWambIz1LU5co2T9HJPNUFx7XF/
	 buNXE8eY1mKQTTJCghoS2pojEWwYaLlsAwZv6q5ZP4Qto82Nm+VnEZcZxNH/U0sFZz
	 M9WN09eN5X+D2EExq/oUaM4XYRtUsHn8imoqcawyA3GK/hn9wJW95a+n4RaG1cJ6Sp
	 1gcHcKhUBoACw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B008C54746
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172480715359.1120.13412105196426524867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2fad1818812c42ae33d7a3466953878e42e698720eb6b12a12e2c6e01e6b249
Date: Wed, 28 Aug 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724807153
