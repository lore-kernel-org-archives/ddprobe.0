Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D6B2E634
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726874754; cv=none; b=IzVR6Ol0IaPR7nEAOnNGlA8hLLpHZ2WSxwIHLjDAoyU+oSb5lLgZ9II5qEJyaefvyYMMOgOHlZDYUJIjbNY21KIifAwoQpxrj/jfMbpIclenYEpUpHWwHdnwL2lPLUx5YDOL4lDC+4CwTDnVVu709xmiWeUJx6wdDP04kSyIu9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726874754; c=relaxed/simple;
	bh=grE/9KspMmRQaB7YZlYjFnROynK9JhzRDKeHsLEW14Q=;
	h=To:Subject:From:Message-Id:Date; b=YjKrHhCMEo4oz8OIAI6avkkswHxQLqbFDQHLVaoxYtpplGC7Dvtz86e4bim/f/BvnwnhSFZkNa8gaNGvwQRSatCl+N3v8C0IOG8CjmfYXUycZxTsBhwbGPpT/euT6BmVfc1f3AWBkENjnQSFQ1MHbrFzj+okuswbt7fRF2ooMZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jGTNJ3mq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jGTNJ3mq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC803C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726874753;
	bh=grE/9KspMmRQaB7YZlYjFnROynK9JhzRDKeHsLEW14Q=;
	h=To:Subject:From:Date:From;
	b=jGTNJ3mq7QZTamaVmQjchqj7vMB1JPc3/QgrEj42Qc8Ea166GeDNMVXo2oNLO03VJ
	 np5ZsOgAKlFhF2WT3lICtqim1HPxKPFPnBekzGfPK7thDCpzqWMdfr1O9tPTYG1DJ1
	 0v3GOj1bgse4GYvaCOtPKy1J53RqP79x1xKsIpcv9xSUqfxzsJwAoBqSI2RciSKa/K
	 wJ0sqnuQxPHyqcQEkmJlsiHM7lw4RmmEpBCZtgq+39qI+OnA7L17D5dWrFlFPu6jIO
	 Igacz0niMZJX1ck0y44yYfqWSCpF60uIYn1bWnXvRsOy6HJYxk5YO7z90+vSSA48pG
	 XAf+xXs3mQ3gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99972CF9C5C
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172687475359.10143.7314542034243185362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31fc1c9857e14edd0f3540ec81166e489defc607450ae69fffab77b94feaa89a
Date: Fri, 20 Sep 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726874753
