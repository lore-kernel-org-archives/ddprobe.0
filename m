Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D0D3C26
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751420994; cv=none; b=XpxqXx6C7qXDhkRjiJ2IFEhzmbcEX+xLIt/5OiOrxqnejypmWxaL/5yUiFXUrtWWOhhn+o/xWWi7sZWSB+78/Dmw3C0u2EaD1JQAQkUsIk0VlObY26ShXI04qdrpalk28ihF3aStJ82Yeorj/TFx2L1LgChaXqeUOkta/Y0TffI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751420994; c=relaxed/simple;
	bh=i47fxrpwken+FzVJymRMbMwMyIy9zlb3N+jWt9TIXcs=;
	h=To:Subject:From:Message-Id:Date; b=ZzecOQLSmjURVxHqEIn7YN2JSCBrFF5DOawAcvhtgvI/ER6fvHcZX7dbUQXhbrVTgXbjrdV4Ich/hJupgs06+DQFEn1fcFscrT6ZPUbbGgfIrcqbWy4dk2bVu2yzczFCYuI6Ma1KikIcRvR7+fB8btXjmU0mepl0OC9wJM1SuNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uKoLXFcT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uKoLXFcT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1047C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751420993;
	bh=i47fxrpwken+FzVJymRMbMwMyIy9zlb3N+jWt9TIXcs=;
	h=To:Subject:From:Date:From;
	b=uKoLXFcTTDtybe7NOY2zd840HkxnbgQ471WerNorQZdWyLjFdQJ5qURU63a+9o8LM
	 s4/eWnIHHqiBQnRw5c5tTcsQ5C2uQdnCRbF5MTamh16A/njGYoa24Kiv/Rq1qiJ6bE
	 7GQuY9PSh0I5J0VQsF6hhALpgjSTsgNKmtzB7rbFiCZJ3cIYASeGi3vOKRyVJ4fMuq
	 2yfMHnv1EPlZ5VHCJ8KuofcywnFqeju9k1p0R2oQ5F0HnH2fBlFNp5cLv3ET8Whu+J
	 NhyzFsju1B5chFPUMqht0Z/xnrv6RH2lzKgMtHC9mLtJnE6cuam904Jj37pmTToUib
	 Zun3L/gncU68Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE30C7EE30
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175142099357.8613.7638651556503487581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef4ebcd39bbe5df7e814621d4d08e53fe10c5ec82a8daa53f61f493566948aff
Date: Wed, 02 Jul 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751420993
