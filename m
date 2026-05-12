Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 201153AE1A3
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 09:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778577034; cv=none; b=Eeu+ER4SUDqZ9bKIB2kn2Jb/Mnf7rXJ4RD2dIVmCckcD3+qFQsCv5asBv4GJUVl/5y1XeP0wgGzpE9xvKVj/DC3/QWuwaEP/gQZs+9oqzPXDhnrTx84ivWV70EQY3PW5h88NzVmudKmBazYK/MKcX6H/C8hV6mjQxg7KlM8d77Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778577034; c=relaxed/simple;
	bh=03yMQMly+79BzZodTDrs/8/dsLgAzGm53TyP45l02QY=;
	h=To:Subject:From:Message-Id:Date; b=KwiJHzEG5RFo22PTFpO/SjlbwU57JXgZ3tIPka5cIWKGtcIM2MpJzub9+tCEliNUebJjcbNW/YwtV+vLhlhPlgNITLa882UQkNbjDtoSuRhS4PTVVvoLi0CTTkTuGfLaoFx2qCXbhEIf9PCZK296iCNy8P9/1bLtcvC/2jB4PGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XQtm4Juu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XQtm4Juu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDFD7C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778577033;
	bh=03yMQMly+79BzZodTDrs/8/dsLgAzGm53TyP45l02QY=;
	h=To:Subject:From:Date:From;
	b=XQtm4JuuoEzyF5zM6zFIBQhn0DmPTC1P+zWD2J/S1aCGU1nDqnk48ZKA7KYSSwMk2
	 YuTCMcXFXVJahhOq31KcPAd57WdiWyH4naxc7aiIYQEoZsd/X5H4gEhafFAj3AJYAd
	 BRDAysyT5Li217z6veQXdmsaiFi5hKZE2xmNGAMPXFQWpcgfBzX4kbREf/fsPVZmzV
	 FgU1YEauwpP9wVEajdHtM9pDPWXC8Yra7A7aDS5h4mf+bfsUDVY+wr624RKHI150Rf
	 B78qn7PnRaLlQs4V8J+58PeoX/tnKd8Sf+X3J+dg5QcZGfKaRgNJkQLvn9KP8s+6o5
	 ZRL7X7bJRxV5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED48CD4851
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177857703369.10550.4765776332841640590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fe0b5aa49cb8702932763b7204db85ed2ea3f9a5b665422942de3031377c01d
Date: Tue, 12 May 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778577033
