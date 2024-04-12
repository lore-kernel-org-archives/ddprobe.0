Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8900E84A35
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 16:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712939963; cv=none; b=lQYJxNN1Go1VdDo9j2JiAa1roLanTVx2N8uRpSvew+J6PhFdc5eyMJ3R619ysHjVO0rqS109C3jV1fS8xlzwDiSNu+baMyKsUzQZcCFm23Rj8sRnxKGufRN8QUypFTOn7h5OkAhc1uLRH4BgwFxZKIdpO8lFeT/yRR/jeFgd498=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712939963; c=relaxed/simple;
	bh=fG2Ai6Lv/0UdvvQexVSfzjNI6WD3/SkBM5wK0Z6a6MU=;
	h=To:Subject:From:Message-Id:Date; b=VYCCTCi3dNyXQXIOzAy6AdBs/OXvd4NrQXwvZgfgZre7Vo0ZVT67wWAqAjVk/5X/th9V942gFubIRs6566NY7Z943T3A0MNxK5HwkzkgB0fiHoYsy5Bo4Uc3gSbyRwxNA/cRpXZZM+rj9FVY1iBVoDKCpHK9nsBYxq+9OuOmY28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aViikUmY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aViikUmY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDBA5C113CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 16:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712939963;
	bh=fG2Ai6Lv/0UdvvQexVSfzjNI6WD3/SkBM5wK0Z6a6MU=;
	h=To:Subject:From:Date:From;
	b=aViikUmYbwf3LLZugHW7OUx5SgM3AT8g2/A7DoGuKpfdxN0wPUGJNFMt/Vk/TNiQm
	 Y/HApsCrHrOeK7pYAgtLCCmW4/y0phsrww1cZzS4ZgkjTaUH3ebgGwd5FOL61IdLyc
	 LVAwEwRkOMClP8wQqzyh5E7V8C8mR9eoIIqf8fJWdgYwIi8g8tRwok824K+QdTPUZN
	 JUgFgeNfS+hHorLHO+NFndl6pMk1tAwAUusYE3EFIjAm07t7NhqDFT53Qa1Cac3V4o
	 L0V2ciq+j/BZu8LYqp6KrqfIs7jqnrUnH1oGvU9wza6xnC+QrIuYj3CGSg0yZf/JRY
	 xx1SShwlBPi0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D329BC4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 16:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171293996285.2329.13485513168918896393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8caf3d42b19400c6d0b8694a09f97eb3403b156fa5c9f7efd5d6a3438dca120
Date: Fri, 12 Apr 2024 16:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712939962
