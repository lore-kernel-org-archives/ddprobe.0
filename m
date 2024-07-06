Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B7D8208BA
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 23:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720308383; cv=none; b=FKGH8qqQdYee6xNrCgtSR/ksXIwoj8q6Xdy2zAcqmUTabmO9O5Pl03rVrlt9Hdus1xx7zC5LukutB2IlLummaUFjPMJcWLykLE9Xu5YwrRUBeaGZTFMCwr/IACEOD5ZtqOdAPusAzxdb4O4Cic/Boq07H/fAo0DExHHc0V1cPEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720308383; c=relaxed/simple;
	bh=0QJo3YFxjspfzOboDD9JofU9ZOjLqxIsvhk2y4jivMk=;
	h=To:Subject:From:Message-Id:Date; b=kbn52KTyXFiYC5fsV8xqlad3oMei/aOH/9okgG9gsJl9Vw9ota5Z8MFOEGXGrYAEALxvo+4Dbd+oOOc9uJaN2IHahbyVe2C7wmVykp8hBibNpPft0cXNacwSP3QGQHoEEMTSpkLlKoKezyDL0r5r3AQahatb4kkMuWpUsJNC4lo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uu+SNiLZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uu+SNiLZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5415C4AF0E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 23:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720308382;
	bh=0QJo3YFxjspfzOboDD9JofU9ZOjLqxIsvhk2y4jivMk=;
	h=To:Subject:From:Date:From;
	b=uu+SNiLZOBAHQlgOPrhRN9bYahJ7G3/ZXEflgMas3yaxEmz3XXGUsqRy27h1X9PlT
	 mNV9x1+7s+g8kV0M5vP7I0Th07UwCTOZ0wIcFp5elAgpLBiM87hEmos4pRJUakGJjE
	 W+4nqtqanSZ1AOu4v1G2y0FdVTLH23MJeM9ZmLz/liClB3dxk+ozH3cdnbqcywwA6O
	 Vhr45J0Ykups5pjzH/dF35QeKt0GQrTQFZlaqGE1t+clU9Qr7s8DNqMS4mbFoxRM8q
	 4oNYnjIhqguRrbBGPT812ZeXgUVxPjvT6YPElZZJf6aiafS9IPqTZLs1Z3G0JYJ9vK
	 NhhT6zs2a+L2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF59AC2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 23:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172030838276.2417.11889732509621479312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22355b09660667e9f97ff90ef83ed1fd70833f7a7c627be07ebe2b893a3ec9a0
Date: Sat, 06 Jul 2024 23:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720308382
