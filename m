Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D5D84BE44C
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 13:10:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789650636; cv=none; b=tkZpqywIVRfnNep/b2TYG9LK8N5MpMnme9/ZRjOmQLyUE7RFYNpyugK0OzJrvHsy1jCjhMHukyAx+PoVEcdtOZ37CVwGM7kYPVEf8OAhi+gt5s+FLIkDI8mE1IZ9oyPw8H/gUas5sdeyf7dxdJfMx7tfW3tS2KsEl43jISEYAII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789650636; c=relaxed/simple;
	bh=BnT+shOeBnR/XkunFtbhtbFacEhOWBGbjM2SkUzGtms=;
	h=To:Subject:From:Message-Id:Date; b=WrhTEpKEGMmLteyXusE7ydEmcMJ3/WyEQr5QZsaaVnp7Mi18DcrfT1Spc0V9KMHLQjKZ/CRwJ5XsfycP06cWG3ftwFQQHFk+0iHVjwk+4uzx8oFqVpnIQQCF9jwdQM6cJ5RZopOewL1jCVtw3pfvFHBcsivEMtO/RbgIeMy0XXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IudmHUbr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IudmHUbr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8903C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789650633;
	bh=BnT+shOeBnR/XkunFtbhtbFacEhOWBGbjM2SkUzGtms=;
	h=To:Subject:From:Date:From;
	b=IudmHUbrTE2rgqZ0H5/ddC1OGEyolEx7ZQtzmm7Wwo16kqiOijZiLHT8e1rZR0RbG
	 6oNukA0Jcz50ETOzF+A41OjuF8UnR6E+H02fxEnzu+WydmzzpFwF/eFH2Lh+NX3otG
	 btpNXK26KH1ECwQxSRQcYucSOS5QI50vKVsbP4bofK0g2K6EhC6SsPRsrKpF8o7lJO
	 i+np0k+iFUYpuOn49onZR2vIm2BfqnMyawRHvltWhTK8xB1vWC+2tFBoNNXG4OrhRS
	 ug+gdy1dioXiPn5LmmiBpyXsSRlEREGXQwJdttGTrkO5QgKbxeA6kjutEmFYSYdYud
	 STFdSkcpVV3wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B346FC982CF
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178965063372.25471.4184675738471372784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6a7086e9adc65526d54f496c0af9846145526527ea7e077c435a3925452e039
Date: Thu, 17 Sep 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789650633
