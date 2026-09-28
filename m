Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 521F432B135
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790566834; cv=none; b=KNMGOQKaVJKM9cDSozB0GcNjHlj6ynTyglynJcG/7XUaZvXeUI8e7pejv6wraoqN8KYvAqhmGsoLwEPnE6sVpA1KNT+6OgTkLmNkbJTJrTYsiGlTZHhOPWaTYAjZyMccxkpVAQCrgdi5Ipc+tBIJGyA4xANgQJxKRDnmitqYWs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790566834; c=relaxed/simple;
	bh=RbHo8zv4dVIywhP1FqX7WnEJg3XvxVFeQQV3BaDZtNk=;
	h=To:Subject:From:Message-Id:Date; b=WKYE+bNevuykU1YTGpORHoqWF6HWNHmMBgA31l0raisMHJGtfBPzvtBoRfhNoLOq7jJqPoHPtHAHJ4Ll2XbGUiRszI7J4xL33kYNnBRQvSmseEfw7nZOxC/iCTmktYlpMlYzAAYHfFPH+qMAFfWb/XtpQQcU0W5+TJ3HMRTi0ks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A5figVvG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A5figVvG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6399C4AF0B
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790566833;
	bh=RbHo8zv4dVIywhP1FqX7WnEJg3XvxVFeQQV3BaDZtNk=;
	h=To:Subject:From:Date:From;
	b=A5figVvGJxwMpgKpoXDByuB9A3jRMnx/alaICBMjWppR3pxgxNRcbHdHhVTmDSzMx
	 iK7A4weYhB66ErK00EBaE/gXFauhKmHchKNttfzpnUBP5qA7jJiz1VTTaRv0KXLFOH
	 NpxRAq1us5WEzbdhPO3mLksf2rBVkSUt7w0AFlLMILuRj3WYkvlacPR+AhWKvYF/ae
	 Sq6F7w3dlyROvagCVkOKQy3z6TXAyYdI+7ft82SIAr2GtJsSUN5D3Fukb9oSQp7jeJ
	 ByoH0tGrG3uA0QTL5EaA5R7XFIu4Utd/cpnqUfk7LDoNwxWrkRhLvqIBiTNlgMOBYE
	 8oCG7sfxvasCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B306DC98328
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179056683372.18568.14138478650807845201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96d66dc8d478b237246eb26c1265bcdc04172049288630f41627608395798acd
Date: Mon, 28 Sep 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790566833
