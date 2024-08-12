Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A1A31E504
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723475154; cv=none; b=p0QzQCO9LjYYHegYn8ao72pyP/iUWSeNReUoY+u4SM9RvbW8TnAvBMD1nYWJkCzt7L/cf9spLB7f7B8EjhCeLvcUJ/qZwAVfyOBYpeCkxqgSq3Ib7JT3SS01W9DC07Zbnu/WFMXiGtKAreFuwL0612GRCmvZKG+whrAl5ezLmWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723475154; c=relaxed/simple;
	bh=PW+xSSR4iTXRWPAYBV6d17EcecU/Eof4wUcBf2g3CcE=;
	h=To:Subject:From:Message-Id:Date; b=bIr+xAA/kvP5YWK2GetfxdKHhD3BFormHiTPJNjmQ9/wmhTgNn4V9tO4VKnGrWnuL90ulY4X4KK+ebmFHQ3ny/SjEV3gjsiDoqTdAKS7DbJpjCJG214ibrsWsRvd0ZUTXbcHcCbTPw56yM1/HuWx5UyM6yPaWs6ypizPJ8cHPk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LF4ge0Vm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LF4ge0Vm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A923AC32782
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723475153;
	bh=PW+xSSR4iTXRWPAYBV6d17EcecU/Eof4wUcBf2g3CcE=;
	h=To:Subject:From:Date:From;
	b=LF4ge0Vm/ACdni7CvY5wQNtDOfn5eGLuB7oL8+fm/UJjM3MZ3nu0yw5Ny7p3fqEg0
	 9eMA8tD3cfxkuT2PmPD2WwQOcG2zRdIxGiyBjkn+qRkxU8rlcJO0ugasljDqmONRM0
	 w2nUBKF53GDqcTULD+/kjAJvuaqcOKfhqOhHIyx39kU/hTAQldPGm4dVaIlKmLwSoO
	 BeIz8t1Z/iwEZN3OgD1KkQwBwMqtaTzsdBBBiCit6nGGCn8M+pNkta76aN8guBuW+V
	 vjuQv5DICfXiuhLGSpHC26nMo+Ry7VJZLonOSJGd1NFXFS4oC4ruZ15qzx1P3cBQ+e
	 DQPuepjulXpjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973F7C3DA7F
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172347515360.10285.2134915937431865289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72a4dc52cb5d7611a2e01582a900295af7d201f29ae26a483dc289435e60bf88
Date: Mon, 12 Aug 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723475153
