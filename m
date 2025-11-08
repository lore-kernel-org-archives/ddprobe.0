Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 124EB299949
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762567194; cv=none; b=PoYiKiVNdKkRh5Qqkt0rcEqAhouaix3FPX7hCaEO2cpC9jFMOTMY6rNCAs+uYlDbXGxTcR+W11TiISFqS2f/0z2aMV+2Mm+DOMx02o+HK+VTeFXfSxDGs5iU6sqxx2e8O/RYEDVSr/uS2XlY8r9mV511yQtKNluc7dmJv/rYbtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762567194; c=relaxed/simple;
	bh=zGq6/EgIQmXwYcLF1DZu9cGhO5kFp4dL3NJl9ZobivM=;
	h=To:Subject:From:Message-Id:Date; b=PBLqHuSH11K2w6J4Bwv8iJ2sGIWsskFp0Oi+oGAFlsGOkxt1UeoShsYuiMyOAGA3vqrZ9CexxfQs0ClM3hNS+V38n9n5j327DeUgzU/R7ByUWQyJeFeIDNyVmHlnkijcJSmKFgWPVVN9tgVlJnnGuXDO1PJKCmQEM2KgdzW/Wcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YaIgVdiU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YaIgVdiU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DE7C4CEF8
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762567193;
	bh=zGq6/EgIQmXwYcLF1DZu9cGhO5kFp4dL3NJl9ZobivM=;
	h=To:Subject:From:Date:From;
	b=YaIgVdiUrSa0/6vWG7I2LjsygynlPPt4gPB6+SO+5UHLuK0vAqYX9yXQlCX1Ey0Rc
	 +YRX/pNOtGuDSZ6qbVoqWuHeOsxBwAxlaLYj7Fm7mXrkQwc282fNqY4uhIqKiJDFXW
	 y+DYeSWbnc3iYvIgXO7ck0TnwVxYj4S+KvcMHNTvHo1LptZyIVnqWV2YMxvz/1Oe7W
	 K9pwcidlgO5ZLjcq9t20yhEFzvqF0Nl2d8KcmNtnwa5tg7gxspbKLpWTD2p4KiypKm
	 q+pwA09prOO9qQzY1fIo/ia/ohP1FAnuFZXBLF7HFZPHe8BBmtkKvcUqbTokkF+31e
	 kYH4xG1lbOetQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94171CCF9F8
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176256719359.21344.11890885601879816968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f77d6eb04bb613b0fcee016036b1c370352850f23fe6ba9bc64f625ef002effb
Date: Sat, 08 Nov 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762567193
