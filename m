Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FC20367
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743575994; cv=none; b=QB1t2SCirrf0rfpoKU1XOgjd9ZhifrpxvQWRp/R1pixlsf2tjCDQ+yh0EJ9fHyNfGKuFKOej3KN5yUR2/UNKWzItiAN4NWOyXPsuczhF4pYcBru+NOucwYjCY9gpJDZqJ0P9Vsal4KhfssIXueLW8iBUKOhNtjlvjULu++j8YAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743575994; c=relaxed/simple;
	bh=8jDtlmCmFIPcm4y3kcz3Q2K1L9wwm59CcXQcuBDB/wE=;
	h=To:Subject:From:Message-Id:Date; b=KVwQwPwnPZTwmu87cLTd9RCPnO/2iaaPiZ6+RgrKxrI/iAyPxBqgjL4Fgu3JKcUEEQQeEurwrhgnknyXuN3V3tdY+zavOvLNg26du3LWJ6kysBU7c8/YK2sRldMiEnswyP2cE7osncB5u0e+3wayGii8gQ85EoTEFjdLj21MikY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CTu0zWLL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CTu0zWLL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4B90C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743575993;
	bh=8jDtlmCmFIPcm4y3kcz3Q2K1L9wwm59CcXQcuBDB/wE=;
	h=To:Subject:From:Date:From;
	b=CTu0zWLLdRX+NzDbythLiRIYzy4pv2VxWy4HRj+OuOwPjO6tgeTS9nULu/dzr1xJf
	 DJLEQ8gvMgsSsbD95lOfBmI4JPza0GMZXo3sjKo/yPtRYpzxGguQL0dQWpqIOrWUah
	 HArsmtmO8WkBaF93MlNT8WrafgxJRzCfQsxkqhgmQq9WAWnF1oIzPe5/+W6KtZQoOx
	 xeuEtQqkeqKToC+6YTE8qePAgibNcqvGYc3JIJbSZbsiLbNxqy0WKCyLaIfFEfw+Q3
	 QSan1N0KI2WhQ4j/cDkMisrF5kEn59XfsRGyaO6jQFNqwspA1Dg3hpt4gu8Iqt8C5V
	 caQjIX5ry0sww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2F44C28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174357599365.7796.12379697260287594408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48e6488dfccaba91213fb67198f1568ab3910f95047b432483e16cc8020d7476
Date: Wed, 02 Apr 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743575993
