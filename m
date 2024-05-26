Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D33DE55F
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 13:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716729863; cv=none; b=Mlhm+dA9HkUiS0sOBI3L8ky9t2guMeX6dZxqTlCsZwR71FVjVKMhA4iDYHi/EGcgKRutg6suJer8+C89VaFAKU/bXzxRzKkMoo9FMpPSJNip/fKQIoXtEM1TFaVlpFecOlr4SFQxD1Fm5jE+P+KrmQKvPwfsejA0ePrhVtQX1L0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716729863; c=relaxed/simple;
	bh=Np7qXEQzUuby4pX4fJNCWBrxg9jWo3He1STEFyRZ89E=;
	h=To:Subject:From:Message-Id:Date; b=aap5nl83gz6DN7CUQiAoSyAaolvbSbCxlX5J2rIdwzkZLiIRsR2hr8QPy/mt1YgGaUKykFIiG+idCalMLcTI8LucRrNLYXgWvoLd88oyIl37ASKw23zXl7jYInURRG26bTHUE1vIUb23wZYJrKFCxPN5XwpfjQKVZpC15tsypbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LGqGUH6P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LGqGUH6P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E346AC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 13:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716729862;
	bh=Np7qXEQzUuby4pX4fJNCWBrxg9jWo3He1STEFyRZ89E=;
	h=To:Subject:From:Date:From;
	b=LGqGUH6PmBfl7q8S65cIKMC0rdmKdZcDtONzPJuyabjv9Xkvd/DHMAifZfIJkxypi
	 7RfKKQB8tSN6hcWjfskZnbNIZzkDwW1uXIRiFTcWoVY9giy/r2nOn2skWhyBiUDw8g
	 493fHYDvEJ9HEBri3oJizeckB7bQ07rLZkbafMUKFyDyfIDp93hp0F5Dh3yADPzHwA
	 JIjVa90sewsNxlq3sXmFd0jHiaHb7IXS12zniLCnL//kjjJrJ5E6K9g0QrdIpv99IA
	 AQr3YoPmePR9hHNvK1Bc3IBNcF67FtVXykPX8H9X+L/RpI/oHzK7CLFTJ5kBoT/myS
	 Tzzvsrorveb3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C79FCC25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 13:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171672986281.31205.1957355616365727483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25b8c0703cad0f690096591205bb2d54574d136fb936ab13ccd808388195bc3a
Date: Sun, 26 May 2024 13:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716729862
