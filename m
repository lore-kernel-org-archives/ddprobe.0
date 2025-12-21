Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1895623EA98
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 17:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766336634; cv=none; b=FZrKgfzGY3FKH7DTR78YD5nluTt0G/blaHt7Lc7/uW/nYg7PeLTwI+5SCtdoRzdMQCYKdzbjHM5qv0WkiH/bjPx3n6Re7FWs32AQXXVNcTyzV0QWcE0re6nEiNIFzDwMamxZYvh0yqI89tCp/TspNNQjudhERKOx1xVv/s2PEFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766336634; c=relaxed/simple;
	bh=2DrOBNMlwsdgxuFklQJQcungZYGi4jquzcGKedXzrGc=;
	h=To:Subject:From:Message-Id:Date; b=goSr8QprsQSEuKRhlJwRdQWTDaZ4RcaocDZ8Zim+RuBoDE4zO0YeWhgsVS6+EiODsOoM1ehf03Z4rjCyr0LlYGoovry0EapUBLse+O7pzx4HWEMW988l6oltIHvaLeTK4xlUdcmJxx+2Z9IjONHT/bJbzlV8b6Usn7ywUJ8Dmf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dbEDu0W0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dbEDu0W0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62B5C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 17:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766336633;
	bh=2DrOBNMlwsdgxuFklQJQcungZYGi4jquzcGKedXzrGc=;
	h=To:Subject:From:Date:From;
	b=dbEDu0W06o8zBLfaNdsZeVfZgZc3gg+wls8dRAiy0RyFPWXf+ls7l6h9aeupMY/YL
	 8x3NNZy4yRWa17LWYV+44TAbs/YOTF6/khvvhcH0bWDaHcrCDlmxvmjGmFcjTv1sKX
	 CW4K9yfVVL7VsbWYZK9dFRTt/rynOn31gri2LDmcUSm++97kMpsAsMzz7LTr+DLU/i
	 peJ/zyzlOooTWaXbi0JzsITIBE/KTCncPMmJrKFEp6eD0fDRTDhFmWF+ZQer38xcP+
	 JfgnxEepiGnEE3Ulv2mbbDf0MqtZasKZXl2p4+KdYXoFNC57+Dcy8936pynfHyY6XJ
	 pYPw1vm7niQWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C8FE67482
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 17:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176633663358.3143.3707512631950398983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a7c80f32c668602d9397d53136a53e25c53e1569dae0e1b8ff6f5d4a424a4d1
Date: Sun, 21 Dec 2025 17:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766336633
