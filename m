Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E9C27D77D
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758760794; cv=none; b=X/ljYqbnw8005tDAwxOSc9cVwGYolEqWhHudLKe0i2PWuDTeYI8GZDken0iJco11qePGkdqRfoo8L9lmEhccUgsVkKW7P32aLePsnuNUrCX26VtyKc4udC5bi/MQGXasNzNEnpugq4HiMLV54iLyZ2OdkjsbqKRXBH0zXdeGQPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758760794; c=relaxed/simple;
	bh=697Ml3NYVY24jzeGaLzwQeEhGx7hSxRp+wo6G6D4Waw=;
	h=To:Subject:From:Message-Id:Date; b=eYYfS1u2xZDx0mZVkcfxqo2WLXt6JxGV8sCuDmTtbubnVl9ljVEzpLl2VBr6RoVFtNyL6DnXE7tDtT7c9peXvlFY/SCoFhUUd1AJn5vln9J//KFB6mDd5cORrCYs1+mlps0775BJKO//1mCfPqQMNiLg9yH0YKChhMUW8ieN56I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DGlhZlWM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DGlhZlWM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8693C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758760793;
	bh=697Ml3NYVY24jzeGaLzwQeEhGx7hSxRp+wo6G6D4Waw=;
	h=To:Subject:From:Date:From;
	b=DGlhZlWMt8dxC8Fggu9lV8cC/RfaP4VamovIvyWa8IQCM957AHpE94/Kv+BkRiMBH
	 uu4lZTLXNKYQ3wv3WjWg2EdEcCZlz+J3CJ+mAa3Fl5TlvEnHxf7y3OJ3SoKIw4nkSW
	 vatC+qPK4O7TfWrJWuaEJDPT1/xqbvgjqQ+GGZLQ83En8WuJCPejUPdeTL1kzEnMcb
	 cjNPw64pPdB6af+Fu0hkqLCcFxQPfD5XDStAYWSEL+5+4lzOQ+pB4EtSVWNqL359HU
	 UHsNLaSNbwoAzxxbRolqX+sP14RsCwUwZtWbUXfPX7I7OcpXobeIGmmeGU37Q9FdYF
	 9UQ52YgenK0WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BD7CAC5A5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175876079358.3293.11909064883908594115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 241084b2208ff3956b567ff3f7a8d78843ed673c9ea99caea39f42bc99c33b27
Date: Thu, 25 Sep 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758760793
