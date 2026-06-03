Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C02C3A3816
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 20:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780520074; cv=none; b=HodVB5S+BWTFAyA3fzNPuDzEEWAfXCMEsuH79zbROlZfV78blAZ4SFrrJsM5kU9JnwD+xuSPtYpuHeyqFD6T7JdlHKuzGT2VOOpWdhiGuRFESFRQnKzsCSAzv1Mb9/iiZzY+zG2YyJ1ZcFznD9xCWHs1IIvAiXJOjMrgWLtz2zY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780520074; c=relaxed/simple;
	bh=btI1am79u6xJMUlEXtT3/HSarTWNpzgmnobpg/EPVvQ=;
	h=To:Subject:From:Message-Id:Date; b=CoMf4qULAwWNjIRfLluNVHZA19HUb8xMdCCOOQ6wBIE41bboLmAUVep+7wSj22iTMDa5OclDSwtx0O6yTdzJC83Fy5WTAEpN+XVsZzaIfUGOna8GDNtxYmsr621SGYXEzdqVG+c4gP4T0tuMIaYP5xL2hy9ZnbsoWY4iOao7f+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KBTSzMHi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KBTSzMHi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C35EEC2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 20:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780520073;
	bh=btI1am79u6xJMUlEXtT3/HSarTWNpzgmnobpg/EPVvQ=;
	h=To:Subject:From:Date:From;
	b=KBTSzMHi+s4KswaaJy3JAxLxhCMKCRLw+818fag1JpaNYSz9pNl4pKwly9r3J4lkf
	 KOS0hLO4+mwzAUSR/2FKIcPoA4tHcwN4IHjuGB4qhrJXlzvSiX3uc3AERwaTmszZot
	 57apPkQcnQH85YLDSJ8eUkIlx51mQ/ThSl6YhckDnM/q6IG4t1TeYuEnWDexSgxyoP
	 NCkhlOeIIwOZSCaGGIr11ENdwPxy41xWJ16t4K2vHZXoJl+xiLInV9RoXrx7BpCEw9
	 vYMmgVDiU/fGzHW8M1vhyKty+qynsPbHg6kSZqkKW2lSA+2BloXYDCoiM1beGbI1zN
	 BCiPl59TRguAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A965BCD6E6B
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 20:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178052007368.24305.11233450405688762207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8344ba6260f6451a3e34deeec6b747791113d298f0353ccd016d0997a46a55f
Date: Wed, 03 Jun 2026 20:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780520073
