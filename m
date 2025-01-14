Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A5AF1D54E2
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736879154; cv=none; b=GouG9b5uDJjoV3ojQWExLWWF/F30odvDY68ZrLvTAU6lAR5uHaXvNdWdLW6goOYd6s31A3QuxSJwOBx79FwBhrOTXbmTfn/R61bJPXLAY7grtGoWg6LymET1dvqIG058ufyKX6K79mNI1pthEGdId/Qqabkapqp3+T54rkryQLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736879154; c=relaxed/simple;
	bh=6wH3eLXx+iDDuTrUQ70Q6XMYBDXJvRcDEUPMNur5iHw=;
	h=To:Subject:From:Message-Id:Date; b=dpHmSGGNWMZvy1VkL9/8uugzljoawIA5uz7JII3md6lYyDwN9+8zcIPjzaDS5UzcUYmEfH63UGGg91T/4ATKn9rY+2gMa2/mb/6IhlyP1V4lE2AdjaSeJhA7BdPeoIZRwsewyQbsgHkXaLjgexcHaH890lIKzYSTINkXe49B4Kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SGBpL8Gq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SGBpL8Gq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF5A7C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736879153;
	bh=6wH3eLXx+iDDuTrUQ70Q6XMYBDXJvRcDEUPMNur5iHw=;
	h=To:Subject:From:Date:From;
	b=SGBpL8GqId/LugMOv5YbAyundWeBfOKWpcA/z2NY0oxJ9TDASVvQh0Af4wbyjNpFx
	 p2FkStQTQtUYFp2YvvQDHbHSmKdq6A7kyqtnFJ5fO5nk4+1zeRA6Cu5R/Bxu0MrB4V
	 XLANQ7hBS7cTsnGj8F18WQUS6iGK/QkgLUySICVqB27NVepulpKU2bbBG6nv65xDTA
	 epQpFISu9+ZH42QuwkLKnv89kHSCa0YNDWx0Xax4DBFrjQtmc1+43h0fiqeTkAFjm2
	 poQ4SuZZerY8lTpvdlNGwzjydO8p+HhVU/zYOPyD8zmP9C050pQZcmFBe1+XKV1l1T
	 pfcyRYvfcr3AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D967E77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173687915363.12550.2828668736631065766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d7cb08381408e62756b9e9c04d19cfe2c49d11b87fa7f745f6008550b7e1146
Date: Tue, 14 Jan 2025 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736879153
