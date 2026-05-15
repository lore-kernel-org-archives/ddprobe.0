Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FD2E405C20
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 21:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778880034; cv=none; b=HoSEiocXpx/jlEEMbNvx7dXvm1/0DsFfavzhe5UthCsrI78hoP/M85oUivoZMekW59tMoIBW94jyuumII2fF8roO1oyJuERg+La1zBxK4Nh1VPKv6PuXt1DIGMNMajDc6WAwk66UXufWcTjqkig5E45OrugOL1UH43mblmAJq78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778880034; c=relaxed/simple;
	bh=Fw0fravUnUOYRHN2KoqwEuJ4sy79aw9wCaa/g2+rgJo=;
	h=To:Subject:From:Message-Id:Date; b=nWKR0hZWUH0AmYwxx0McZx7rBzbgB5wGE+FQq2SgvaDHYYI4IICEJ4Td5RujFdkpESC0yKlLyMjr0Up4qKHBHJc92CLBkccUdSsriq4hQ0tdZpOgB0G51BlzNXJLp9h5JKdsrgCoGwEEVP+BvpmijNj4rIwRsPd5ZEisLbkjBD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gVtxxEdw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gVtxxEdw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA9DDC2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778880033;
	bh=Fw0fravUnUOYRHN2KoqwEuJ4sy79aw9wCaa/g2+rgJo=;
	h=To:Subject:From:Date:From;
	b=gVtxxEdwsCsKyq7AmSnHkjNuPR1kXfO6Ug5A3ewVPR50nrqI+N4QPabG3Yc0lA0wL
	 9y31i+DLd3HBtgadS9xLac+EFG9xbp6s+I8FuvX/6I24qjFPP6vtzLUAkM/N3ZkK5l
	 lhC7mFaCU1/MWkrHTvAyTOtfHv7gXEf/wm9Mgzshipb63G2RadJGt1fujb7v1MbuO3
	 h9TaG4mABs+1RG7AtOwgxB7uHHMvogPoOI/bcDnEnIId+2kixrx7R35d1AE7rQ6So9
	 6MtDUYboQvVvxk0s203YXj/0Q/S38fPVqKLCgNoF5EIpN9tqUXBOfZUochE8UH37WS
	 eLwm61kyrtLag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC12BCD4851
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177888003369.11968.1055984229980164920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e565bf19e0bca0766776b090bcc9252f30846ac2bc2a4e0d60260ecf0ce62b86
Date: Fri, 15 May 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778880033
