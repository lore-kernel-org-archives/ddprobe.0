Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59FD425D53B
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790965234; cv=none; b=LcQtqJtAE86QEnhK7TiWMwqTYudISaeaBaIGU0wrpxx4LTLufGSPH3KxCZxAJP/KFV6y2g906g9XjHpTNkKH5xYScyMNQ9WjUoJSI+XWR8/as3DaIgUPKC9HvWDk8x5SOqwAHggMWcTGznJwJJSPHf25ZsjspntDU2MD6hmDZU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790965234; c=relaxed/simple;
	bh=dmTlH+le9z5EHjKUvLc7+JJB016EvHO3HX2OdtEUExo=;
	h=To:Subject:From:Message-Id:Date; b=q9qzbR/xx+d1iltI+pyRyvYAI1r0KmxLBnSxvKRnUTxT30ojr/FbKZCRgQUdppKbsdZAlsc8XgALSO+96JkySfkEDp/Ug8C7zWL0ny02CMsSpBz2j8wRdsk+AkeqShJPR0nj3GxO8efE6k7P1QQhmvHcFEcP42uNCMfcbjWka3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OBlmA/Ud; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OBlmA/Ud"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E63F7C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790965233;
	bh=dmTlH+le9z5EHjKUvLc7+JJB016EvHO3HX2OdtEUExo=;
	h=To:Subject:From:Date:From;
	b=OBlmA/UdB6EQfcCejVK1wBQ9IUCC1k+txtz62Tb+zqKCC9dSGk8PNkyl60vCNiRwH
	 XZMAfSb7fEut8XTWPnBdE+C7n+Hl+3qo3oTAh0UvmTfeRgO0E3g/HeoP0LiekXZyhb
	 su4nUVyncXWON/83R8Uxypl77bJXxSdLeV5YK1oPOMJS211xGAtwcXdq2r6pZHTqoN
	 jJna72Pvfhqd2vQbxFgdlVzUKJnisIIVmmkNjlrbhvzHiC7I1b20rzX9OqpTGLI2vH
	 fWymZbdx1sxbxSSjpbbvO4ALuFBKYy5S2GMphQ59OEU0QO700tYrhKGRFdk0v3G/Z+
	 X3+7OExijML3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E1CCA5FD4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179096523369.23628.1929594863223687200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 413a431583a3bdce382ce2c6f2b508e5978b05f255ecc1d0a079eca7754f99a3
Date: Fri, 02 Oct 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790965233
