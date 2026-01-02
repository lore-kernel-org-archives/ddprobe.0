Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E94BC86277
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 15:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767368034; cv=none; b=cb309NkWNIt6dJKPwJ0K+jVyNszY/alabb79eYIophyRE0zgDgLDno9kcc0gBW0Mg1MuNHj9FJMa42LExFcfpZD/hDyF7Mks92RXDp+6K0aBNcMWa4A34WZ7C3m/rpAPvSojqjitRMTKbOZPRmyBkx7I0CSC1YWlv8eLdfgYs+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767368034; c=relaxed/simple;
	bh=X6omW60z94AvJHvdF59DqCkBfDEe1oOub5RRk7FY4Do=;
	h=To:Subject:From:Message-Id:Date; b=Bfv349sEnp/zrvCc1ZbBIElY1F9zJ5X9DbPm6nOYhTTBqsVakfubZjvbGtSefTjGSwvgqlIZpf3QeO3JEWia4nGWdr00lqQrdYMrBF8GC/wALMD9JNzK70Hj5IsNSMSwOHhCnLikYEtC/uXTI/rMc1SQsmQnmzGZq69NBW0KNuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SPa/RXcw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SPa/RXcw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7733C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 15:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767368033;
	bh=X6omW60z94AvJHvdF59DqCkBfDEe1oOub5RRk7FY4Do=;
	h=To:Subject:From:Date:From;
	b=SPa/RXcwjevDsMXcXEG4Yxz/9tsTUkWSlcp7sgiLcvLYz9TgtbHGI+NG4dXPI7SH0
	 mti8J5L+Cm2hdzJSfrkEql9U4Exi/d28IYVCoKYEWYabobwEaUfq17hOVWSj2zuyQ/
	 EHYoDoj0NVB29v1fzZ6cPGWgL6eVrwl35Rf7n5B2Te2J1jb9mqrKUGAMRBCBg/d8j7
	 /tDlArJ3ZlPtPcDK3QATkgN3PJaVbZT/REXaszFoTlKHxjaFCLItCN3o9JeZ3V/mx2
	 mlc8onOj6fOAMr3aiXL5A1Ths4injXMD4GKwD/kKIpAZusfew5WjvO4xhS0AJ8CERF
	 5HwV9S91chM9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F172FA374B
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 15:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176736803363.25443.3228596840971856612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66274b594d111bb58d3a703f3cb0e384895ddde517510612b69c2b70ea2955c4
Date: Fri, 02 Jan 2026 15:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767368033
