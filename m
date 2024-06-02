Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62C6E3C0D
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 06:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717308923; cv=none; b=XaeutygOWNEmeiqFd31uKe/H0Akr67KQWagRlSpgvYtSTaDcivwDfRYdpOs1k7ntq29afolAeqJkdnyda2JigfEdlq8f2oKYNFqeCaXjZghEnfVZxwbO57/vqi9O+XrqWw0QwKI8GJX90RMtlnD7bSBKth6E0WIeEQvJHlOnsqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717308923; c=relaxed/simple;
	bh=LJiDP0XMyEqtkK5N1BTw8SjZGW1L2jG+NJ3YD0pRXbs=;
	h=To:Subject:From:Message-Id:Date; b=qVu2spAjmL9myy1zqbi7kpNLX/HVEoPwWPquSHMqsWwSZBp0fjtU2Aj2uqdewdB1kUnSYk5tsVadqyevcqkoY7sMOKD86/mL8Tbi8xNF6EKsbckP7Syz37OPSXN4WOsYdM8HqBxWpVYaCpgMe54r3gpxmv7pjOETQeMHjrH+tLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=myoRBHBs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="myoRBHBs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2BAAC2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 06:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717308922;
	bh=LJiDP0XMyEqtkK5N1BTw8SjZGW1L2jG+NJ3YD0pRXbs=;
	h=To:Subject:From:Date:From;
	b=myoRBHBsBJE+OP51oosqYPJq3XWY2FnsGaXhfxkF3iKQsg93Tb6O4mif8QwAt2j2W
	 TQ7CLAsDV95THTXGl7xlZuM2c17c+t9zF876cswq1VUWqOpXh0EQOxDjii3mXdQC7x
	 d9xiI7nnR2IoV8RASmv/kd/GD01VSdowmAhBmr7RsMpJPYcXAQ5IVt2L/t7J61dAlx
	 Da6owE3nVjYjRvZ3PHoYHwHIFLA8YtUIqzsemhZtbjZO5Xue5Z/kbim0+KRdGNoNKp
	 htXg3wvHsi+6ApTfgt4FY7uh8s/AemAGl5piqyubKnZmIx/DY/NDV5NJHDyRMwc/PO
	 eFuUkkO9daJEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD7CBC25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 06:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171730892275.10089.10053446852684202001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a16143ce47907f5d8a84233ae2169c6e646f597b0f18b582d8949d25066b468c
Date: Sun, 02 Jun 2024 06:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717308922
