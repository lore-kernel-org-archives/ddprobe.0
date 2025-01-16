Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA86225D6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736998554; cv=none; b=LV7/eRW09K/zvdes/fx/PWkiSoW01Jxk6AJJnK2xCObhK535Gtw2rtIJ13XXXGzuOHReF2h+ciQrIIzy+/Y4ZfcNxp2GtBd68qWzF+ANeNyQbjASKuZTzQC7xRoN1iLx6qkLjXakWrchVhjBwvseNB7HXqDwfbD3X1icJCCg/98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736998554; c=relaxed/simple;
	bh=jv3NZMC4Qc6ctYOf+TNdfjtJDVszYjzEOvfWNh6lJwc=;
	h=To:Subject:From:Message-Id:Date; b=LaBqGSA/2WKwPVxVioO6QNg5uMbYmd6OHdTkBBUIP7OqCgj+0ghjVvmE063ghC/2XtUa3cf+gkaQJdNPJ7LcAlJmVNvILpq42vjrC7NBynOF23584cl/HlZT96eEyeR4L9+mY4svP3WPKSIi5hdNWJJSLG4WpU/yQQW71ma45+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FKb3SiOg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FKb3SiOg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90CBC4CED1
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736998553;
	bh=jv3NZMC4Qc6ctYOf+TNdfjtJDVszYjzEOvfWNh6lJwc=;
	h=To:Subject:From:Date:From;
	b=FKb3SiOgnsfPskZLNJ7BtAdatoCXbqcu/7kYSfWDPk+T1IExbQASrRpmuRP1Z3eKO
	 n00Lxp2hvzj3eZx9tq3gKIfeccXWxBtnRaDS4APA+szCPOQFdSkJOCjcOIxWkxt9TI
	 YJqKI5ADDlyxcRlV51I+3bYxsAwyxZ4q31s4j+q9npxvBCewVNCtNuPqIV7wFN4iw5
	 TTMFcEcFXclRF1IcLCaweaRqXSySRxtGwaaB4S93qyCzSKKKIUescYqXv00Cgb9M4T
	 M9cOC55hzEW7e0PhKXtDqkF83auYX8EtU7PlxpwPNK9SCLNU9irI2UfM0/tWTh/64s
	 srOtRpKVtIBHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F38E77188
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173699855360.7902.1020605584823728068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c23528e3e13822b55f42487758883dfaa8b44a61798cba34461910957efc4f15
Date: Thu, 16 Jan 2025 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736998553
