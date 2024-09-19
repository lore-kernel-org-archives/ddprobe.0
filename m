Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B01619E7F0
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726765554; cv=none; b=DpzHIwBzFZll0FRPHTEQ4ikzgEZM5pUUNQtKIWjk2lAHHHNz6URB4prPOKJ2/4NlGW3LfK1vccRTjUVo/bXY1EhDxqFvF0l6vmQm7syrFOnFSsJrfBMT2cmudsg+lC+/nbt9Ww4tMtswsGVthHUSkiH42/hpi6iWhHNguEI2ikY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726765554; c=relaxed/simple;
	bh=Z7qtvfIFCAr//I2UsnyJQMBj5Dnka3IdpENY4DRsiLI=;
	h=To:Subject:From:Message-Id:Date; b=hf+s4aDqaiEhIG2Vs2tQFdIEAiREB5XbQMck8o/H4NjfCpmVDn0xCAG6NQqm/9i2U8fQThE72uOPyltt6G4Wz9+5kOADqlIEcXp3g3QDHyQa4wo0rhuuDMF7WUBMMbY6sOibWD6zo/vCUeVuYgGkxCHUwxBrKzwR6kjoFQVSyac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QYdBj9fS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QYdBj9fS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD66AC4CEC6
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726765553;
	bh=Z7qtvfIFCAr//I2UsnyJQMBj5Dnka3IdpENY4DRsiLI=;
	h=To:Subject:From:Date:From;
	b=QYdBj9fSl9r4LAxBCxD049SWzr6UhUenC65vTSwRlPYtdkEkzBZYQ1RnNzmhoxF+1
	 x4xxLdEx0FqiBDtUYQeeiuTZBSBHbUZHg+kJsQ7UHtQGFT+b21slOUFZc95aYUmuVJ
	 lhB38+5wBvqkjBwXm8nXEPb3pFERoSLVK/TyoiHnTZUDfUxM1Sy1AgBzbRN6aVjKsx
	 VhVdwfoaqa3mwd22taVjUKurUD621sHi08KKeNnzdPJmwVlUWOQN0cTFHaNiVtGVbS
	 H6/BQyGz/Mj4jikO2SKZY7Ob5MKPtSNPdGK2C2Scp0E1nciULxG7UV6415l8cJyJ5b
	 xDhhGEbiEJenw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4EFFCF3962
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172676555362.11774.16584364636218302810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 129905c0675259396626cf4c31e63a9047217a038aa6eeb3072c274176793f1e
Date: Thu, 19 Sep 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726765553
