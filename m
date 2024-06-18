Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 650082139D8
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 17:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718732363; cv=none; b=KXq4aYIs1HJ5z8yw4ID5Fm4AJdryRZD1oyDKOR0rnIDBR84VOiVgR0plvpxRVPKDqF/RV/h1jHjCwjAM5R2DyJHxskCI7y7odrQ/b3uOnIUysmcHWbURXP6AJ5PWQ2FiELV5Knzeh3PUTOA96tPkojWpWws8ux6LEMQYaRubHd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718732363; c=relaxed/simple;
	bh=9lsyiAy7aRqVq4GHyLrZ1pDUzZGuWBAL4TrXQIVqTpo=;
	h=To:Subject:From:Message-Id:Date; b=ONSdyMEc61MKr4lsgggVyYrngDtRoQIQ2E5bEQEmxKjy8s0vUGA9bAnMclGR8YF5N860xf+NThpsYKSR+FykXtvmJp4nb1en6BAyseVQiqNobNiHjHypHHuGbTpP7hcb0LNIWDOLMF85SVd8Rc9HVWVciQmKkJcoePWRX5+pnjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lnr9DN9W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lnr9DN9W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 03247C3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 17:39:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718732363;
	bh=9lsyiAy7aRqVq4GHyLrZ1pDUzZGuWBAL4TrXQIVqTpo=;
	h=To:Subject:From:Date:From;
	b=lnr9DN9WxAWtmbzTM8IR/a3wzdJnig0WENMZSl0ZrwYepbahIWR96HtQmkDI4KhUm
	 RjN28fy+Z0mn7Laooy5XPcvJ4U9DP4EVTitt72Ub8geWYXVTH1owKrSw2n6MmB8nbe
	 O1r0HwKUTezOKt06Ly9+mObIkp8uQSD/Tzbc2JcjnWHGfdbI+CAVYVnUh8IY4T/Ddw
	 nw8tkVXcD1NC+G8OtMcxG/QCme090agzqxBXvbSaJyTCdfWdEUyHyaUH3OpdCEKGzJ
	 fWiLUp7aACqPM/BqTcJgV05sFafDxC4UsW1dTOFzZjLK+ZclUfRM5HsBaobBm6On/w
	 wen0jBpr8weEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E3CF4C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 17:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171873236282.12342.12593795280891584639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b246c086b69f355411acf165995dddb3f88321f675e75870a6a5c47edaf0a53
Date: Tue, 18 Jun 2024 17:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718732362
