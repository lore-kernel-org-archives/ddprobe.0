Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C2263630A2
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 07:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773904494; cv=none; b=XBjsP+21xb7FKgh/kkDFDYX3OH9DKsgUSLJsODnVJE7x6SzPXnHfLfnH8omjlh6ZaawuYk1NiJZtJQ5ytwnHxxGKDLvb3EVbeQoq8ymMj9WY5BQZCl/vw4ugUNeV4qelJwfLwKlMRtdrNKt0/O2KFEqPcimGVbGYH5FlzQEcV/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773904494; c=relaxed/simple;
	bh=l6i32UIsnY/pefhc8SE6AnXTv4zfJdoZhFLSpJ0c3ME=;
	h=To:Subject:From:Message-Id:Date; b=daTLwD9Kl+PGB7OFKD6GmgnD0Vk+keG6qK82Pv9STYx5uE11rIT5no+kYWGAnGSteDCIYM1pMWtj7A7Wuypt7FA8Bm+LSam52A9VaYB+OP9fZOyJw2486YV+agPIeKNpQd+agbV5S6En3vV67bnsH54m7Q6WBEz8tsTLNKGXf7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AL1Gy1z5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AL1Gy1z5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B11C19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 07:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773904493;
	bh=l6i32UIsnY/pefhc8SE6AnXTv4zfJdoZhFLSpJ0c3ME=;
	h=To:Subject:From:Date:From;
	b=AL1Gy1z5Ga6YSfHETZ3JUCIlMS0jqbQiUGVvWq7wHcsLPVV/jfIR6+GbEudSzDYzZ
	 dRWwDeljwlyKgBg/YOYWE4inEUXmw1btDpOxzT1VlsGB3TjDo5LazyggiU1066rNEB
	 EofBqJMu6wiVeCLRFptQGJ9cPh8yS+KjQT+d9dzPmXW4WIwVT8feDmkb3qmSWv2Ozc
	 r+fqB1WeVMtHxC9rDYf8lb26Vomiu8levbEBEzEL/Go6PuMhweAQSB8yh6g1azaVjA
	 c/uUjgNfur8rf+cV5OSVmwhnsVLxdMRnOwHU3YLBF1WvKOUbkXdrXnBS/sxrMNcXul
	 wQcjGDe0D4elQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F935107526C
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 07:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177390449358.2552.1721562362588900058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29e4cae1398d9930929bb67ef73737c823af0e328295a847801223918d2de0a1
Date: Thu, 19 Mar 2026 07:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773904493
