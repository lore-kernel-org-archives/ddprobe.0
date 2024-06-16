Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80C5427715
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 12:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718541503; cv=none; b=YZ9u802c1IjBtRgEZotqIHXDDtbazayGPv6ymd5VszxoBhcxe5rvseG71jxUZmQoAp++y/cl+BgLtO1PF67kuSS/MAhScxPbnUuBWUh61Tbezd1rkop4cFUs3C+hoOfAW5Qs6oToMxvU91YGQhCCHnCwnGoYp9T3cPKiS614gRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718541503; c=relaxed/simple;
	bh=wMv9ANadwsHZenFezO6nXWo7D8NeJOqDcHwztcvT4NI=;
	h=To:Subject:From:Message-Id:Date; b=imwwm4VSpJigZ3Oeti1M41FG7+fdYxPBktjNH1EkuTnP4VNNYGPbeVtm9hXHx7WViuqnscx4EJklQgzPDIy5eot+PQtdiZqpFkf2HtzP82Qev1epSRoNkOSvr11qDEZQlldgCvgt/Fk7vrMU92vsJYYrTHZjrD24jM6nmlCNyUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oK/Ad1Tg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oK/Ad1Tg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4442C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 12:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718541502;
	bh=wMv9ANadwsHZenFezO6nXWo7D8NeJOqDcHwztcvT4NI=;
	h=To:Subject:From:Date:From;
	b=oK/Ad1TgIkPlvpXfZCtP/T1E5ggRyBL17aTIYj89aJln2KxGywv35B4FskDp68HtJ
	 N4Jx0yNUzYBrs7zVe6zm8b59qwjVb2DYgPrmxRe+R0zBll3OOD+HRCqW47ss3Ncivz
	 UXiIZPpaBdco+4Q9urgMLKEOClxKVxQzTMalmZM9EEiI20dPyuWUYVTxg0qK/UXook
	 tQ1vMKzamissjLhDePMPrOVXr7Dqdrph3vl27ea98EIHXA8Ijufa4J38m3LYvA7eJN
	 avbDr8ZrH7v1QtGJWFPqOkFR/C62fwM0pPGw5q8QrcOs7/rQYbm1aeWGaxXgEm0/Dt
	 5gEVkOddMxBXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0A86C27C53
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 12:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171854150282.26695.3031335927386941353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e30ccf02d5c4baf5a51160b02ead2038262f5fd079b662477cccd922f49ff55
Date: Sun, 16 Jun 2024 12:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718541502
