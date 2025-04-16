Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44B8B23498F
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744795194; cv=none; b=TeIOS08euaLJXTE0lZLF4De1hrWEDvoxEHd2cPJ1IuPStGqFIX4KFQZ/4u9Nza3r0FLukH8C5INghKCCD7I2epbVelMu6NPkwq33gdebto65Tm3FO7MzE4h+KKhyf4yyYbuGH/sfehlprZg4LaxTPa2sIxGKfBzXCYf8fe2q5mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744795194; c=relaxed/simple;
	bh=+WpFJNK+tVrDlhEZEL3wfuE5C9OKG6WtHl0VRNkj0pQ=;
	h=To:Subject:From:Message-Id:Date; b=obogAnz1Iqr0GT1uWOgcJZ5smISy3vAZV/oTTzULRAlT0EWvASDoB6Phm6MOKfd4YO3lfAHaeHN6PPasMSIplws0zgpRxY3KfKipKKUDR5mdGMc3Z2hTNbh+RATV22sduHtM93S4ksjX1UwVzyVkCwkCRq5r8T5pQlSl9c05n3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qRBeQzlx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qRBeQzlx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B431AC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744795193;
	bh=+WpFJNK+tVrDlhEZEL3wfuE5C9OKG6WtHl0VRNkj0pQ=;
	h=To:Subject:From:Date:From;
	b=qRBeQzlxFrv9YLn9qAnfLg2FcCT7BGVBU429Uy1WMO9ScmBg2pWEXxGakxGMeedkZ
	 tyKEkAU1UExXJ3qGATOc05+PQoU7+GH/kMHmn3XlQSNoy544L/ZnPStLwsEiifNULD
	 PQRTldK2CJrA3FnlIMRDBUP7g6TdrJUln34fgXFmhgbiKP9mcY8qyQakGvdl1M2SnZ
	 XFkVWkf8cVkmazPtJl4cy6TIx1ictno8p91pRuu0x2mCrlRPe50CCZOxT3xJV4aQRl
	 BQViIvCBOUbhj0YqayQgSpl2k3pGqR/O/fZvBYM+3rQ6YU23liXxXnuOVaxyuvt0Zl
	 eQm/BhqXLtMRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FB43C369B1
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174479519364.24468.15416416758768402197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5815b6e1ec183a0615a8da83b5dd6e480c339e7846343c2d99c241e7b66e64bb
Date: Wed, 16 Apr 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744795193
