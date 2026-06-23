Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 410671E5207
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 18:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782238594; cv=none; b=Y1f1I6TxKp0qjkGFq4Ch6HBzxa/bOBOpGlsxxr61+gjKRtfXElP2SdbDUI+kfJn/78dQYxz+uqH9xpqq3adkmYcUcbD/lLDFJ2YB+VKFY2xNBV1vgss/cYZcza4EkuyZRFgjvcX3qoNueBbueT34UDfXBZ3iWO38CVynj9x2MbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782238594; c=relaxed/simple;
	bh=oPPfnZrbGZhTGvmX7ZEBvefDCq8Sp6n2KyxVOhqz8EI=;
	h=To:Subject:From:Message-Id:Date; b=LgS8+G8OY3iER7TwTGXEWlEfk/v/a+lwSyevTo1eX0y1PBhXXZZsjAxD5/Q8fLfPTAc0tmoLgg87uKPRwjlArWkoqpmT0OKd1ofcTnxrcX507V5yz/xUgAlUwVLW2CK12FijGDf90pcRqEx35MM9yRXP9+aRnZQ1jRAkvKpKjGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DmB3BGOq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DmB3BGOq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8BCBC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 18:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782238593;
	bh=oPPfnZrbGZhTGvmX7ZEBvefDCq8Sp6n2KyxVOhqz8EI=;
	h=To:Subject:From:Date:From;
	b=DmB3BGOqDtNQIlsxQvntgeDRgOXgadiZ0VeIWncpyViClS709FIJViXa/l9ayLs/1
	 CkYeS27VlerbCWhiSGAe0fWr+uVUvJSSKVRqfNGrfL48ugFxuwRU5GbXUiLO0GCbxK
	 ADiuIkJ6AIzrnZxqWf+kjhMhVxzzDF+gzGE2uuAnnsO4+/HSr/763SsOXG+4KDwgE+
	 BOhpRdJr3W7ybn61atBEaxpWAaxeaNVX4Kwd9iK+CNiSDREkpCDEohez9100wWr9cp
	 WHGLBDrG2RPLTClmsmsdMxGVrqVQkBzefxMPuNOFjyyu5iUjIQ37hbZUz88nIcLFAJ
	 QYSzLsNi05UrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6DDCD98F2
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 18:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178223859368.9935.10324578126256890913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30c32549fbd8b0ee1719c5328d1b0da82c7cd399917dfb265df1f1c9f3f4ae1e
Date: Tue, 23 Jun 2026 18:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782238593
